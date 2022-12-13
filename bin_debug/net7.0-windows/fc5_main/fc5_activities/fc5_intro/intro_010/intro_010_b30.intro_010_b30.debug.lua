LUACVL -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b30.domino
-- User graph: INTRO_010_B30
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MoonModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayerInCaptureStateModifier.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayActBreakUI.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B30.Intro_010_B30_Crowds.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2015331788.bnk]], "CSoundResource");
        cboxRes:LoadResource([[872277581.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2497452909.bnk]], "CSoundResource");
        cboxRes:LoadResource([[236301886.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3029459932.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2726560794.bnk]], "CSoundResource");
        cboxRes:LoadResource([[217474810.bnk]], "CSoundResource");
        cboxRes:LoadResource([[547767770.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2248944541.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2892310692.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B30.INTRO_010_B30.debug.lua")] = {
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
                name = "WaitForMusicStatePriorityOver",
                type = "int",
            },
            [10] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [11] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 12,
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
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/DynamicLightModifier.lua")] = {
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
            [0] = {
                name = "dynamicLightId",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/FloatArithmetics_v2.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/GetDistance.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Distance2D",
            },
            [1] = {
                name = "Distance3D",
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
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Distance",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/MoonModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ResetMoonDirection",
            },
            [1] = {
                name = "ResetMoonHDRMultiplier",
            },
            [2] = {
                name = "ResetMoonSize",
            },
            [3] = {
                name = "SetMoonDirection",
            },
            [4] = {
                name = "SetMoonHDRMultiplier",
            },
            [5] = {
                name = "SetMoonSize",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "OnResetMoonDirection",
                delayed = false,
            },
            [1] = {
                name = "OnResetMoonHDRMultiplier",
                delayed = false,
            },
            [2] = {
                name = "OnResetMoonSize",
                delayed = false,
            },
            [3] = {
                name = "OnSetMoonDirection",
                delayed = false,
            },
            [4] = {
                name = "OnSetMoonHDRMultiplier",
                delayed = false,
            },
            [5] = {
                name = "OnSetMoonSize",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "Azimuth",
                type = "float",
            },
            [1] = {
                name = "Elevation",
                type = "float",
            },
            [2] = {
                name = "HDRMultiplier",
                type = "float",
            },
            [3] = {
                name = "ResetAfterBeat",
                type = "bool",
            },
            [4] = {
                name = "Size",
                type = "float",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")] = {
        stateless = true,
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
                name = "ContextFlags",
                type = "list",
            },
            [1] = {
                name = "ID",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/OverrideEnvironment_v3.lua")] = {
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
                name = "adaptiveBloom",
                type = "string",
            },
            [1] = {
                name = "atmosphericScattering",
                type = "string",
            },
            [2] = {
                name = "characterVisibility",
                type = "string",
            },
            [3] = {
                name = "cloud",
                type = "string",
            },
            [4] = {
                name = "depthOfField",
                type = "string",
            },
            [5] = {
                name = "exposure",
                type = "string",
            },
            [6] = {
                name = "fog",
                type = "string",
            },
            [7] = {
                name = "lighting",
                type = "string",
            },
            [8] = {
                name = "motionBlur",
                type = "string",
            },
            [9] = {
                name = "ratio",
                type = "float",
            },
            [10] = {
                name = "shadow",
                type = "string",
            },
            [11] = {
                name = "sky",
                type = "string",
            },
            [12] = {
                name = "stormFactor",
                type = "float",
            },
            [13] = {
                name = "transitionTime",
                type = "float",
            },
            [14] = {
                name = "wind",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "Update",
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
                name = "Updated",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "FollowPath",
                type = "entity",
            },
            [1] = {
                name = "FollowPathBackwardSpeedFactor",
                type = "float",
            },
            [2] = {
                name = "FollowPathForwardLookDistance",
                type = "float",
            },
            [3] = {
                name = "FollowPathForwardSpeedFactor",
                type = "float",
            },
            [4] = {
                name = "FollowPathMaxSpeed",
                type = "float",
            },
            [5] = {
                name = "FollowPathMinSpeed",
                type = "float",
            },
            [6] = {
                name = "TargetPawn",
                type = "entity",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/System/SetFloat_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
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
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "Target",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/StimsEmitter_v2.lua")] = {
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
                name = "StimsEmitter",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/UI/DisplayActBreakUI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Show",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Hidden",
                delayed = true,
            },
            [1] = {
                name = "Showed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Act",
                type = "int",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AreaMessage",
            },
            [1] = {
                name = "Cinematic",
            },
            [2] = {
                name = "Compass",
            },
            [3] = {
                name = "DetectionMeter",
            },
            [4] = {
                name = "EnergyGauge",
            },
            [5] = {
                name = "Health",
            },
            [6] = {
                name = "HelmetMask",
            },
            [7] = {
                name = "Hiring",
            },
            [8] = {
                name = "HudActivityStatus",
            },
            [9] = {
                name = "HudAutodriveStatus",
            },
            [10] = {
                name = "HudChallenge",
            },
            [11] = {
                name = "HudDiscovery",
            },
            [12] = {
                name = "HudGunsForHire",
            },
            [13] = {
                name = "HudHint",
            },
            [14] = {
                name = "HudLocationDiscovery",
            },
            [15] = {
                name = "HudNewCharacterDiscovery",
            },
            [16] = {
                name = "HudNotifGFH",
            },
            [17] = {
                name = "HudNotificationsQueue",
            },
            [18] = {
                name = "HudNotificationsQueueCenterMessage",
            },
            [19] = {
                name = "HudNotificationsQueueDiscovery",
            },
            [20] = {
                name = "HudNotificationsQueueGMS",
            },
            [21] = {
                name = "HudNotificationsQueuePlayerPoints",
            },
            [22] = {
                name = "HudNotificationsQueueWarning",
            },
            [23] = {
                name = "HudObjective",
            },
            [24] = {
                name = "HudObjectiveRewards",
            },
            [25] = {
                name = "HudOpenWorld",
            },
            [26] = {
                name = "HudOutpostSuccess",
            },
            [27] = {
                name = "HudPerkPoints",
            },
            [28] = {
                name = "HudSurvivalInstinct",
            },
            [29] = {
                name = "Interaction",
            },
            [30] = {
                name = "Looting",
            },
            [31] = {
                name = "MissionGiver",
            },
            [32] = {
                name = "ObjectiveProgress",
            },
            [33] = {
                name = "ObjectiveTracked",
            },
            [34] = {
                name = "PlayerBuffs",
            },
            [35] = {
                name = "RepairBar",
            },
            [36] = {
                name = "Reputation",
            },
            [37] = {
                name = "Reticle",
            },
            [38] = {
                name = "Tag",
            },
            [39] = {
                name = "TopCenterTimer",
            },
            [40] = {
                name = "Tutorial",
            },
        },
        controlInCount = 41,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "disableUI",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B30.Intro_010_B30_Crowds.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "MainStarted",
            },
            [1] = {
                name = "Stop",
            },
            [2] = {
                name = "vol02",
            },
            [3] = {
                name = "vol04",
            },
            [4] = {
                name = "vol05",
            },
            [5] = {
                name = "vol05far",
            },
            [6] = {
                name = "vol05far_init",
            },
            [7] = {
                name = "vol06",
            },
            [8] = {
                name = "vol06_init",
            },
            [9] = {
                name = "vol07",
            },
            [10] = {
                name = "vol07_init",
            },
            [11] = {
                name = "vol08",
            },
            [12] = {
                name = "vol08_init",
            },
            [13] = {
                name = "vol09",
            },
            [14] = {
                name = "vol09_init",
            },
            [15] = {
                name = "vol10",
            },
            [16] = {
                name = "vol10_init",
            },
        },
        controlInCount = 17,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "INTRO_010_B30";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30";
    self.Players = nil;
    self.player = nil;
    self.father = nil;
    self.distance = 0;
    self.Fail = 0;
    self.metaID = 0;
    self.obj_delay_time = 5.5;
    self.Speed_Lower_Bound = 2;
    self.Speed_Top_Bound = 9;
    self.Speed_Bound_Diff = 0;
    self.Fail_Distance = 11;
    self.Min_Speed = 0.1;
    self.Max_Speed = 0.7;
    self.Speed_Diff = 0;
    self.lookatdistance = 2.2;
    self.box_Music_Quest_v2_39 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|18963732");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_170 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|20687616");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_170_Loaded,
    });
    self.box_VisibilityModifier_155 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|29308524");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_42 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|53439399");
    l0:SetConnections({
    });
    self.box_MultipleOR_96 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|87705630");
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
        [0] = self.f_box_MultipleOR_96_Out,
    });
    self.box_SoundModifier_v2_19 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|95618962");
    l0:SetConnections({
    });
    self.box_Delay_v5_116 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|113117348");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_116_TimeElapsed,
    });
    self.box_MultipleOR_150 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|151779243");
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
        [0] = self.f_box_MultipleOR_150_Out,
    });
    self.box_IgnoreSignal_v2_113 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|164162909");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_113_Disabled,
    });
    self.box_IgnoreSignal_v2_112 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|204487048");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_112_Enabled,
    });
    self.box_NarrativeFade_78 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|208738304");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_15 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|222285330");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 2,
        },
        controlOut = {
            [3] = 21,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_15_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_15_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "remove_postfx",
                    value = self.f_box_PlaySequence_v8_15_SPOut__remove_postfx_,
                },
                [1] = {
                    string = "ReleasePlayer",
                    value = self.f_box_PlaySequence_v8_15_SPOut__ReleasePlayer_,
                },
                [2] = {
                    string = "BeforeLoop01",
                    value = self.f_box_PlaySequence_v8_15_SPOut__BeforeLoop01_,
                },
                [3] = {
                    string = "Loop01Start",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Loop01Start_,
                },
                [4] = {
                    string = "Loop01End",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Loop01End_,
                },
                [5] = {
                    string = "startcin",
                    value = self.f_box_PlaySequence_v8_15_SPOut__startcin_,
                },
                [6] = {
                    string = "startlogic",
                    value = self.f_box_PlaySequence_v8_15_SPOut__startlogic_,
                },
                [7] = {
                    string = "Volume05far_Init",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Volume05far_Init_,
                },
                [8] = {
                    string = "Volume06_Init",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Volume06_Init_,
                },
                [9] = {
                    string = "Volume05far_Start",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Volume05far_Start_,
                },
                [10] = {
                    string = "Volume06_Start",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Volume06_Start_,
                },
                [11] = {
                    string = "Volume08_Init",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Volume08_Init_,
                },
                [12] = {
                    string = "Volume08_Start",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Volume08_Start_,
                },
                [13] = {
                    string = "Volume07_init",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Volume07_init_,
                },
                [14] = {
                    string = "Volume07_Start",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Volume07_Start_,
                },
                [15] = {
                    string = "FatherSinging - Play_VO_PLYGO_031_016JOES_DRY_857792",
                    value = self.f_box_PlaySequence_v8_15_SPOut__FatherSinging___Play_VO_PLYGO_031_016JOES_DRY_857792_,
                },
                [16] = {
                    string = "Volume09_Init",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Volume09_Init_,
                },
                [17] = {
                    string = "Volume09_Start",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Volume09_Start_,
                },
                [18] = {
                    string = "Volume10_Init",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Volume10_Init_,
                },
                [19] = {
                    string = "Volume10_Start",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Volume10_Start_,
                },
                [20] = {
                    string = "CutToBlack_TitleCard",
                    value = self.f_box_PlaySequence_v8_15_SPOut__CutToBlack_TitleCard_,
                },
            },
            count = 21,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_15_Started,
    });
    self.box_TeleportPawns_86 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|240398374");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_86_Out,
    });
    self.box_Gate_v3_73 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|243369238");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_73_Out,
    });
    self.box_PlaySequence_v8_93 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|248478936");
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
        [0] = self.f_box_PlaySequence_v8_93_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_93_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "fadeout",
                    value = self.f_box_PlaySequence_v8_93_SPOut__fadeout_,
                },
                [1] = {
                    string = "stop",
                    value = self.f_box_PlaySequence_v8_93_SPOut__stop_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_93_Started,
    });
    self.box_SoundModifier_v2_165 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|289337800");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_60 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|300289901");
    l0:SetConnections({
    });
    self.box_Intro_010_B30_Crowds_114 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B30.Intro_010_B30_Crowds.debug.lua");
    l0 = self.box_Intro_010_B30_Crowds_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Intro_010_B30_Crowds_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|332551119");
    l0:SetConnections({
    });
    self.box_Delay_v5_172 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|339426122");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_172_TimeElapsed,
    });
    self.box_IgnoreSignal_v2_181 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|350772489");
    l0:SetConnections({
    });
    self.box_PostFx_v3_25 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|351113027");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_25_Disabled,
    });
    self.box_Music_Quest_v2_168 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|401431589");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_105 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|471766106");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_105_Loaded,
    });
    self.box_MultipleOR_177 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|477485431");
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
    self.box_Gate_v3_119 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|490321542");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_119_Out,
    });
    self.box_StartMetaSequence_74 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|507616209");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_74_Out,
    });
    self.box_Music_Quest_v2_182 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|509742307");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_37 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|537042778");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|551507350");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_OnceOnly_v3_49 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|558199173");
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
                [0] = self.f_box_OnceOnly_v3_49_Out_0,
            },
            count = 1,
        },
        -- ResetOut,
        [1] = self.f_box_OnceOnly_v3_49_ResetOut,
    });
    self.box_SoundModifier_v2_164 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|592284411");
    l0:SetConnections({
    });
    self.box_StartMetaSequence_13 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|593739294");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_13_Out,
    });
    self.box_PostFx_v3_102 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|599830446");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_102_Enabled,
    });
    self.box_EntityStatusListener_159 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|619333698");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_159_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_159_Loaded,
    });
    self.box_Gate_v3_83 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|653566265");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_83_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_83_Out,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|673975806");
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
    self.box_TeleportPawns_50 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|687181871");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_50_Out,
    });
    self.box_EntityStatusListener_145 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|691625383");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_145_Loaded,
    });
    self.box_NarrativeFade_29 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|702206359");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_131 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|733824193");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_131_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_131_Loaded,
    });
    self.box_EntityStatusListener_140 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|775271289");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_140_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_140_Loaded,
    });
    self.box_EntityStatusListener_185 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|777849128");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_185_Loaded,
    });
    self.box_Delay_v5_94 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|801979622");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_94_TimeElapsed,
    });
    self.box_EntityStatusListener_162 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|819099579");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_162_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_162_Loaded,
    });
    self.box_EntityStatusListener_11 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|829993103");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_11_Loaded,
    });
    self.box_MultipleAND_v2_63 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|834783438");
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
        [0] = self.f_box_MultipleAND_v2_63_Out,
    });
    self.box_NarrativeSceneSetup_20 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|836434369");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_20_Out,
    });
    self.box_EntityStatusListener_138 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|861037950");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_138_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_138_Loaded,
    });
    self.box_PositionModifier_v2_127 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|875071489");
    l0:SetConnections({
    });
    self.box_NarrativeSceneCleanUp_16 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|899462668");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_16_Out,
    });
    self.box_RemoveEntity_v2_111 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|951106327");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_156 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|973262566");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_161 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|993971201");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_161_Loaded,
    });
    self.box_EntityStatusListener_126 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1011391643");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_126_Loaded,
    });
    self.box_TeleportPawns_122 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1039498681");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_122_Out,
    });
    self.box_Music_Quest_v2_70 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1071868538");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_167 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1088254992");
    l0:SetConnections({
    });
    self.box_DisplayCustomUIMsg_v5_21 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1088823734");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_21_OnDisplay,
    });
    self.box_Delay_v5_123 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1118022671");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_123_TimeElapsed,
    });
    self.box_Delay_v5_124 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1132482935");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_124_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_14 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1190002362");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_14_Enter,
    });
    self.box_PostFx_v3_101 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1224889076");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_101_Enabled,
    });
    self.box_MultipleAND_v2_104 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1247228349");
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
        [0] = self.f_box_MultipleAND_v2_104_Out,
    });
    self.box_SoundModifier_v2_178 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1267597630");
    l0:SetConnections({
    });
    self.box_DisplayActBreakUI_88 = cbox:CreateBox("Domino/System/UI/DisplayActBreakUI.lua");
    l0 = self.box_DisplayActBreakUI_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayActBreakUI_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1278006899");
    l0:SetConnections({
        -- Hidden,
        [0] = self.f_box_DisplayActBreakUI_88_Hidden,
        -- Showed,
        [1] = self.f_box_DisplayActBreakUI_88_Showed,
    });
    self.box_OverrideMenuAccessibility_81 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1286869084");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_81_Out,
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1286924272");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_PositionModifier_v2_143 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1316440674");
    l0:SetConnections({
    });
    self.box_NarrativeFade_28 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1325430915");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_28_FadedIn,
    });
    self.box_EntityStatusListener_71 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1377255473");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_71_Loaded,
    });
    self.box_Delay_v5_183 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1398386394");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_183_TimeElapsed,
    });
    self.box_VisibilityModifier_157 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1429940199");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_147 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1443770682");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_58 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1461458220");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_58_Out,
    });
    self.box_Delay_v5_48 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1489110146");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_48_TimeElapsed,
    });
    self.box_Delay_v5_107 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1492974360");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_107_TimeElapsed,
    });
    self.box_PositionModifier_v2_142 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1508007207");
    l0:SetConnections({
    });
    self.box_MoonModifier_61 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1520027945");
    l0:SetConnections({
        -- OnSetMoonSize,
        [5] = self.f_box_MoonModifier_61_OnSetMoonSize,
    });
    self.box_EntityStatusListener_144 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1532774722");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_144_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_144_Loaded,
    });
    self.box_Gate_v3_10 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1551116610");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_10_Out,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1559305808");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_MultipleOR_76 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1566512350");
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
        [0] = self.f_box_MultipleOR_76_Out,
    });
    self.box_RemoveEntity_v2_187 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1603393203");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_160 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1618225810");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_160_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_160_Loaded,
    });
    self.box_SoundModifier_v2_173 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1691964910");
    l0:SetConnections({
    });
    self.box_Gate_v3_149 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1693084722");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_149_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_149_Out,
    });
    self.box_PlaySequence_v8_77 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1722107580");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 3,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_77_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_77_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "STOP_POSTFX",
                    value = self.f_box_PlaySequence_v8_77_SPOut__STOP_POSTFX_,
                },
                [1] = {
                    string = "START_POSTFX",
                    value = self.f_box_PlaySequence_v8_77_SPOut__START_POSTFX_,
                },
                [2] = {
                    string = "StartFCLogo",
                },
            },
            count = 3,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_77_Started,
    });
    self.box_MultipleAND_v2_72 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1734721810");
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
    self.box_EntityStatusListener_128 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1752199519");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_128_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_128_Loaded,
    });
    self.box_NarrativeSceneSetup_66 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1761175425");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_66_Out,
    });
    self.box_EntityStatusListener_141 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1764762838");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_141_Loaded,
    });
    self.box_ProximityTrigger_v2_135 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1771601311");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_135_Enter,
    });
    self.box_Switch_98 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1778125953");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
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
                [3] = self.f_box_Switch_98_Output_3,
            },
            count = 4,
        },
    });
    self.box_Gate_v3_171 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1864948064");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_171_Out,
    });
    self.box_PositionModifier_v2_130 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1879018851");
    l0:SetConnections({
    });
    self.box_RequestTutorial_v3_90 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1922030140");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_68 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1927533257");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_68_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_68_Loaded,
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1929541037");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_MultipleAND_v2_56 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1941621867");
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
        [0] = self.f_box_MultipleAND_v2_56_Out,
    });
    self.box_IgnoreSignal_v2_180 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1945262271");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_180_Enabled,
    });
    self.box_EntityStatusListener_129 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1990336130");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_129_Loaded,
    });
    self.box_RemoveEntity_v2_80 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2024151834");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_139 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2041429871");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2086712045");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_VisibilityModifier_158 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2090306496");
    l0:SetConnections({
    });
    self.box_DisplayActBreakUI_54 = cbox:CreateBox("Domino/System/UI/DisplayActBreakUI.lua");
    l0 = self.box_DisplayActBreakUI_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayActBreakUI_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2111275254");
    l0:SetConnections({
    });
    self.box_NarrativeFade_65 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2115561121");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_65_FadedOut,
    });
    self.box_MoonModifier_103 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2116689380");
    l0:SetConnections({
        -- OnResetMoonDirection,
        [0] = self.f_box_MoonModifier_103_OnResetMoonDirection,
        -- OnResetMoonHDRMultiplier,
        [1] = self.f_box_MoonModifier_103_OnResetMoonHDRMultiplier,
        -- OnResetMoonSize,
        [2] = self.f_box_MoonModifier_103_OnResetMoonSize,
    });
    self.box_RemoveEntity_v2_110 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2129146438");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_169 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2135928450");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1370480799", "1370480799", "INTRO_010_B30", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_117_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|160715990", "160715990", "INTRO_010_B30", "box_Simple_Node_117.Out", "box_Gate_v3_10.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_MultipleAND_v2_104();
    l0 = self.box_MultipleAND_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1149401099", "1149401099", "INTRO_010_B30", "box_Simple_Node_117.Out", "box_MultipleAND_v2_104.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1065604614", "1065604614", "INTRO_010_B30", "box_Simple_Node_117.Out", "box_Delay_v5_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_136_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_135();
    l0 = self.box_ProximityTrigger_v2_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1957586325", "1957586325", "INTRO_010_B30", "box_Simple_Node_136.Out", "box_ProximityTrigger_v2_135.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_152_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_65();
    l0 = self.box_NarrativeFade_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|673052647", "673052647", "INTRO_010_B30", "box_Simple_Node_152.Out", "box_NarrativeFade_65.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_184_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1168719496", "1168719496", "INTRO_010_B30", "box_Simple_Node_184.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1060446579", "1060446579", "INTRO_010_B30", "box_Simple_Node_92.Out", "box_Gate_v3_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_121_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|469978944", "469978944", "INTRO_010_B30", "box_Simple_Node_121.Out", "box_OutputOrder_v2_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_89_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2006699649", "2006699649", "INTRO_010_B30", "box_Simple_Node_89.Out", "box_MultipleOR_150.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_Gate_v3_73();
    l0 = self.box_Gate_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1967177185", "1967177185", "INTRO_010_B30", "box_Simple_Node_89.Out", "box_Gate_v3_73.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_83();
    l0 = self.box_Gate_v3_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1400270783", "1400270783", "INTRO_010_B30", "box_Simple_Node_89.Out", "box_Gate_v3_83.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_154_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_15();
    l0 = self.box_PlaySequence_v8_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|274117080", "274117080", "INTRO_010_B30", "box_Simple_Node_154.Out", "box_PlaySequence_v8_15.Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Skip
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_174_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|814212844", "814212844", "INTRO_010_B30", "box_Simple_Node_174.Out", "box_Intro_010_B30_Crowds_114.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_153_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_171();
    l0 = self.box_Gate_v3_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1965902256", "1965902256", "INTRO_010_B30", "box_Simple_Node_153.Out", "box_Gate_v3_171.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_149();
    l0 = self.box_Gate_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|976766732", "976766732", "INTRO_010_B30", "box_Simple_Node_153.Out", "box_Gate_v3_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_170_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_169();
    l0 = self.box_EntityStatusListener_170;
    l1 = self.box_RemoveEntity_v2_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|480778044", "480778044", "INTRO_010_B30", "box_EntityStatusListener_170.Loaded", "box_RemoveEntity_v2_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_110();
    l0 = self.box_RemoveEntity_v2_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1092440036", "1092440036", "INTRO_010_B30", "box_OutputOrder_v2_109.Out", "box_RemoveEntity_v2_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_111();
    l0 = self.box_RemoveEntity_v2_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1071503463", "1071503463", "INTRO_010_B30", "box_OutputOrder_v2_109.Out", "box_RemoveEntity_v2_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_39();
    l0 = self.box_Music_Quest_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1211736727", "1211736727", "INTRO_010_B30", "box_OutputOrder_v2_109.Out", "box_Music_Quest_v2_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Compare_Floats_31_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_51();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1686017679", "1686017679", "INTRO_010_B30", "box_Compare_Floats_31.A_gt_B", "box_Compare_Floats_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_31_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerInCaptureStateModifier_41();
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|667188558", "667188558", "INTRO_010_B30", "box_Compare_Floats_31.A_le_B", "box_PlayerInCaptureStateModifier_41.Update", clone:GetLuaBox(), l0:GetLuaBox());
    -- Update
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_151();
    l0 = self.box_MultipleOR_96;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1888366478", "1888366478", "INTRO_010_B30", "box_MultipleOR_96.Out", "box_OutputOrder_v2_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_32_Out()
    self:OnExit_box_SetFloat_v2_32_Out();
end;

function export:f_box_Delay_v5_116_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_63();
    l0 = self.box_Delay_v5_116;
    l1 = self.box_MultipleAND_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|990638527", "990638527", "INTRO_010_B30", "box_Delay_v5_116.TimeElapsed", "box_MultipleAND_v2_63.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_14();
    l0 = self.box_ProximityTrigger_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1862937575", "1862937575", "INTRO_010_B30", "box_OutputOrder_v2_9.Out", "box_ProximityTrigger_v2_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_150_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_48();
    l0 = self.box_MultipleOR_150;
    l1 = self.box_Delay_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1991392782", "1991392782", "INTRO_010_B30", "box_MultipleOR_150.Out", "box_Delay_v5_48.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_IgnoreSignal_v2_113_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_181();
    l0 = self.box_IgnoreSignal_v2_113;
    l1 = self.box_IgnoreSignal_v2_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1006787236", "1006787236", "INTRO_010_B30", "box_IgnoreSignal_v2_113.Disabled", "box_IgnoreSignal_v2_181.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_132_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_117();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1035849725", "1035849725", "INTRO_010_B30", "box_OutputOrder_v2_132.Out", "box_Simple_Node_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|240705021", "240705021", "INTRO_010_B30", "box_OutputOrder_v2_132.Out", "box_Intro_010_B30_Crowds_114.MainStarted", clone:GetLuaBox(), l0:GetLuaBox());
    -- MainStarted
    l0:Exec(0, {
    });
end;

function export:f_box_IgnoreSignal_v2_112_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_125();
    l0 = self.box_IgnoreSignal_v2_112;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|914302825", "914302825", "INTRO_010_B30", "box_IgnoreSignal_v2_112.Enabled", "box_MissionBlockLayer_125.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_15_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2005972926", "2005972926", "INTRO_010_B30", "box_PlaySequence_v8_15.Finished", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_15_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1818402598", "1818402598", "INTRO_010_B30", "box_PlaySequence_v8_15.Skipped", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_15_SPOut__BeforeLoop01_()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_104();
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_MultipleAND_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1215898505", "1215898505", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_MultipleAND_v2_104.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_PlaySequence_v8_15_SPOut__CutToBlack_TitleCard_()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_171();
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Gate_v3_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1272820677", "1272820677", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Gate_v3_171.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_15_SPOut__FatherSinging___Play_VO_PLYGO_031_016JOES_DRY_857792_()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_149();
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Gate_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|618368702", "618368702", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Gate_v3_149.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_15_SPOut__Loop01End_()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = self.box_PlaySequence_v8_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1588063729", "1588063729", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Simple_Node_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_15_SPOut__Loop01Start_()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_119();
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Gate_v3_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|30421534", "30421534", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Gate_v3_119.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_15_SPOut__ReleasePlayer_()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerInCaptureStateModifier_118();
    l0 = self.box_PlaySequence_v8_15;
    l1 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1767644557", "1767644557", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_PlayerInCaptureStateModifier_118.Update", l0:GetLuaBox(), l1:GetLuaBox());
    -- Update
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_15_SPOut__remove_postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_28();
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_NarrativeFade_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|778704924", "778704924", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_NarrativeFade_28.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_15_SPOut__startcin_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = self.box_PlaySequence_v8_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|206694713", "206694713", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_OutputOrder_v2_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_15_SPOut__startlogic_()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_121();
    l0 = self.box_PlaySequence_v8_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1840106810", "1840106810", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Simple_Node_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_15_SPOut__Volume05far_Init_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1337698150", "1337698150", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Intro_010_B30_Crowds_114.vol05far_init", l0:GetLuaBox(), l1:GetLuaBox());
    -- vol05far_init
    l1:Exec(6, {
    });
end;

function export:f_box_PlaySequence_v8_15_SPOut__Volume05far_Start_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|590678065", "590678065", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Intro_010_B30_Crowds_114.vol05far", l0:GetLuaBox(), l1:GetLuaBox());
    -- vol05far
    l1:Exec(5, {
    });
end;

function export:f_box_PlaySequence_v8_15_SPOut__Volume06_Init_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|820965400", "820965400", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Intro_010_B30_Crowds_114.vol06_init", l0:GetLuaBox(), l1:GetLuaBox());
    -- vol06_init
    l1:Exec(8, {
    });
end;

function export:f_box_PlaySequence_v8_15_SPOut__Volume06_Start_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1525944226", "1525944226", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Intro_010_B30_Crowds_114.vol06", l0:GetLuaBox(), l1:GetLuaBox());
    -- vol06
    l1:Exec(7, {
    });
end;

function export:f_box_PlaySequence_v8_15_SPOut__Volume07_init_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1392610978", "1392610978", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Intro_010_B30_Crowds_114.vol07_init", l0:GetLuaBox(), l1:GetLuaBox());
    -- vol07_init
    l1:Exec(10, {
    });
end;

function export:f_box_PlaySequence_v8_15_SPOut__Volume07_Start_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|264449992", "264449992", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Intro_010_B30_Crowds_114.vol07", l0:GetLuaBox(), l1:GetLuaBox());
    -- vol07
    l1:Exec(9, {
    });
end;

function export:f_box_PlaySequence_v8_15_SPOut__Volume08_Init_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|18058416", "18058416", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Intro_010_B30_Crowds_114.vol08_init", l0:GetLuaBox(), l1:GetLuaBox());
    -- vol08_init
    l1:Exec(12, {
    });
end;

function export:f_box_PlaySequence_v8_15_SPOut__Volume08_Start_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|266359609", "266359609", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Intro_010_B30_Crowds_114.vol08", l0:GetLuaBox(), l1:GetLuaBox());
    -- vol08
    l1:Exec(11, {
    });
end;

function export:f_box_PlaySequence_v8_15_SPOut__Volume09_Init_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1663939232", "1663939232", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Intro_010_B30_Crowds_114.vol09_init", l0:GetLuaBox(), l1:GetLuaBox());
    -- vol09_init
    l1:Exec(14, {
    });
end;

function export:f_box_PlaySequence_v8_15_SPOut__Volume09_Start_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1135270459", "1135270459", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Intro_010_B30_Crowds_114.vol09", l0:GetLuaBox(), l1:GetLuaBox());
    -- vol09
    l1:Exec(13, {
    });
end;

function export:f_box_PlaySequence_v8_15_SPOut__Volume10_Init_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1585025272", "1585025272", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Intro_010_B30_Crowds_114.vol10_init", l0:GetLuaBox(), l1:GetLuaBox());
    -- vol10_init
    l1:Exec(16, {
    });
end;

function export:f_box_PlaySequence_v8_15_SPOut__Volume10_Start_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1683408194", "1683408194", "INTRO_010_B30", "box_PlaySequence_v8_15.SPOut", "box_Intro_010_B30_Crowds_114.vol10", l0:GetLuaBox(), l1:GetLuaBox());
    -- vol10
    l1:Exec(15, {
    });
end;

function export:f_box_PlaySequence_v8_15_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_PlaySequence_v8_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|182159066", "182159066", "INTRO_010_B30", "box_PlaySequence_v8_15.Started", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_86_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_86;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1585429801", "1585429801", "INTRO_010_B30", "box_TeleportPawns_86.Out", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_Gate_v3_73;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1579174082", "1579174082", "INTRO_010_B30", "box_Gate_v3_73.Out", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_93_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_93;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1883817386", "1883817386", "INTRO_010_B30", "box_PlaySequence_v8_93.Finished", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_93_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_93;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1419461565", "1419461565", "INTRO_010_B30", "box_PlaySequence_v8_93.Skipped", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_93_SPOut__fadeout_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_179();
    l0 = self.box_PlaySequence_v8_93;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1121640203", "1121640203", "INTRO_010_B30", "box_PlaySequence_v8_93.SPOut", "box_OutputOrder_v2_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_93_SPOut__stop_()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_93();
    l0 = self.box_PlaySequence_v8_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1460198473", "1460198473", "INTRO_010_B30", "box_PlaySequence_v8_93.SPOut", "box_PlaySequence_v8_93.Skip", l0:GetLuaBox(), l0:GetLuaBox());
    -- Skip
    l0:Exec(3, params);
end;

function export:f_box_PlaySequence_v8_93_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_182();
    l0 = self.box_PlaySequence_v8_93;
    l1 = self.box_Music_Quest_v2_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1212815354", "1212815354", "INTRO_010_B30", "box_PlaySequence_v8_93.Started", "box_Music_Quest_v2_182.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_172_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_137();
    l0 = self.box_Delay_v5_172;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1569034840", "1569034840", "INTRO_010_B30", "box_Delay_v5_172.TimeElapsed", "box_OutputOrder_v2_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_25_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_116();
    l0 = self.box_PostFx_v3_25;
    l1 = self.box_Delay_v5_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|540883714", "540883714", "INTRO_010_B30", "box_PostFx_v3_25.Disabled", "box_Delay_v5_116.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StopMetaSequence_v4_75_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1727357724", "1727357724", "INTRO_010_B30", "box_StopMetaSequence_v4_75.Stopped", "box_MultipleOR_76.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_FloatArithmetics_v2_38_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_38_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_34();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|256943427", "256943427", "INTRO_010_B30", "box_FloatArithmetics_v2_38.Out", "box_FloatArithmetics_v2_34.Div", clone:GetLuaBox(), l0:GetLuaBox());
    -- Div
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_5_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1679075256", "1679075256", "INTRO_010_B30", "box_GetLocalPlayer_v2_5.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_58();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1000093581", "1000093581", "INTRO_010_B30", "box_SetTimeOfDay_57.Out", "box_CHEAT_SetEnvironmentTimeScale_58.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_105_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_97();
    l0 = self.box_EntityStatusListener_105;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1364964933", "1364964933", "INTRO_010_B30", "box_EntityStatusListener_105.Loaded", "box_StimsEmitter_v2_97.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_177_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_148();
    l0 = self.box_MultipleOR_177;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1556752769", "1556752769", "INTRO_010_B30", "box_MultipleOR_177.Out", "box_OutputOrder_v2_148.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_119_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_15();
    l0 = self.box_Gate_v3_119;
    l1 = self.box_PlaySequence_v8_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|112323003", "112323003", "INTRO_010_B30", "box_Gate_v3_119.Out", "box_PlaySequence_v8_15.SPIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- SPIn
    l1:ExecDynString(4, params, "Loop01End");
end;

function export:f_box_StartMetaSequence_74_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_74_Out();
    params = self:OnEnter_box_PlaySequence_v8_77();
    l0 = self.box_StartMetaSequence_74;
    l1 = self.box_PlaySequence_v8_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|116945801", "116945801", "INTRO_010_B30", "box_StartMetaSequence_74.Out", "box_PlaySequence_v8_77.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_Compare_Floats_51_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1805235431", "1805235431", "INTRO_010_B30", "box_Compare_Floats_51.A_ge_B", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_51_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_38();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2093474246", "2093474246", "INTRO_010_B30", "box_Compare_Floats_51.A_lt_B", "box_FloatArithmetics_v2_38.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_5();
    l0 = self.box_ActivityInitialized_6;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|890591377", "890591377", "INTRO_010_B30", "box_ActivityInitialized_6.Out", "box_GetLocalPlayer_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_49_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_83();
    l0 = self.box_OnceOnly_v3_49;
    l1 = self.box_Gate_v3_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|378870392", "378870392", "INTRO_010_B30", "box_OnceOnly_v3_49.Out", "box_Gate_v3_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_49_ResetOut()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_49;
    l1 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1082717594", "1082717594", "INTRO_010_B30", "box_OnceOnly_v3_49.ResetOut", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StartMetaSequence_13_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_13_Out();
    params = self:OnEnter_box_PlaySequence_v8_15();
    l0 = self.box_StartMetaSequence_13;
    l1 = self.box_PlaySequence_v8_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1304471067", "1304471067", "INTRO_010_B30", "box_StartMetaSequence_13.Out", "box_PlaySequence_v8_15.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PostFx_v3_102_Enabled()
    local l0, l1;
    l0 = self.box_PostFx_v3_102;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|461393434", "461393434", "INTRO_010_B30", "box_PostFx_v3_102.Enabled", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_159_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_160();
    l0 = self.box_EntityStatusListener_159;
    l1 = self.box_EntityStatusListener_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1310491367", "1310491367", "INTRO_010_B30", "box_EntityStatusListener_159.Enabled", "box_EntityStatusListener_160.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_159_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_155();
    l0 = self.box_EntityStatusListener_159;
    l1 = self.box_VisibilityModifier_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|25450514", "25450514", "INTRO_010_B30", "box_EntityStatusListener_159.Loaded", "box_VisibilityModifier_155.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_83_Closed()
    local l0, l1;
    l0 = self.box_Gate_v3_83;
    l1 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|314696130", "314696130", "INTRO_010_B30", "box_Gate_v3_83.Closed", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Gate_v3_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_21();
    l0 = self.box_Gate_v3_83;
    l1 = self.box_DisplayCustomUIMsg_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1387321123", "1387321123", "INTRO_010_B30", "box_Gate_v3_83.Out", "box_DisplayCustomUIMsg_v5_21.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|382526585", "382526585", "INTRO_010_B30", "box_MultipleOR_1.Out", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OverrideEnvironment_v3_36_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_103();
    l0 = self.box_MoonModifier_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|586192246", "586192246", "INTRO_010_B30", "box_OverrideEnvironment_v3_36.Disabled", "box_MoonModifier_103.ResetMoonSize", clone:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonSize
    l0:Exec(2, params);
end;

function export:f_box_TeleportPawns_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_56();
    l0 = self.box_TeleportPawns_50;
    l1 = self.box_MultipleAND_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|979302522", "979302522", "INTRO_010_B30", "box_TeleportPawns_50.Out", "box_MultipleAND_v2_56.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_EntityStatusListener_145_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_142();
    l0 = self.box_EntityStatusListener_145;
    l1 = self.box_PositionModifier_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|572993553", "572993553", "INTRO_010_B30", "box_EntityStatusListener_145.Loaded", "box_PositionModifier_v2_142.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PlayerInCaptureStateModifier_118_Updated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1111629810", "1111629810", "INTRO_010_B30", "box_PlayerInCaptureStateModifier_118.Updated", "box_AddActivityObjective_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_131_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_144();
    l0 = self.box_EntityStatusListener_131;
    l1 = self.box_EntityStatusListener_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1347371631", "1347371631", "INTRO_010_B30", "box_EntityStatusListener_131.Enabled", "box_EntityStatusListener_144.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_131_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_126();
    l0 = self.box_EntityStatusListener_131;
    l1 = self.box_EntityStatusListener_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1941190530", "1941190530", "INTRO_010_B30", "box_EntityStatusListener_131.Loaded", "box_EntityStatusListener_126.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1189270081", "1189270081", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.Compass", clone:GetLuaBox(), l0:GetLuaBox());
    -- Compass
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|695070852", "695070852", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.Tag", clone:GetLuaBox(), l0:GetLuaBox());
    -- Tag
    l0:Exec(38, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1046274630", "1046274630", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.Health", clone:GetLuaBox(), l0:GetLuaBox());
    -- Health
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1210206654", "1210206654", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.Reticle", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reticle
    l0:Exec(37, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1955162018", "1955162018", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.HudLocationDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudLocationDiscovery
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|666927018", "666927018", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.HudNewCharacterDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNewCharacterDiscovery
    l0:Exec(15, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|411703005", "411703005", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.HudDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudDiscovery
    l0:Exec(11, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2118432389", "2118432389", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.HudOpenWorld", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudOpenWorld
    l0:Exec(25, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|261291194", "261291194", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.HudAutodriveStatus", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudAutodriveStatus
    l0:Exec(9, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1830206443", "1830206443", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.EnergyGauge", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnergyGauge
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1223610539", "1223610539", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.HelmetMask", clone:GetLuaBox(), l0:GetLuaBox());
    -- HelmetMask
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1151099841", "1151099841", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.Hiring", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hiring
    l0:Exec(7, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|776388220", "776388220", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.HudGunsForHire", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudGunsForHire
    l0:Exec(12, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|282188991", "282188991", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.HudNotifGFH", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotifGFH
    l0:Exec(16, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|841937322", "841937322", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.Reputation", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reputation
    l0:Exec(36, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1193141100", "1193141100", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.Looting", clone:GetLuaBox(), l0:GetLuaBox());
    -- Looting
    l0:Exec(30, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2120471343", "2120471343", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.HudChallenge", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudChallenge
    l0:Exec(10, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2052519084", "2052519084", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.HudPerkPoints", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudPerkPoints
    l0:Exec(27, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1715160946", "1715160946", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.HudOutpostSuccess", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudOutpostSuccess
    l0:Exec(26, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_26();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1998580578", "1998580578", "INTRO_010_B30", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_26.MissionGiver", clone:GetLuaBox(), l0:GetLuaBox());
    -- MissionGiver
    l0:Exec(31, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_140_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_159();
    l0 = self.box_EntityStatusListener_140;
    l1 = self.box_EntityStatusListener_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1260904411", "1260904411", "INTRO_010_B30", "box_EntityStatusListener_140.Enabled", "box_EntityStatusListener_159.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_140_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_145();
    l0 = self.box_EntityStatusListener_140;
    l1 = self.box_EntityStatusListener_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|841789320", "841789320", "INTRO_010_B30", "box_EntityStatusListener_140.Loaded", "box_EntityStatusListener_145.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_185_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_186();
    l0 = self.box_EntityStatusListener_185;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|661555667", "661555667", "INTRO_010_B30", "box_EntityStatusListener_185.Loaded", "box_DynamicLightModifier_186.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerInCaptureStateModifier_24_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_63();
    l0 = self.box_MultipleAND_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2038731547", "2038731547", "INTRO_010_B30", "box_PlayerInCaptureStateModifier_24.Enabled", "box_MultipleAND_v2_63.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_94_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_56();
    l0 = self.box_Delay_v5_94;
    l1 = self.box_MultipleAND_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1383119290", "1383119290", "INTRO_010_B30", "box_Delay_v5_94.TimeElapsed", "box_MultipleAND_v2_56.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_EntityStatusListener_162_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_161();
    l0 = self.box_EntityStatusListener_162;
    l1 = self.box_EntityStatusListener_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1343493300", "1343493300", "INTRO_010_B30", "box_EntityStatusListener_162.Enabled", "box_EntityStatusListener_161.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_162_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_156();
    l0 = self.box_EntityStatusListener_162;
    l1 = self.box_VisibilityModifier_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1016084016", "1016084016", "INTRO_010_B30", "box_EntityStatusListener_162.Loaded", "box_VisibilityModifier_156.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_11_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_11;
    l1 = self.box_StartMetaSequence_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1600428192", "1600428192", "INTRO_010_B30", "box_EntityStatusListener_11.Loaded", "box_StartMetaSequence_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleAND_v2_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_MultipleAND_v2_63;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|272153684", "272153684", "INTRO_010_B30", "box_MultipleAND_v2_63.Out", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1770395235", "1770395235", "INTRO_010_B30", "box_OutputOrder_v2_67.Out", "box_Simple_Node_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_146();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1217557957", "1217557957", "INTRO_010_B30", "box_OutputOrder_v2_67.Out", "box_EndActivityObjective_v2_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_107();
    l0 = self.box_Delay_v5_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|448091184", "448091184", "INTRO_010_B30", "box_OutputOrder_v2_67.Out", "box_Delay_v5_107.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_67_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_168();
    l0 = self.box_Music_Quest_v2_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1862431658", "1862431658", "INTRO_010_B30", "box_OutputOrder_v2_67.Out", "box_Music_Quest_v2_168.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_67_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_164();
    l0 = self.box_SoundModifier_v2_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|594725023", "594725023", "INTRO_010_B30", "box_OutputOrder_v2_67.Out", "box_SoundModifier_v2_164.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_67_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_174();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|48204579", "48204579", "INTRO_010_B30", "box_OutputOrder_v2_67.Out", "box_Simple_Node_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_173();
    l0 = self.box_SoundModifier_v2_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|577816567", "577816567", "INTRO_010_B30", "box_OutputOrder_v2_67.Out", "box_SoundModifier_v2_173.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_67_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_175();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2052539134", "2052539134", "INTRO_010_B30", "box_OutputOrder_v2_67.Out", "box_OverrideEnvironment_v3_175.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_102();
    l0 = self.box_NarrativeSceneSetup_20;
    l1 = self.box_PostFx_v3_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2093286515", "2093286515", "INTRO_010_B30", "box_NarrativeSceneSetup_20.Out", "box_PostFx_v3_102.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_138_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_105();
    l0 = self.box_EntityStatusListener_138;
    l1 = self.box_EntityStatusListener_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|769314178", "769314178", "INTRO_010_B30", "box_EntityStatusListener_138.Enabled", "box_EntityStatusListener_105.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_138_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_139();
    l0 = self.box_EntityStatusListener_138;
    l1 = self.box_RemoveEntity_v2_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|518060107", "518060107", "INTRO_010_B30", "box_EntityStatusListener_138.Loaded", "box_RemoveEntity_v2_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|536231175", "536231175", "INTRO_010_B30", "box_OutputOrder_v2_69.Out", "box_StartMetaSequence_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_113();
    l0 = self.box_IgnoreSignal_v2_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|360015381", "360015381", "INTRO_010_B30", "box_OutputOrder_v2_69.Out", "box_IgnoreSignal_v2_113.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_69_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1695383599", "1695383599", "INTRO_010_B30", "box_OutputOrder_v2_69.Out", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_69_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_42();
    l0 = self.box_SoundModifier_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|628298989", "628298989", "INTRO_010_B30", "box_OutputOrder_v2_69.Out", "box_SoundModifier_v2_42.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_69_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_154();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1664631788", "1664631788", "INTRO_010_B30", "box_OutputOrder_v2_69.Out", "box_Simple_Node_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_176();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|72494076", "72494076", "INTRO_010_B30", "box_OutputOrder_v2_69.Out", "box_OverrideEnvironment_v3_176.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_NarrativeSceneCleanUp_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|32381411", "32381411", "INTRO_010_B30", "box_NarrativeSceneCleanUp_16.Out", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OverrideEnvironment_v3_91_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_61();
    l0 = self.box_MoonModifier_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|410926420", "410926420", "INTRO_010_B30", "box_OverrideEnvironment_v3_91.Enabled", "box_MoonModifier_61.SetMoonSize", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonSize
    l0:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_179_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_178();
    l0 = self.box_SoundModifier_v2_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|192844049", "192844049", "INTRO_010_B30", "box_OutputOrder_v2_179.Out", "box_SoundModifier_v2_178.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_179_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_29();
    l0 = self.box_NarrativeFade_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|706031458", "706031458", "INTRO_010_B30", "box_OutputOrder_v2_179.Out", "box_NarrativeFade_29.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_161_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_157();
    l0 = self.box_EntityStatusListener_161;
    l1 = self.box_VisibilityModifier_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|238801381", "238801381", "INTRO_010_B30", "box_EntityStatusListener_161.Loaded", "box_VisibilityModifier_157.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_126_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_130();
    l0 = self.box_EntityStatusListener_126;
    l1 = self.box_PositionModifier_v2_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1932671885", "1932671885", "INTRO_010_B30", "box_EntityStatusListener_126.Loaded", "box_PositionModifier_v2_130.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_17_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerInCaptureStateModifier_24();
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1224371783", "1224371783", "INTRO_010_B30", "box_SetEntity_v2_17.Out", "box_PlayerInCaptureStateModifier_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_123();
    l0 = self.box_TeleportPawns_122;
    l1 = self.box_Delay_v5_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2085316443", "2085316443", "INTRO_010_B30", "box_TeleportPawns_122.Out", "box_Delay_v5_123.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1462348502", "1462348502", "INTRO_010_B30", "box_OutputOrder_v2_52.Out", "box_ActivityInitialized_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_81();
    l0 = self.box_OverrideMenuAccessibility_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1998230611", "1998230611", "INTRO_010_B30", "box_OutputOrder_v2_52.Out", "box_OverrideMenuAccessibility_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_52_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_70();
    l0 = self.box_Music_Quest_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|226361839", "226361839", "INTRO_010_B30", "box_OutputOrder_v2_52.Out", "box_Music_Quest_v2_70.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_68();
    l0 = self.box_EntityStatusListener_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|352692202", "352692202", "INTRO_010_B30", "box_OutputOrder_v2_52.Out", "box_EntityStatusListener_68.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_180();
    l0 = self.box_IgnoreSignal_v2_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|568800", "568800", "INTRO_010_B30", "box_OutputOrder_v2_52.Out", "box_IgnoreSignal_v2_180.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_128();
    l0 = self.box_EntityStatusListener_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|898125182", "898125182", "INTRO_010_B30", "box_OutputOrder_v2_52.Out", "box_EntityStatusListener_128.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_20();
    l0 = self.box_NarrativeSceneSetup_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1854789436", "1854789436", "INTRO_010_B30", "box_OutputOrder_v2_64.Out", "box_NarrativeSceneSetup_20.BasicSetup", clone:GetLuaBox(), l0:GetLuaBox());
    -- BasicSetup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_32();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|864643637", "864643637", "INTRO_010_B30", "box_OutputOrder_v2_64.Out", "box_SetFloat_v2_32.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_21_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_19();
    l0 = self.box_DisplayCustomUIMsg_v5_21;
    l1 = self.box_SoundModifier_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|971788944", "971788944", "INTRO_010_B30", "box_DisplayCustomUIMsg_v5_21.OnDisplay", "box_SoundModifier_v2_19.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_123_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_123;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2071302690", "2071302690", "INTRO_010_B30", "box_Delay_v5_123.TimeElapsed", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1043749875", "1043749875", "INTRO_010_B30", "box_OutputOrder_v2_115.Out", "box_Intro_010_B30_Crowds_114.vol02", clone:GetLuaBox(), l0:GetLuaBox());
    -- vol02
    l0:Exec(2, {
    });
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|939404477", "939404477", "INTRO_010_B30", "box_OutputOrder_v2_115.Out", "box_Intro_010_B30_Crowds_114.vol04", clone:GetLuaBox(), l0:GetLuaBox());
    -- vol04
    l0:Exec(3, {
    });
end;

function export:f_box_OutputOrder_v2_115_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Intro_010_B30_Crowds_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1815406260", "1815406260", "INTRO_010_B30", "box_OutputOrder_v2_115.Out", "box_Intro_010_B30_Crowds_114.vol05", clone:GetLuaBox(), l0:GetLuaBox());
    -- vol05
    l0:Exec(4, {
    });
end;

function export:f_box_OutputOrder_v2_115_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_183();
    l0 = self.box_Delay_v5_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|443522185", "443522185", "INTRO_010_B30", "box_OutputOrder_v2_115.Out", "box_Delay_v5_183.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_124_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayActBreakUI_54();
    l0 = self.box_Delay_v5_124;
    l1 = self.box_DisplayActBreakUI_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1022489417", "1022489417", "INTRO_010_B30", "box_Delay_v5_124.TimeElapsed", "box_DisplayActBreakUI_54.Show", l0:GetLuaBox(), l1:GetLuaBox());
    -- Show
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_14_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_132();
    l0 = self.box_ProximityTrigger_v2_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1166342757", "1166342757", "INTRO_010_B30", "box_ProximityTrigger_v2_14.Enter", "box_OutputOrder_v2_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_55_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_120();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1298434489", "1298434489", "INTRO_010_B30", "box_FloatArithmetics_v2_55.Out", "box_FloatArithmetics_v2_120.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1706307891", "1706307891", "INTRO_010_B30", "box_OutputOrder_v2_2.Out", "box_Print_v2_4.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|938568621", "938568621", "INTRO_010_B30", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_57();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1425292682", "1425292682", "INTRO_010_B30", "box_OutputOrder_v2_2.Out", "box_SetTimeOfDay_57.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_37();
    l0 = self.box_SoundModifier_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1021505250", "1021505250", "INTRO_010_B30", "box_OutputOrder_v2_2.Out", "box_SoundModifier_v2_37.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|287755660", "287755660", "INTRO_010_B30", "box_OutputOrder_v2_2.Out", "box_Simple_Node_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_170();
    l0 = self.box_EntityStatusListener_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1112330926", "1112330926", "INTRO_010_B30", "box_OutputOrder_v2_2.Out", "box_EntityStatusListener_170.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_71();
    l0 = self.box_EntityStatusListener_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|30022024", "30022024", "INTRO_010_B30", "box_OutputOrder_v2_62.Out", "box_EntityStatusListener_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_183();
    l0 = self.box_Delay_v5_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|130852850", "130852850", "INTRO_010_B30", "box_OutputOrder_v2_62.Out", "box_Delay_v5_183.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PostFx_v3_101_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_124();
    l0 = self.box_PostFx_v3_101;
    l1 = self.box_Delay_v5_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1680452557", "1680452557", "INTRO_010_B30", "box_PostFx_v3_101.Enabled", "box_Delay_v5_124.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_119();
    l0 = self.box_MultipleAND_v2_104;
    l1 = self.box_Gate_v3_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|764818176", "764818176", "INTRO_010_B30", "box_MultipleAND_v2_104.Out", "box_Gate_v3_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_137_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayActBreakUI_88();
    l0 = self.box_DisplayActBreakUI_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1061900873", "1061900873", "INTRO_010_B30", "box_OutputOrder_v2_137.Out", "box_DisplayActBreakUI_88.Show", clone:GetLuaBox(), l0:GetLuaBox());
    -- Show
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_151_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v4_95();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2098214832", "2098214832", "INTRO_010_B30", "box_OutputOrder_v2_151.Out", "box_StopMetaSequence_v4_95.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_151_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_174();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|117275962", "117275962", "INTRO_010_B30", "box_OutputOrder_v2_151.Out", "box_Simple_Node_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayerInCaptureStateModifier_108_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_46();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1725994217", "1725994217", "INTRO_010_B30", "box_PlayerInCaptureStateModifier_108.Disabled", "box_ActivityRetry_46.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DisplayActBreakUI_88_Hidden()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_72();
    l0 = self.box_DisplayActBreakUI_88;
    l1 = self.box_MultipleAND_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|754685041", "754685041", "INTRO_010_B30", "box_DisplayActBreakUI_88.Hidden", "box_MultipleAND_v2_72.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_DisplayActBreakUI_88_Showed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerInCaptureStateModifier_133();
    l0 = self.box_DisplayActBreakUI_88;
    l1 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1286807993", "1286807993", "INTRO_010_B30", "box_DisplayActBreakUI_88.Showed", "box_PlayerInCaptureStateModifier_133.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_17();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1900694986", "1900694986", "INTRO_010_B30", "box_OutputOrder_v2_23.Out", "box_SetEntity_v2_17.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_11();
    l0 = self.box_EntityStatusListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|948740483", "948740483", "INTRO_010_B30", "box_OutputOrder_v2_23.Out", "box_EntityStatusListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_185();
    l0 = self.box_EntityStatusListener_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1358988796", "1358988796", "INTRO_010_B30", "box_OutputOrder_v2_23.Out", "box_EntityStatusListener_185.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v4_85_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_86();
    l0 = self.box_TeleportPawns_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|319099060", "319099060", "INTRO_010_B30", "box_StopMetaSequence_v4_85.Stopped", "box_TeleportPawns_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OverrideMenuAccessibility_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_84();
    l0 = self.box_OverrideMenuAccessibility_81;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1500688464", "1500688464", "INTRO_010_B30", "box_OverrideMenuAccessibility_81.Out", "box_ActivityMiscInfoModifier_v2_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_21();
    l0 = self.box_MultipleOR_44;
    l1 = self.box_DisplayCustomUIMsg_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1627420251", "1627420251", "INTRO_010_B30", "box_MultipleOR_44.Out", "box_DisplayCustomUIMsg_v5_21.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_FloatArithmetics_v2_34_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_55();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|173676749", "173676749", "INTRO_010_B30", "box_FloatArithmetics_v2_34.Out", "box_FloatArithmetics_v2_55.Mul", clone:GetLuaBox(), l0:GetLuaBox());
    -- Mul
    l0:Exec(7, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_53_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_53_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_48();
    l0 = self.box_Delay_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|134167984", "134167984", "INTRO_010_B30", "box_FloatArithmetics_v2_53.Out", "box_Delay_v5_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_NarrativeFade_28_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_25();
    l0 = self.box_NarrativeFade_28;
    l1 = self.box_PostFx_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1853589057", "1853589057", "INTRO_010_B30", "box_NarrativeFade_28.FadedIn", "box_PostFx_v3_25.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_71_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_72();
    l0 = self.box_EntityStatusListener_71;
    l1 = self.box_MultipleAND_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1535839460", "1535839460", "INTRO_010_B30", "box_EntityStatusListener_71.Loaded", "box_MultipleAND_v2_72.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_183_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_184();
    l0 = self.box_Delay_v5_183;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|685900647", "685900647", "INTRO_010_B30", "box_Delay_v5_183.TimeElapsed", "box_Simple_Node_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_91();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_58;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1663260855", "1663260855", "INTRO_010_B30", "box_CHEAT_SetEnvironmentTimeScale_58.Out", "box_OverrideEnvironment_v3_91.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerInCaptureStateModifier_40_Updated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|78135839", "78135839", "INTRO_010_B30", "box_PlayerInCaptureStateModifier_40.Updated", "box_OnceOnly_v3_49.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_Delay_v5_48_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_35();
    l0 = self.box_Delay_v5_48;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1737559458", "1737559458", "INTRO_010_B30", "box_Delay_v5_48.TimeElapsed", "box_GetDistance_35.Distance2D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance2D
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_107_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_66();
    l0 = self.box_Delay_v5_107;
    l1 = self.box_NarrativeSceneSetup_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1463829728", "1463829728", "INTRO_010_B30", "box_Delay_v5_107.TimeElapsed", "box_NarrativeSceneSetup_66.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneCleanUp_16();
    l0 = self.box_NarrativeSceneCleanUp_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1212405843", "1212405843", "INTRO_010_B30", "box_OutputOrder_v2_22.Out", "box_NarrativeSceneCleanUp_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1780995430", "1780995430", "INTRO_010_B30", "box_OutputOrder_v2_22.Out", "box_OutputOrder_v2_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MoonModifier_61_OnSetMoonSize()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_61();
    l0 = self.box_MoonModifier_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1189364248", "1189364248", "INTRO_010_B30", "box_MoonModifier_61.OnSetMoonSize", "box_MoonModifier_61.SetMoonDirection", l0:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonDirection
    l0:Exec(3, params);
end;

function export:f_box_EntityStatusListener_144_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_140();
    l0 = self.box_EntityStatusListener_144;
    l1 = self.box_EntityStatusListener_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|158850158", "158850158", "INTRO_010_B30", "box_EntityStatusListener_144.Enabled", "box_EntityStatusListener_140.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_144_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_141();
    l0 = self.box_EntityStatusListener_144;
    l1 = self.box_EntityStatusListener_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1756336452", "1756336452", "INTRO_010_B30", "box_EntityStatusListener_144.Loaded", "box_EntityStatusListener_141.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_15();
    l0 = self.box_Gate_v3_10;
    l1 = self.box_PlaySequence_v8_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1931928699", "1931928699", "INTRO_010_B30", "box_Gate_v3_10.Out", "box_PlaySequence_v8_15.SPIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- SPIn
    l1:ExecDynString(4, params, "Loop01Start");
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_8();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1151163391", "1151163391", "INTRO_010_B30", "box_MultipleOR_12.Out", "box_StopMetaSequence_v4_8.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_36();
    l0 = self.box_MultipleOR_76;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|532253740", "532253740", "INTRO_010_B30", "box_MultipleOR_76.Out", "box_OverrideEnvironment_v3_36.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_100_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_100_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_53();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1337865702", "1337865702", "INTRO_010_B30", "box_FloatArithmetics_v2_100.Out", "box_FloatArithmetics_v2_53.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_47_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_98();
    l0 = self.box_Switch_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1622649154", "1622649154", "INTRO_010_B30", "box_Compare_Floats_47.A_ge_B", "box_Switch_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Floats_47_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_98();
    l0 = self.box_Switch_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1645572896", "1645572896", "INTRO_010_B30", "box_Compare_Floats_47.A_lt_B", "box_Switch_98.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_160_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_162();
    l0 = self.box_EntityStatusListener_160;
    l1 = self.box_EntityStatusListener_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2015470193", "2015470193", "INTRO_010_B30", "box_EntityStatusListener_160.Enabled", "box_EntityStatusListener_162.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_160_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_158();
    l0 = self.box_EntityStatusListener_160;
    l1 = self.box_VisibilityModifier_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|4345828", "4345828", "INTRO_010_B30", "box_EntityStatusListener_160.Loaded", "box_VisibilityModifier_158.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_FloatArithmetics_v2_120_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_120_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerInCaptureStateModifier_40();
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|469448392", "469448392", "INTRO_010_B30", "box_FloatArithmetics_v2_120.Out", "box_PlayerInCaptureStateModifier_40.Update", clone:GetLuaBox(), l0:GetLuaBox());
    -- Update
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1712276572", "1712276572", "INTRO_010_B30", "box_OutputOrder_v2_45.Out", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_73();
    l0 = self.box_Gate_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2129031479", "2129031479", "INTRO_010_B30", "box_OutputOrder_v2_45.Out", "box_Gate_v3_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_186_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_187();
    l0 = self.box_RemoveEntity_v2_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|198241865", "198241865", "INTRO_010_B30", "box_DynamicLightModifier_186.Disabled", "box_RemoveEntity_v2_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_StopMetaSequence_v4_95_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerInCaptureStateModifier_108();
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1276239404", "1276239404", "INTRO_010_B30", "box_StopMetaSequence_v4_95.Stopped", "box_PlayerInCaptureStateModifier_108.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_149_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_147();
    l0 = self.box_Gate_v3_149;
    l1 = self.box_PlayDialog_v6_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|798717636", "798717636", "INTRO_010_B30", "box_Gate_v3_149.Opened", "box_PlayDialog_v6_147.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_149_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_147();
    l0 = self.box_Gate_v3_149;
    l1 = self.box_PlayDialog_v6_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|737959629", "737959629", "INTRO_010_B30", "box_Gate_v3_149.Out", "box_PlayDialog_v6_147.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_77_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_75();
    l0 = self.box_PlaySequence_v8_77;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|241596714", "241596714", "INTRO_010_B30", "box_PlaySequence_v8_77.Finished", "box_StopMetaSequence_v4_75.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_77_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_PlaySequence_v8_77;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|672326029", "672326029", "INTRO_010_B30", "box_PlaySequence_v8_77.Skipped", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_77_SPOut__START_POSTFX_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_166();
    l0 = self.box_PlaySequence_v8_77;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1897401958", "1897401958", "INTRO_010_B30", "box_PlaySequence_v8_77.SPOut", "box_OutputOrder_v2_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_77_SPOut__STOP_POSTFX_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_78();
    l0 = self.box_PlaySequence_v8_77;
    l1 = self.box_NarrativeFade_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|230022562", "230022562", "INTRO_010_B30", "box_PlaySequence_v8_77.SPOut", "box_NarrativeFade_78.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_77_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = self.box_PlaySequence_v8_77;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2030427480", "2030427480", "INTRO_010_B30", "box_PlaySequence_v8_77.Started", "box_OutputOrder_v2_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = self.box_MultipleAND_v2_72;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1723279327", "1723279327", "INTRO_010_B30", "box_MultipleAND_v2_72.Out", "box_OutputOrder_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetDistance_35_Out()
    local params, l0;
    self:OnExit_box_GetDistance_35_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_31();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1133408370", "1133408370", "INTRO_010_B30", "box_GetDistance_35.Out", "box_Compare_Floats_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_128_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_131();
    l0 = self.box_EntityStatusListener_128;
    l1 = self.box_EntityStatusListener_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|907619272", "907619272", "INTRO_010_B30", "box_EntityStatusListener_128.Enabled", "box_EntityStatusListener_131.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_128_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_129();
    l0 = self.box_EntityStatusListener_128;
    l1 = self.box_EntityStatusListener_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|216076950", "216076950", "INTRO_010_B30", "box_EntityStatusListener_128.Loaded", "box_EntityStatusListener_129.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneSetup_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_172();
    l0 = self.box_NarrativeSceneSetup_66;
    l1 = self.box_Delay_v5_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2121692238", "2121692238", "INTRO_010_B30", "box_NarrativeSceneSetup_66.Out", "box_Delay_v5_172.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_141_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_143();
    l0 = self.box_EntityStatusListener_141;
    l1 = self.box_PositionModifier_v2_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1689798881", "1689798881", "INTRO_010_B30", "box_EntityStatusListener_141.Loaded", "box_PositionModifier_v2_143.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_135_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundShapeModifier_134();
    l0 = self.box_ProximityTrigger_v2_135;
    l1 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|379138210", "379138210", "INTRO_010_B30", "box_ProximityTrigger_v2_135.Enter", "box_SoundShapeModifier_134.Resume", l0:GetLuaBox(), l1:GetLuaBox());
    -- Resume
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_98_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_Switch_98;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2044376461", "2044376461", "INTRO_010_B30", "box_Switch_98.Output", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerInCaptureStateModifier_43();
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|595255400", "595255400", "INTRO_010_B30", "box_OutputOrder_v2_30.Out", "box_PlayerInCaptureStateModifier_43.Update", clone:GetLuaBox(), l0:GetLuaBox());
    -- Update
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_47();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|386219637", "386219637", "INTRO_010_B30", "box_OutputOrder_v2_30.Out", "box_Compare_Floats_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_39();
    l0 = self.box_Music_Quest_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|107287692", "107287692", "INTRO_010_B30", "box_OutputOrder_v2_59.Out", "box_Music_Quest_v2_39.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v4_85();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|118079059", "118079059", "INTRO_010_B30", "box_OutputOrder_v2_59.Out", "box_StopMetaSequence_v4_85.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_171_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_152();
    l0 = self.box_Gate_v3_171;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|263653759", "263653759", "INTRO_010_B30", "box_Gate_v3_171.Out", "box_Simple_Node_152.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_100();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1143815684", "1143815684", "INTRO_010_B30", "box_OutputOrder_v2_87.Out", "box_FloatArithmetics_v2_100.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_166_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_165();
    l0 = self.box_SoundModifier_v2_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|161724667", "161724667", "INTRO_010_B30", "box_OutputOrder_v2_166.Out", "box_SoundModifier_v2_165.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_166_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_101();
    l0 = self.box_PostFx_v3_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|84733082", "84733082", "INTRO_010_B30", "box_OutputOrder_v2_166.Out", "box_PostFx_v3_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_166_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_167();
    l0 = self.box_Music_Quest_v2_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1206953872", "1206953872", "INTRO_010_B30", "box_OutputOrder_v2_166.Out", "box_Music_Quest_v2_167.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_68_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_138();
    l0 = self.box_EntityStatusListener_68;
    l1 = self.box_EntityStatusListener_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|412131488", "412131488", "INTRO_010_B30", "box_EntityStatusListener_68.Enabled", "box_EntityStatusListener_138.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_68_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_80();
    l0 = self.box_EntityStatusListener_68;
    l1 = self.box_RemoveEntity_v2_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|871599852", "871599852", "INTRO_010_B30", "box_EntityStatusListener_68.Loaded", "box_RemoveEntity_v2_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_60();
    l0 = self.box_Delay_v5_7;
    l1 = self.box_Music_Quest_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1083947899", "1083947899", "INTRO_010_B30", "box_Delay_v5_7.TimeElapsed", "box_Music_Quest_v2_60.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PlayerInCaptureStateModifier_43_Updated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|885703353", "885703353", "INTRO_010_B30", "box_PlayerInCaptureStateModifier_43.Updated", "box_OnceOnly_v3_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_93();
    l0 = self.box_MultipleAND_v2_56;
    l1 = self.box_PlaySequence_v8_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1466578931", "1466578931", "INTRO_010_B30", "box_MultipleAND_v2_56.Out", "box_PlaySequence_v8_93.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_180_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_112();
    l0 = self.box_IgnoreSignal_v2_180;
    l1 = self.box_IgnoreSignal_v2_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1319066350", "1319066350", "INTRO_010_B30", "box_IgnoreSignal_v2_180.Enabled", "box_IgnoreSignal_v2_112.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestTutorial_v3_90();
    l0 = self.box_RequestTutorial_v3_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1716872943", "1716872943", "INTRO_010_B30", "box_AddActivityObjective_v2_33.Out", "box_RequestTutorial_v3_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_129_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_127();
    l0 = self.box_EntityStatusListener_129;
    l1 = self.box_PositionModifier_v2_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1213673933", "1213673933", "INTRO_010_B30", "box_EntityStatusListener_129.Loaded", "box_PositionModifier_v2_127.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_148_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_50();
    l0 = self.box_TeleportPawns_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1706256786", "1706256786", "INTRO_010_B30", "box_OutputOrder_v2_148.Out", "box_TeleportPawns_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_148_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_153();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|331320793", "331320793", "INTRO_010_B30", "box_OutputOrder_v2_148.Out", "box_Simple_Node_153.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_148_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1473239183", "1473239183", "INTRO_010_B30", "box_OutputOrder_v2_148.Out", "box_Simple_Node_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_148_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_94();
    l0 = self.box_Delay_v5_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1073788658", "1073788658", "INTRO_010_B30", "box_OutputOrder_v2_148.Out", "box_Delay_v5_94.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SoundShapeModifier_134_Resumed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_135();
    l0 = self.box_ProximityTrigger_v2_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|582994987", "582994987", "INTRO_010_B30", "box_SoundShapeModifier_134.Resumed", "box_ProximityTrigger_v2_135.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_122();
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_TeleportPawns_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|831122241", "831122241", "INTRO_010_B30", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_TeleportPawns_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2028012063", "2028012063", "INTRO_010_B30", "box_ActivityAcknowledgeGate_3.Reloaded", "box_OutputOrder_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_65_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = self.box_NarrativeFade_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1272557618", "1272557618", "INTRO_010_B30", "box_NarrativeFade_65.FadedOut", "box_OutputOrder_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MoonModifier_103_OnResetMoonDirection()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_79();
    l0 = self.box_MoonModifier_103;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|848675305", "848675305", "INTRO_010_B30", "box_MoonModifier_103.OnResetMoonDirection", "box_ActivityEnd_79.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MoonModifier_103_OnResetMoonHDRMultiplier()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_103();
    l0 = self.box_MoonModifier_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|969501438", "969501438", "INTRO_010_B30", "box_MoonModifier_103.OnResetMoonHDRMultiplier", "box_MoonModifier_103.ResetMoonDirection", l0:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonDirection
    l0:Exec(0, params);
end;

function export:f_box_MoonModifier_103_OnResetMoonSize()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_103();
    l0 = self.box_MoonModifier_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|18624576", "18624576", "INTRO_010_B30", "box_MoonModifier_103.OnResetMoonSize", "box_MoonModifier_103.ResetMoonHDRMultiplier", l0:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonHDRMultiplier
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|896641468", "896641468", "INTRO_010_B30", "box_OutputOrder_v2_18.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|876029720", "876029720", "INTRO_010_B30", "box_OutputOrder_v2_18.Out", "box_MultipleOR_150.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|@close");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_117_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|@Crowd_Start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_136_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|@CutToBlack_TitleCard");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_152_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|@fail_no_move");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_184_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|@loop01");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|@startlogic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_121_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|@stop_logic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_89_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|@Stop_TheWalk");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_154_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|@stop_vignette");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_174_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|@StopSing");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_153_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_39()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 9,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2892310692",
        -- StopEvent,
        [7] = "2248944541",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_170()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104727283209098204",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_155()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104369322154542932",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_42()
    local params;
    params = {
        -- Pawns,
        [0] = "2104439514792512735",
        -- SoundId,
        [1] = "3029459932",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|62065113");
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
                [0] = self.f_box_OutputOrder_v2_109_Out_0,
                [1] = self.f_box_OutputOrder_v2_109_Out_1,
                [2] = self.f_box_OutputOrder_v2_109_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|82140722");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_31_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_31_A_le_B,
    });
    params = {
        -- A,
        [0] = self.distance,
        -- B,
        [1] = self.Speed_Lower_Bound,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_19()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "872277581",
        -- SoundType,
        [2] = 20,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|110245968");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_32_Out,
    });
    params = {
        -- Float,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_116()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|119786098");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_113()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "open_inventory",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|197537651");
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
                [0] = self.f_box_OutputOrder_v2_132_Out_0,
                [1] = self.f_box_OutputOrder_v2_132_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_112()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "open_inventory",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_78()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_15()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.Fail,
        -- SceneEntity,
        [3] = "2102695925225896473",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/cin_playgo_walk.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_86()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2100690429430213336",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_73()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_93()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2103765240073193173",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_PlayGo_Walk_Fail/cin_playgo_walk_fail.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_165()
    local params;
    DrawTextToScreen("Comment: Titlecard SFX", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Titlecard SFX");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2497452909",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_60()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 8,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2892310692",
        -- StopEvent,
        [7] = "2248944541",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_172()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.9,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_181()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "open_utility",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_25()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenwithfadeoutfx",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|354372697");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_75_Stopped,
    });
    params = {
        -- ID,
        [1] = self.metaID,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|355209634");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_38_Out,
    });
    params = {
        -- A,
        [0] = self.distance,
        -- B,
        [1] = self.Speed_Lower_Bound,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|365741838");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_168()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 9,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2892310692",
        -- StopEvent,
        [7] = "2248944541",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|463255296");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_57_Out,
    });
    params = {
        -- Hour,
        [0] = 3,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_105()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104284116288560697",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_119()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|499451575");
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
        [8] = "INTRO_010_B30 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_182()
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
        [6] = "2892310692",
        -- StopEvent,
        [7] = "2248944541",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|526674104");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_51_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_51_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.distance,
        -- B,
        [1] = self.Speed_Bound_Diff,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_37()
    local params;
    params = {
        -- Pawns,
        [0] = "2104439514792512735",
        -- SoundId,
        [1] = "217474810",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_164()
    local params;
    DrawTextToScreen("Comment: Titlecard SFX", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Titlecard SFX");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "236301886",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_102()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenwithfadeoutfx",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_159()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104369322154542932",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_83()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|677275197");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_OverrideEnvironment_v3_36_Disabled,
    });
    params = {
        -- characterVisibility,
        [2] = "FCZ_Default:Special.PlaygoCompound_CharacterVisibility",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_50()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = self.player,
        -- LoadingScreen,
        [2] = true,
        -- Pawns,
        [4] = "2103765240073193173",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_145()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104759329853820085",
    };
    return params;
end;

function export:OnEnter_box_PlayerInCaptureStateModifier_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerInCaptureStateModifier_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|696238411");
    l0:SetConnections({
        -- Updated,
        [2] = self.f_box_PlayerInCaptureStateModifier_118_Updated,
    });
    params = {
        -- FollowPathBackwardSpeedFactor,
        [1] = 0,
        -- FollowPathForwardLookDistance,
        [2] = self.lookatdistance,
        -- FollowPathForwardSpeedFactor,
        [3] = 0.2,
        -- FollowPathMaxSpeed,
        [4] = 100,
        -- FollowPathMinSpeed,
        [5] = -100,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_29()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_131()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104149360246801940",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|762174515");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 26,
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
                [6] = self.f_box_OutputOrder_v2_27_Out_6,
                [7] = self.f_box_OutputOrder_v2_27_Out_7,
                [8] = self.f_box_OutputOrder_v2_27_Out_8,
                [11] = self.f_box_OutputOrder_v2_27_Out_11,
                [13] = self.f_box_OutputOrder_v2_27_Out_13,
                [14] = self.f_box_OutputOrder_v2_27_Out_14,
                [15] = self.f_box_OutputOrder_v2_27_Out_15,
                [16] = self.f_box_OutputOrder_v2_27_Out_16,
                [17] = self.f_box_OutputOrder_v2_27_Out_17,
                [18] = self.f_box_OutputOrder_v2_27_Out_18,
                [19] = self.f_box_OutputOrder_v2_27_Out_19,
                [20] = self.f_box_OutputOrder_v2_27_Out_20,
                [21] = self.f_box_OutputOrder_v2_27_Out_21,
                [22] = self.f_box_OutputOrder_v2_27_Out_22,
                [23] = self.f_box_OutputOrder_v2_27_Out_23,
                [25] = self.f_box_OutputOrder_v2_27_Out_25,
            },
            count = 26,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_140()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104176933464982673",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_185()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105225098198797649",
    };
    return params;
end;

function export:OnEnter_box_PlayerInCaptureStateModifier_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerInCaptureStateModifier_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|789477297");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PlayerInCaptureStateModifier_24_Enabled,
    });
    params = {
        -- FollowPath,
        [0] = "2101037873850492385",
        -- FollowPathBackwardSpeedFactor,
        [1] = 0,
        -- FollowPathForwardLookDistance,
        [2] = self.lookatdistance,
        -- FollowPathForwardSpeedFactor,
        [3] = 0,
        -- FollowPathMaxSpeed,
        [4] = 100,
        -- FollowPathMinSpeed,
        [5] = -100,
        -- TargetPawn,
        [6] = self.father,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_94()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_162()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104369323073095512",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|819338493");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT04_010_B20_HandcuffWalk",
            id = "555481",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103511791523863922",
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|833063121");
    l0:SetConnections({
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_63()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|834822214");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [5] = self.f_box_OutputOrder_v2_67_Out_5,
                [6] = self.f_box_OutputOrder_v2_67_Out_6,
                [7] = self.f_box_OutputOrder_v2_67_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_20()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|846918790");
    l0:SetConnections({
    });
    params = {
        -- characterVisibility,
        [2] = "FCZ_Default:Default.Default_CharacterVisibility_LowBoost",
        -- lighting,
        [7] = "FCZ_Default:Special.Playgo_Church_Interior_Lighting",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_138()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104662504452928313",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_127()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104153170860063803",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104149359592490514",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|896293092");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
                [2] = self.f_box_OutputOrder_v2_69_Out_2,
                [3] = self.f_box_OutputOrder_v2_69_Out_3,
                [4] = self.f_box_OutputOrder_v2_69_Out_4,
                [5] = self.f_box_OutputOrder_v2_69_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_16()
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

function export:OnEnter_box_OverrideEnvironment_v3_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|904343523");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_91_Enabled,
    });
    params = {
        -- characterVisibility,
        [2] = "FCZ_Default:Default.Default_CharacterVisibility_LowBoost",
        -- fog,
        [6] = "FCZ_Default:Unique_Fogs.Playgo_Fog",
        -- lighting,
        [7] = "FCZ_Default:Special.Playgo_Church_Interior_Lighting",
        -- ratio,
        [9] = 1,
        -- sky,
        [11] = "FCZ_Default:Special.Playgo_Intro_Sky",
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|904951369");
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
                [1] = self.f_box_OutputOrder_v2_179_Out_1,
                [2] = self.f_box_OutputOrder_v2_179_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|949508372");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_111()
    local params;
    params = {
        -- Group,
        [0] = "2103511791523863922",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_156()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104369323073095512",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|983838106");
    l0:SetConnections({
    });
    params = {
        -- lighting,
        [7] = "FCZ_Default:Special.Playgo_Church_Interior_Lighting",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_161()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104369323744184154",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_126()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104153164094651449",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1030129389");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_17_Out,
    });
    params = {
        -- Entity,
        [0] = "2101634165645562613",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_122()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2103702567270761888",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1043192465");
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

function export:OnEnter_box_Music_Quest_v2_70()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 7,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2892310692",
        -- StopEvent,
        [7] = "2248944541",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1084261508");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_167()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 21,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2892310692",
        -- StopEvent,
        [7] = "2248944541",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_21()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "LT04_010_B20_TooFarWarning",
            id = "555601",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_123()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1128466118");
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

function export:OnEnter_box_Delay_v5_124()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103457476153204700",
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1193999499");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_55_Out,
    });
    params = {
        -- A,
        [0] = self._sld_Result_box_FloatArithmetics_v2_34,
        -- B,
        [1] = self.Speed_Diff,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1194919790");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
                [3] = self.f_box_OutputOrder_v2_2_Out_3,
                [4] = self.f_box_OutputOrder_v2_2_Out_4,
                [5] = self.f_box_OutputOrder_v2_2_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1205975485");
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
                [1] = self.f_box_OutputOrder_v2_62_Out_1,
                [2] = self.f_box_OutputOrder_v2_62_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_101()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenwithfadeoutfx",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_104()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1249172627");
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
                [0] = self.f_box_OutputOrder_v2_137_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1259902758");
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
                [0] = self.f_box_OutputOrder_v2_151_Out_0,
                [1] = self.f_box_OutputOrder_v2_151_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayerInCaptureStateModifier_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerInCaptureStateModifier_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1266761035");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PlayerInCaptureStateModifier_108_Disabled,
    });
    params = {
        -- FollowPathBackwardSpeedFactor,
        [1] = 1,
        -- FollowPathForwardLookDistance,
        [2] = 2.5,
        -- FollowPathForwardSpeedFactor,
        [3] = 1,
        -- FollowPathMaxSpeed,
        [4] = 100,
        -- FollowPathMinSpeed,
        [5] = -100,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_178()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2015331788",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_DisplayActBreakUI_88()
    local params;
    params = {
        -- Act,
        [0] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1285784807");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
                [2] = self.f_box_OutputOrder_v2_23_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1285970972");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_85_Stopped,
    });
    params = {
        -- ID,
        [1] = self.metaID,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_81()
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

function export:OnEnter_box_FloatArithmetics_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1294527026");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_34_Out,
    });
    params = {
        -- A,
        [0] = self._sld_Result_box_FloatArithmetics_v2_38,
        -- B,
        [1] = self.Speed_Bound_Diff,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1304824993");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_53_Out,
    });
    params = {
        -- A,
        [0] = self.Max_Speed,
        -- B,
        [1] = self.Min_Speed,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_143()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104759311652637873",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104176931816621199",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_28()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_125()
    local params, l0;
    DrawTextToScreen("Comment: Load FOG VFX", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Load FOG VFX");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1351992278");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160248666979468",
        -- missionLayerId,
        [1] = "27160252736222033",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100084336878432553",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_183()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 600,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_157()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104369323744184154",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_147()
    local params;
    params = {
        -- Group,
        [0] = self.player,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2726560794",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_58()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayerInCaptureStateModifier_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerInCaptureStateModifier_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1473042158");
    l0:SetConnections({
        -- Updated,
        [2] = self.f_box_PlayerInCaptureStateModifier_40_Updated,
    });
    params = {
        -- FollowPathBackwardSpeedFactor,
        [1] = 0,
        -- FollowPathForwardLookDistance,
        [2] = self.lookatdistance,
        -- FollowPathForwardSpeedFactor,
        [3] = self._sld_Result_box_FloatArithmetics_v2_120,
        -- FollowPathMaxSpeed,
        [4] = 100,
        -- FollowPathMinSpeed,
        [5] = -100,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_48()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_107()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1507488725");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_142()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104759329853820085",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104176933464982673",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_61()
    local params;
    params = {
        -- Azimuth,
        [0] = 60,
        -- Elevation,
        [1] = 20,
        -- HDRMultiplier,
        [2] = 1,
        -- ResetAfterBeat,
        [3] = true,
        -- Size,
        [4] = 8,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_144()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104176931816621199",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_10()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1557929500");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "LT04_010_B60_SaveMarshal",
            id = "726185",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1566581856");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_100_Out,
    });
    params = {
        -- A,
        [0] = self.Speed_Top_Bound,
        -- B,
        [1] = self.Speed_Lower_Bound,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1571156208");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_47_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_47_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.distance,
        -- B,
        [1] = self.Fail_Distance,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1601305781");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_187()
    local params;
    params = {
        -- Group,
        [0] = "2105225098198797649",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_160()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104369322494281558",
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1649183503");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_120_Out,
    });
    params = {
        -- A,
        [0] = self._sld_Result_box_FloatArithmetics_v2_55,
        -- B,
        [1] = self.Min_Speed,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1650728097");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1656254068");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_186_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2105225098198797649",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1667608598");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_95_Stopped,
    });
    params = {
        -- ID,
        [1] = self.Fail,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_173()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "547767770",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_149()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayerInCaptureStateModifier_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerInCaptureStateModifier_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1694178536");
    l0:SetConnections({
    });
    params = {
        -- FollowPath,
        [0] = "2101037873850492385",
        -- FollowPathBackwardSpeedFactor,
        [1] = 0,
        -- FollowPathForwardLookDistance,
        [2] = 2.5,
        -- FollowPathForwardSpeedFactor,
        [3] = 0,
        -- FollowPathMaxSpeed,
        [4] = 100,
        -- FollowPathMinSpeed,
        [5] = -100,
        -- TargetPawn,
        [6] = self.father,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1697405863");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2104284116288560697",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_77()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.metaID,
        -- SceneEntity,
        [3] = "2100084336878432553",
        -- SequenceFile,
        [4] = "sequences/zeta_main/cin_playgo_heli_crash/cin_playgo_heli_crash.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
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

function export:OnEnter_box_GetDistance_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1745803307");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_35_Out,
    });
    params = {
        -- Entity1,
        [0] = self.player,
        -- Entity2,
        [1] = "2103511791523863922",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_128()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104149359592490514",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_66()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_141()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104759311652637873",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_135()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104728147950863125",
    };
    return params;
end;

function export:OnEnter_box_Switch_98()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1821292127");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1834977902");
    l0:SetConnections({
    });
    params = {
        -- ID,
        [1] = self.Fail,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1864940085");
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

function export:OnEnter_box_Gate_v3_171()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_130()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104153164094651449",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104149360246801940",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1882302922");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1906014423");
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
                [0] = self.f_box_OutputOrder_v2_166_Out_0,
                [1] = self.f_box_OutputOrder_v2_166_Out_1,
                [2] = self.f_box_OutputOrder_v2_166_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_90()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015280959212862",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_68()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099975551344196458",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_PlayerInCaptureStateModifier_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerInCaptureStateModifier_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1932957842");
    l0:SetConnections({
        -- Updated,
        [2] = self.f_box_PlayerInCaptureStateModifier_43_Updated,
    });
    params = {
        -- FollowPathBackwardSpeedFactor,
        [1] = 0,
        -- FollowPathForwardLookDistance,
        [2] = self.lookatdistance,
        -- FollowPathForwardSpeedFactor,
        [3] = self.Max_Speed,
        -- FollowPathMaxSpeed,
        [4] = 100,
        -- FollowPathMinSpeed,
        [5] = -100,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_56()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayerInCaptureStateModifier_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PlayerInCaptureStateModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerInCaptureStateModifier_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1944494108");
    l0:SetConnections({
    });
    params = {
        -- FollowPathBackwardSpeedFactor,
        [1] = 0,
        -- FollowPathForwardLookDistance,
        [2] = self.lookatdistance,
        -- FollowPathForwardSpeedFactor,
        [3] = 0,
        -- FollowPathMaxSpeed,
        [4] = 100,
        -- FollowPathMinSpeed,
        [5] = -100,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_180()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "open_utility",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|1981378252");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_33_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT04_010_B20_HandcuffWalk",
            id = "555481",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_129()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104153170860063803",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_80()
    local params;
    params = {
        -- Group,
        [0] = "#1B80E486",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_139()
    local params;
    params = {
        -- Group,
        [0] = "2104662504452928313",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2048353399");
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
                [0] = self.f_box_OutputOrder_v2_148_Out_0,
                [1] = self.f_box_OutputOrder_v2_148_Out_1,
                [3] = self.f_box_OutputOrder_v2_148_Out_3,
                [4] = self.f_box_OutputOrder_v2_148_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2060450134");
    l0:SetConnections({
        -- Resumed,
        [1] = self.f_box_SoundShapeModifier_134_Resumed,
    });
    params = {
        -- FadeTime,
        [0] = 1,
        -- SoundShapeId,
        [1] = "2103585444622039086",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_158()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104369322494281558",
    };
    return params;
end;

function export:OnEnter_box_DisplayActBreakUI_54()
    local params;
    params = {
        -- Act,
        [0] = 4,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_65()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_103()
    local params;
    params = {
        -- Azimuth,
        [0] = -80,
        -- Elevation,
        [1] = 20,
        -- HDRMultiplier,
        [2] = 1,
        -- ResetAfterBeat,
        [3] = true,
        -- Size,
        [4] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@INTRO_010_B30|2126187257");
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

function export:OnEnter_box_RemoveEntity_v2_110()
    local params;
    params = {
        -- Group,
        [0] = self.father,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_169()
    local params;
    params = {
        -- Group,
        [0] = "2104727283209098204",
    };
    return params;
end;

function export:OnExit_box_SetFloat_v2_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.obj_delay_time = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_38 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_74_Out()
    local l0;
    l0 = self.box_StartMetaSequence_74;
    self.metaID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_13_Out()
    local l0;
    l0 = self.box_StartMetaSequence_13;
    self.Fail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.father = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_55 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_34 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_53_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.Speed_Diff = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_100_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.Speed_Bound_Diff = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_120_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_120 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.distance = l0:GetDataOutValue(0);
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
