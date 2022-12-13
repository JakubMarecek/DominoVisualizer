LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act1/mis_160/mis_160_debrief.domino
-- User graph: MIS_160_DEBRIEF
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.RemovePlayersFromVehicle.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayer_v6.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayerListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/CancelAllExplosions.lua");
        cboxRes:RegisterBox("Domino/System/ChangeSunOrientation_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DisplayCinematicSkipPrompt.lua");
        cboxRes:RegisterBox("Domino/System/ExtinguishAllFires.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetDemoType.lua");
        cboxRes:RegisterBox("Domino/System/GetTimeOfDay_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MoonModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayerExtinguishFire_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayActBreakUI.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/QuitToMainMenu.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3791081821.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1927281476.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2455311545.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3636247035.bnk]], "CSoundResource");
        cboxRes:LoadResource([[ui\singleplayer\video\cin_m160_flashback_ryefamily_wip05.bik]], "CBinkResource");
        cboxRes:LoadResource([[1285401383.bnk]], "CSoundResource");
        cboxRes:LoadResource([[992768399.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/mis_160/mis_160_debrief.MIS_160_DEBRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.RemovePlayersFromVehicle.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/BinkPlayer_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Preload",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Played",
                delayed = false,
            },
            [1] = {
                name = "Preloaded",
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
                name = "BinkAudio",
                type = "Sound",
            },
            [1] = {
                name = "BinkAudioType",
                type = "SoundType",
            },
            [2] = {
                name = "BinkPathID",
                type = "Video",
            },
            [3] = {
                name = "BinkSound",
                type = "Sound",
            },
            [4] = {
                name = "BinkSoundEnd",
                type = "Sound",
            },
            [5] = {
                name = "BinkSoundEndType",
                type = "SoundType",
            },
            [6] = {
                name = "BinkSoundFade",
                type = "float",
            },
            [7] = {
                name = "BinkSoundType",
                type = "SoundType",
            },
            [8] = {
                name = "BinkVolumePercent",
                type = "float",
            },
            [9] = {
                name = "Loop",
                type = "bool",
            },
            [10] = {
                name = "MaterialName",
                type = "string",
            },
            [11] = {
                name = "ScreenEntity",
                type = "entity",
            },
            [12] = {
                name = "TCR_Music",
                type = "bool",
            },
            [13] = {
                name = "WaitAvailableBinding",
                type = "bool",
            },
        },
        dataInCount = 14,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/BinkPlayerListener_v3.lua")] = {
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
                name = "End",
                delayed = true,
            },
            [3] = {
                name = "Initialized",
                delayed = true,
            },
            [4] = {
                name = "Loaded",
                delayed = true,
            },
            [5] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "BinkPathIDFilter",
                type = "Video",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CancelAllExplosions.lua")] = {
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
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/DisplayCinematicSkipPrompt.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisplayPrompt",
            },
            [1] = {
                name = "HidePrompt",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "PromptDisplayed",
                delayed = false,
            },
            [1] = {
                name = "PromptHidden",
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
    metadataTable[GetPathID("Domino/System/GetDemoType.lua")] = {
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
                name = "type",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetTimeOfDay_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetTimeOfDay",
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
                name = "Hour",
                type = "int",
            },
            [1] = {
                name = "Minute",
                type = "int",
            },
            [2] = {
                name = "Seconds",
                type = "int",
            },
        },
        dataOutCount = 3,
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
                name = "ResetMoonPhase",
            },
            [3] = {
                name = "ResetMoonSize",
            },
            [4] = {
                name = "SetMoonDirection",
            },
            [5] = {
                name = "SetMoonHDRMultiplier",
            },
            [6] = {
                name = "SetMoonPhase",
            },
            [7] = {
                name = "SetMoonSize",
            },
        },
        controlInCount = 8,
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
                name = "OnResetMoonPhase",
                delayed = false,
            },
            [3] = {
                name = "OnResetMoonSize",
                delayed = false,
            },
            [4] = {
                name = "OnSetMoonDirection",
                delayed = false,
            },
            [5] = {
                name = "OnSetMoonHDRMultiplier",
                delayed = false,
            },
            [6] = {
                name = "OnSetMoonPhase",
                delayed = false,
            },
            [7] = {
                name = "OnSetMoonSize",
                delayed = false,
            },
        },
        controlOutCount = 8,
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
                name = "Phase",
                type = "float",
            },
            [4] = {
                name = "ResetAfterBeat",
                type = "bool",
            },
            [5] = {
                name = "Size",
                type = "float",
            },
        },
        dataInCount = 6,
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
                name = "CompletelyShowed",
                delayed = false,
            },
            [1] = {
                name = "Hidden",
                delayed = true,
            },
            [2] = {
                name = "Showed",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/UI/QuitToMainMenu.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "QuitToMainMenu",
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
    self._name = "MIS_160_DEBRIEF";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF";
    self.MetaSequenceID = 0;
    self.eLocalPlayer = nil;
    self.box_PostFx_v3_63 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|13982111");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_36 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|25504423");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_36_Out,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|43400641");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|61692790");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|105176380");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_Gate_v3_17 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|175925899");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_17_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_17_Out,
    });
    self.box_Delay_v5_62 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|198731492");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_62_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_62_TimeElapsed,
    });
    self.box_NarrativeCS_Cinema_25 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeCS_Cinema.debug.lua");
    l0 = self.box_NarrativeCS_Cinema_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeCS_Cinema_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|271836013");
    l0:SetConnections({
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|284251700");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_31_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_PostFx_v3_64 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|317550024");
    l0:SetConnections({
    });
    self.box_Delay_v5_50 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|319508769");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_50_TimeElapsed,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_42 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|369888925");
    l0:SetConnections({
    });
    self.box_ChangeSunOrientation_v4_56 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|498935166");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|546294874");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_80 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|557918451");
    l0:SetConnections({
    });
    self.box_BinkPlayer_v6_30 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|560095725");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|625494232");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_RemovePlayersFromVehicle_84 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.RemovePlayersFromVehicle.debug.lua");
    l0 = self.box_RemovePlayersFromVehicle_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemovePlayersFromVehicle_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|681101187");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemovePlayersFromVehicle_84_Out,
    });
    self.box_RemoveEntity_v2_86 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|833527509");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_21 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|894935763");
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
        [0] = self.f_box_PlaySequence_v8_21_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_21_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_21_SPOut__FadeIn_,
                },
                [1] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_21_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_21_Started,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|919529729");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_OverrideMenuAccessibility_v2_85 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|930596678");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_85_Out,
    });
    self.box_Delay_v5_90 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|978990163");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_90_TimeElapsed,
    });
    self.box_NarrativeFade_69 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|991658557");
    l0:SetConnections({
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|992524527");
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
        [0] = self.f_box_MultipleOR_48_Out,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1020394709");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_MultipleOR_75 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1022089996");
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
        [0] = self.f_box_MultipleOR_75_Out,
    });
    self.box_NarrativeFade_60 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1083521567");
    l0:SetConnections({
    });
    self.box_StartMetaSequence_12 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1085937121");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_12_Out,
    });
    self.box_Music_Quest_v2_81 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1109642422");
    l0:SetConnections({
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1124364146");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_58 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1131442070");
    l0:SetConnections({
    });
    self.box_Delay_v5_83 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1132947005");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_83_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_71 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1139273040");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_71_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_71_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_71_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_71_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_71_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_71_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_71_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_71_Use,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1141928895");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_NarrativeSceneSetup_16 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1198920869");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_16_Holstered,
    });
    self.box_TeleportPawns_19 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1253348894");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_19_Out,
    });
    self.box_BinkPlayerListener_v3_34 = cbox:CreateBox("Domino/System/BinkPlayerListener_v3.lua");
    l0 = self.box_BinkPlayerListener_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayerListener_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1275986985");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_BinkPlayerListener_v3_34_Disabled,
        -- Enabled,
        [1] = self.f_box_BinkPlayerListener_v3_34_Enabled,
        -- End,
        [2] = self.f_box_BinkPlayerListener_v3_34_End,
        -- Start,
        [5] = self.f_box_BinkPlayerListener_v3_34_Start,
    });
    self.box_RemoveEntity_v2_35 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1276231046");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_35_Out,
    });
    self.box_NarrativeFade_18 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1282373024");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_18_FadedOut,
    });
    self.box_NarrativeFade_11 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1309131245");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_68 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1378320394");
    l0:SetConnections({
    });
    self.box_MoonModifier_52 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1393263476");
    l0:SetConnections({
    });
    self.box_Delay_v5_67 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1425430642");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_67_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_67_TimeElapsed,
    });
    self.box_Delay_v5_72 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1452289605");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_72_TimeElapsed,
    });
    self.box_ChangeSunOrientation_v4_54 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1467099690");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_14 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1541395489");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_14_Stopped,
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1641613486");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_DisplayActBreakUI_39 = cbox:CreateBox("Domino/System/UI/DisplayActBreakUI.lua");
    l0 = self.box_DisplayActBreakUI_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayActBreakUI_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1701655997");
    l0:SetConnections({
        -- CompletelyShowed,
        [0] = self.f_box_DisplayActBreakUI_39_CompletelyShowed,
        -- Hidden,
        [1] = self.f_box_DisplayActBreakUI_39_Hidden,
    });
    self.box_MoonModifier_57 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1707369284");
    l0:SetConnections({
    });
    self.box_PostFx_v3_66 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1746070811");
    l0:SetConnections({
    });
    self.box_DisplayActBreakUI_38 = cbox:CreateBox("Domino/System/UI/DisplayActBreakUI.lua");
    l0 = self.box_DisplayActBreakUI_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayActBreakUI_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1807778179");
    l0:SetConnections({
        -- CompletelyShowed,
        [0] = self.f_box_DisplayActBreakUI_38_CompletelyShowed,
        -- Hidden,
        [1] = self.f_box_DisplayActBreakUI_38_Hidden,
        -- Showed,
        [2] = self.f_box_DisplayActBreakUI_38_Showed,
    });
    self.box_DisplayCinematicSkipPrompt_28 = cbox:CreateBox("Domino/System/DisplayCinematicSkipPrompt.lua");
    l0 = self.box_DisplayCinematicSkipPrompt_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicSkipPrompt_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1808586119");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_73 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|2062843307");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_73_Out,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|2066440021");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|305194789", "305194789", "MIS_160_DEBRIEF", "In", "box_OutputOrder_v2_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1525767798", "1525767798", "MIS_160_DEBRIEF", "box_Simple_Node_23.Out", "box_Delay_v5_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_35();
    l0 = self.box_RemoveEntity_v2_36;
    l1 = self.box_RemoveEntity_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|656204827", "656204827", "MIS_160_DEBRIEF", "box_RemoveEntity_v2_36.Out", "box_RemoveEntity_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_CancelAllExplosions_91_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_32();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1557096351", "1557096351", "MIS_160_DEBRIEF", "box_CancelAllExplosions_91.Out", "box_GetLocalPlayer_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayActBreakUI_39();
    l0 = self.box_Delay_v5_33;
    l1 = self.box_DisplayActBreakUI_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1516679156", "1516679156", "MIS_160_DEBRIEF", "box_Delay_v5_33.TimeElapsed", "box_DisplayActBreakUI_39.Show", l0:GetLuaBox(), l1:GetLuaBox());
    -- Show
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_88();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1245203693", "1245203693", "MIS_160_DEBRIEF", "box_OutputOrder_v2_95.Out", "box_Compare_Strings_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_94();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1210837488", "1210837488", "MIS_160_DEBRIEF", "box_OutputOrder_v2_95.Out", "box_Print_v2_94.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1573206501", "1573206501", "MIS_160_DEBRIEF", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_16();
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_NarrativeSceneSetup_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|964053046", "964053046", "MIS_160_DEBRIEF", "box_ActivityAcknowledgeGate_2.Reloaded", "box_NarrativeSceneSetup_16.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1450701347", "1450701347", "MIS_160_DEBRIEF", "box_OutputOrder_v2_77.Out", "box_OutputOrder_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1543190582", "1543190582", "MIS_160_DEBRIEF", "box_OutputOrder_v2_77.Out", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_80();
    l0 = self.box_Delay_v5_78;
    l1 = self.box_SoundModifier_v2_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1536654706", "1536654706", "MIS_160_DEBRIEF", "box_Delay_v5_78.TimeElapsed", "box_SoundModifier_v2_80.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_32_Out()
    local l0;
    self:OnExit_box_GetLocalPlayer_v2_32_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    l0 = self.box_RemovePlayersFromVehicle_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|556339492", "556339492", "MIS_160_DEBRIEF", "box_GetLocalPlayer_v2_32.Out", "box_RemovePlayersFromVehicle_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Gate_v3_17_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_71();
    l0 = self.box_Gate_v3_17;
    l1 = self.box_ProximityTrigger_v3_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1596365198", "1596365198", "MIS_160_DEBRIEF", "box_Gate_v3_17.Closed", "box_ProximityTrigger_v3_71.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_71();
    l0 = self.box_Gate_v3_17;
    l1 = self.box_ProximityTrigger_v3_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1842835198", "1842835198", "MIS_160_DEBRIEF", "box_Gate_v3_17.Out", "box_ProximityTrigger_v3_71.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_62_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_Delay_v5_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1721313779", "1721313779", "MIS_160_DEBRIEF", "box_Delay_v5_62.Started", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_62_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_63();
    l0 = self.box_Delay_v5_62;
    l1 = self.box_PostFx_v3_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|405831467", "405831467", "MIS_160_DEBRIEF", "box_Delay_v5_62.TimeElapsed", "box_PostFx_v3_63.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_58();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|2102498213", "2102498213", "MIS_160_DEBRIEF", "box_OutputOrder_v2_59.Out", "box_CHEAT_SetEnvironmentTimeScale_58.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_56();
    l0 = self.box_ChangeSunOrientation_v4_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|90920235", "90920235", "MIS_160_DEBRIEF", "box_OutputOrder_v2_59.Out", "box_ChangeSunOrientation_v4_56.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_57();
    l0 = self.box_MoonModifier_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1013032103", "1013032103", "MIS_160_DEBRIEF", "box_OutputOrder_v2_59.Out", "box_MoonModifier_57.ResetMoonDirection", clone:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonDirection
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_96();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|215017919", "215017919", "MIS_160_DEBRIEF", "box_OutputOrder_v2_59.Out", "box_SetTimeOfDay_96.IncrementTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- IncrementTimeOfDay
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1141157473", "1141157473", "MIS_160_DEBRIEF", "box_Simple_Node_45.Out", "box_OutputOrder_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_31_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_Delay_v5_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1761659277", "1761659277", "MIS_160_DEBRIEF", "box_Delay_v5_31.Started", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayActBreakUI_38();
    l0 = self.box_Delay_v5_31;
    l1 = self.box_DisplayActBreakUI_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1776136181", "1776136181", "MIS_160_DEBRIEF", "box_Delay_v5_31.TimeElapsed", "box_DisplayActBreakUI_38.Show", l0:GetLuaBox(), l1:GetLuaBox());
    -- Show
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_50_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_50;
    l1 = self.box_StartMetaSequence_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|142017756", "142017756", "MIS_160_DEBRIEF", "box_Delay_v5_50.TimeElapsed", "box_StartMetaSequence_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Compare_Integers_46_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_47();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1107324359", "1107324359", "MIS_160_DEBRIEF", "box_Compare_Integers_46.A_eq_B", "box_Compare_Integers_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_46_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1894892074", "1894892074", "MIS_160_DEBRIEF", "box_Compare_Integers_46.A_gt_B", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_46_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|212725693", "212725693", "MIS_160_DEBRIEF", "box_Compare_Integers_46.A_lt_B", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|406992738", "406992738", "MIS_160_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_11();
    l0 = self.box_NarrativeFade_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1273500431", "1273500431", "MIS_160_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_NarrativeFade_11.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_43_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|641152636", "641152636", "MIS_160_DEBRIEF", "box_Compare_Integers_43.A_ge_B", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_43_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_46();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1857331702", "1857331702", "MIS_160_DEBRIEF", "box_Compare_Integers_43.A_lt_B", "box_Compare_Integers_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_82_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_85();
    l0 = self.box_OverrideMenuAccessibility_v2_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1762131734", "1762131734", "MIS_160_DEBRIEF", "box_MissionBlockLayer_82.Disabled", "box_OverrideMenuAccessibility_v2_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerExtinguishFire_v2_92();
    l0 = self.box_ActivityInitialized_6;
    l1 = Boxes[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1322808911", "1322808911", "MIS_160_DEBRIEF", "box_ActivityInitialized_6.Out", "box_PlayerExtinguishFire_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_51();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1420706881", "1420706881", "MIS_160_DEBRIEF", "box_OutputOrder_v2_55.Out", "box_SetTimeOfDay_51.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_54();
    l0 = self.box_ChangeSunOrientation_v4_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|994904362", "994904362", "MIS_160_DEBRIEF", "box_OutputOrder_v2_55.Out", "box_ChangeSunOrientation_v4_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_RemovePlayersFromVehicle_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_RemovePlayersFromVehicle_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1023927292", "1023927292", "MIS_160_DEBRIEF", "box_RemovePlayersFromVehicle_84.Out", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_14();
    l0 = self.box_StopMetaSequence_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|485018767", "485018767", "MIS_160_DEBRIEF", "box_OutputOrder_v2_27.Out", "box_StopMetaSequence_v5_14.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeCS_Cinema_25();
    l0 = self.box_NarrativeCS_Cinema_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1649970127", "1649970127", "MIS_160_DEBRIEF", "box_OutputOrder_v2_27.Out", "box_NarrativeCS_Cinema_25.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_47_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|974763900", "974763900", "MIS_160_DEBRIEF", "box_Compare_Integers_47.A_ge_B", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_47_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|545795748", "545795748", "MIS_160_DEBRIEF", "box_Compare_Integers_47.A_lt_B", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_DisplayCinematicSkipPrompt_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1626678796", "1626678796", "MIS_160_DEBRIEF", "box_OutputOrder_v2_20.Out", "box_DisplayCinematicSkipPrompt_28.DisplayPrompt", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisplayPrompt
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_81();
    l0 = self.box_Music_Quest_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|527224206", "527224206", "MIS_160_DEBRIEF", "box_OutputOrder_v2_20.Out", "box_Music_Quest_v2_81.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|483822466", "483822466", "MIS_160_DEBRIEF", "box_Simple_Node_44.Out", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_41();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1651058759", "1651058759", "MIS_160_DEBRIEF", "box_OutputOrder_v2_53.Out", "box_SetTimeOfDay_41.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_52();
    l0 = self.box_MoonModifier_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|831177452", "831177452", "MIS_160_DEBRIEF", "box_OutputOrder_v2_53.Out", "box_MoonModifier_52.SetMoonDirection", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonDirection
    l0:Exec(4, params);
end;

function export:f_box_PlaySequence_v8_21_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|384523760", "384523760", "MIS_160_DEBRIEF", "box_PlaySequence_v8_21.Finished", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_21_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|383564476", "383564476", "MIS_160_DEBRIEF", "box_PlaySequence_v8_21.Skipped", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_11();
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_NarrativeFade_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|422522189", "422522189", "MIS_160_DEBRIEF", "box_PlaySequence_v8_21.SPOut", "box_NarrativeFade_11.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_21_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|261762243", "261762243", "MIS_160_DEBRIEF", "box_PlaySequence_v8_21.SPOut", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1143839800", "1143839800", "MIS_160_DEBRIEF", "box_PlaySequence_v8_21.Started", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_17();
    l0 = self.box_MultipleOR_70;
    l1 = self.box_Gate_v3_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|494295857", "494295857", "MIS_160_DEBRIEF", "box_MultipleOR_70.Out", "box_Gate_v3_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OverrideMenuAccessibility_v2_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_OverrideMenuAccessibility_v2_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1179043673", "1179043673", "MIS_160_DEBRIEF", "box_OverrideMenuAccessibility_v2_85.Out", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_90_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_QuitToMainMenu_89();
    l0 = self.box_Delay_v5_90;
    l1 = Boxes[GetPathID("Domino/System/UI/QuitToMainMenu.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1947762876", "1947762876", "MIS_160_DEBRIEF", "box_Delay_v5_90.TimeElapsed", "box_QuitToMainMenu_89.QuitToMainMenu", l0:GetLuaBox(), l1:GetLuaBox());
    -- QuitToMainMenu
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = self.box_MultipleOR_48;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1853978699", "1853978699", "MIS_160_DEBRIEF", "box_MultipleOR_48.Out", "box_Simple_Node_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_50();
    l0 = self.box_Delay_v5_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|6113238", "6113238", "MIS_160_DEBRIEF", "box_OutputOrder_v2_37.Out", "box_Delay_v5_50.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_36();
    l0 = self.box_RemoveEntity_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|2055973612", "2055973612", "MIS_160_DEBRIEF", "box_OutputOrder_v2_37.Out", "box_RemoveEntity_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_42();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1346831891", "1346831891", "MIS_160_DEBRIEF", "box_OutputOrder_v2_37.Out", "box_CHEAT_SetEnvironmentTimeScale_42.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetTimeOfDay_v2_40();
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|766146987", "766146987", "MIS_160_DEBRIEF", "box_OutputOrder_v2_37.Out", "box_GetTimeOfDay_v2_40.GetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetTimeOfDay
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1407676890", "1407676890", "MIS_160_DEBRIEF", "box_OutputOrder_v2_37.Out", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_10;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1793493907", "1793493907", "MIS_160_DEBRIEF", "box_Delay_v5_10.TimeElapsed", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_76();
    l0 = self.box_MultipleOR_75;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1386806634", "1386806634", "MIS_160_DEBRIEF", "box_MultipleOR_75.Out", "box_SoundMixing_76.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|739090678", "739090678", "MIS_160_DEBRIEF", "box_OutputOrder_v2_8.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1769862585", "1769862585", "MIS_160_DEBRIEF", "box_OutputOrder_v2_8.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_60();
    l0 = self.box_NarrativeFade_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1726504660", "1726504660", "MIS_160_DEBRIEF", "box_OutputOrder_v2_61.Out", "box_NarrativeFade_60.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_64();
    l0 = self.box_PostFx_v3_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|165714161", "165714161", "MIS_160_DEBRIEF", "box_OutputOrder_v2_61.Out", "box_PostFx_v3_64.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_GetTimeOfDay_v2_40_Out()
    local params, l0;
    self:OnExit_box_GetTimeOfDay_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_43();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|89495327", "89495327", "MIS_160_DEBRIEF", "box_GetTimeOfDay_v2_40.Out", "box_Compare_Integers_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_12_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_12_Out();
    params = self:OnEnter_box_PlaySequence_v8_21();
    l0 = self.box_StartMetaSequence_12;
    l1 = self.box_PlaySequence_v8_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1367908219", "1367908219", "MIS_160_DEBRIEF", "box_StartMetaSequence_12.Out", "box_PlaySequence_v8_21.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_45();
    l0 = self.box_MultipleOR_49;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1254716603", "1254716603", "MIS_160_DEBRIEF", "box_MultipleOR_49.Out", "box_Simple_Node_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_83_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_19();
    l0 = self.box_Delay_v5_83;
    l1 = self.box_TeleportPawns_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1226355500", "1226355500", "MIS_160_DEBRIEF", "box_Delay_v5_83.TimeElapsed", "box_TeleportPawns_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_71_Enabled()
    self:OnExit_box_ProximityTrigger_v3_71_Enabled();
end;

function export:f_box_ProximityTrigger_v3_71_Enter()
    self:OnExit_box_ProximityTrigger_v3_71_Enter();
end;

function export:f_box_ProximityTrigger_v3_71_Leave()
    self:OnExit_box_ProximityTrigger_v3_71_Leave();
end;

function export:f_box_ProximityTrigger_v3_71_OnEmpty()
    self:OnExit_box_ProximityTrigger_v3_71_OnEmpty();
end;

function export:f_box_ProximityTrigger_v3_71_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_71_OnOccupied();
    params = self:OnEnter_box_RemoveEntity_v2_73();
    l0 = self.box_ProximityTrigger_v3_71;
    l1 = self.box_RemoveEntity_v2_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|902470367", "902470367", "MIS_160_DEBRIEF", "box_ProximityTrigger_v3_71.OnOccupied", "box_RemoveEntity_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_71_Use()
    self:OnExit_box_ProximityTrigger_v3_71_Use();
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_MultipleOR_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1163021319", "1163021319", "MIS_160_DEBRIEF", "box_MultipleOR_13.Out", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerExtinguishFire_v2_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExtinguishAllFires_93();
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|636480282", "636480282", "MIS_160_DEBRIEF", "box_PlayerExtinguishFire_v2_92.Out", "box_ExtinguishAllFires_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_16_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_18();
    l0 = self.box_NarrativeSceneSetup_16;
    l1 = self.box_NarrativeFade_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1554063927", "1554063927", "MIS_160_DEBRIEF", "box_NarrativeSceneSetup_16.Holstered", "box_NarrativeFade_18.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_68();
    l0 = self.box_SoundModifier_v2_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1961863219", "1961863219", "MIS_160_DEBRIEF", "box_OutputOrder_v2_65.Out", "box_SoundModifier_v2_68.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1785411071", "1785411071", "MIS_160_DEBRIEF", "box_OutputOrder_v2_65.Out", "box_Delay_v5_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_4();
    l0 = self.box_Music_Quest_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|891030596", "891030596", "MIS_160_DEBRIEF", "box_OutputOrder_v2_24.Out", "box_Music_Quest_v2_4.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1889558034", "1889558034", "MIS_160_DEBRIEF", "box_OutputOrder_v2_24.Out", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TeleportPawns_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_82();
    l0 = self.box_TeleportPawns_19;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1640797840", "1640797840", "MIS_160_DEBRIEF", "box_TeleportPawns_19.Out", "box_MissionBlockLayer_82.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BinkPlayerListener_v3_34_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_BinkPlayerListener_v3_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1035987829", "1035987829", "MIS_160_DEBRIEF", "box_BinkPlayerListener_v3_34.Disabled", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BinkPlayerListener_v3_34_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_30();
    l0 = self.box_BinkPlayerListener_v3_34;
    l1 = self.box_BinkPlayer_v6_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|289147066", "289147066", "MIS_160_DEBRIEF", "box_BinkPlayerListener_v3_34.Enabled", "box_BinkPlayer_v6_30.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_BinkPlayerListener_v3_34_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_BinkPlayerListener_v3_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|611062704", "611062704", "MIS_160_DEBRIEF", "box_BinkPlayerListener_v3_34.End", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BinkPlayerListener_v3_34_Start()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_BinkPlayerListener_v3_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|849994059", "849994059", "MIS_160_DEBRIEF", "box_BinkPlayerListener_v3_34.Start", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_86();
    l0 = self.box_RemoveEntity_v2_35;
    l1 = self.box_RemoveEntity_v2_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|379253033", "379253033", "MIS_160_DEBRIEF", "box_RemoveEntity_v2_35.Out", "box_RemoveEntity_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_NarrativeFade_18_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_NarrativeFade_18;
    l1 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|617823695", "617823695", "MIS_160_DEBRIEF", "box_NarrativeFade_18.FadedOut", "box_Delay_v5_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_67_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_66();
    l0 = self.box_Delay_v5_67;
    l1 = self.box_PostFx_v3_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|91643589", "91643589", "MIS_160_DEBRIEF", "box_Delay_v5_67.Started", "box_PostFx_v3_66.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_67_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_69();
    l0 = self.box_Delay_v5_67;
    l1 = self.box_NarrativeFade_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1923590064", "1923590064", "MIS_160_DEBRIEF", "box_Delay_v5_67.TimeElapsed", "box_NarrativeFade_69.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayerListener_v3_34();
    l0 = self.box_BinkPlayerListener_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1869589147", "1869589147", "MIS_160_DEBRIEF", "box_OutputOrder_v2_29.Out", "box_BinkPlayerListener_v3_34.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_DisplayCinematicSkipPrompt_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1654289887", "1654289887", "MIS_160_DEBRIEF", "box_OutputOrder_v2_29.Out", "box_DisplayCinematicSkipPrompt_28.HidePrompt", clone:GetLuaBox(), l0:GetLuaBox());
    -- HidePrompt
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_29_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_81();
    l0 = self.box_Music_Quest_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1043174320", "1043174320", "MIS_160_DEBRIEF", "box_OutputOrder_v2_29.Out", "box_Music_Quest_v2_81.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_72_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_72;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|628406616", "628406616", "MIS_160_DEBRIEF", "box_Delay_v5_72.TimeElapsed", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ExtinguishAllFires_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    local clone = l0;
    params = self:OnEnter_box_CancelAllExplosions_91();
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|2019986516", "2019986516", "MIS_160_DEBRIEF", "box_ExtinguishAllFires_93.Out", "box_CancelAllExplosions_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v5_14_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = self.box_StopMetaSequence_v5_14;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|587772551", "587772551", "MIS_160_DEBRIEF", "box_StopMetaSequence_v5_14.Stopped", "box_Simple_Node_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|437709696", "437709696", "MIS_160_DEBRIEF", "box_OutputOrder_v2_3.Out", "box_Print_v2_1.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|942360649", "942360649", "MIS_160_DEBRIEF", "box_OutputOrder_v2_3.Out", "box_ActivityEnd_9.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_17();
    l0 = self.box_Delay_v5_15;
    l1 = self.box_Gate_v3_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1473032112", "1473032112", "MIS_160_DEBRIEF", "box_Delay_v5_15.TimeElapsed", "box_Gate_v3_17.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_DisplayActBreakUI_39_CompletelyShowed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_DisplayActBreakUI_39;
    l1 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|58916902", "58916902", "MIS_160_DEBRIEF", "box_DisplayActBreakUI_39.CompletelyShowed", "box_Delay_v5_67.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayActBreakUI_39_Hidden()
    local params, l0, l1;
    params = self:OnEnter_box_GetDemoType_87();
    l0 = self.box_DisplayActBreakUI_39;
    l1 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1739347660", "1739347660", "MIS_160_DEBRIEF", "box_DisplayActBreakUI_39.Hidden", "box_GetDemoType_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayActBreakUI_38_CompletelyShowed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_62();
    l0 = self.box_DisplayActBreakUI_38;
    l1 = self.box_Delay_v5_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1603869544", "1603869544", "MIS_160_DEBRIEF", "box_DisplayActBreakUI_38.CompletelyShowed", "box_Delay_v5_62.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayActBreakUI_38_Hidden()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayerListener_v3_34();
    l0 = self.box_DisplayActBreakUI_38;
    l1 = self.box_BinkPlayerListener_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1298353862", "1298353862", "MIS_160_DEBRIEF", "box_DisplayActBreakUI_38.Hidden", "box_BinkPlayerListener_v3_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_DisplayActBreakUI_38_Showed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_DisplayActBreakUI_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1503633533", "1503633533", "MIS_160_DEBRIEF", "box_DisplayActBreakUI_38.Showed", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetDemoType_87_Out()
    local params, l0;
    self:OnExit_box_GetDemoType_87_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1560288766", "1560288766", "MIS_160_DEBRIEF", "box_GetDemoType_87.Out", "box_OutputOrder_v2_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_4();
    l0 = self.box_Music_Quest_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|543645049", "543645049", "MIS_160_DEBRIEF", "box_OutputOrder_v2_26.Out", "box_Music_Quest_v2_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeCS_Cinema_25();
    l0 = self.box_NarrativeCS_Cinema_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1000334864", "1000334864", "MIS_160_DEBRIEF", "box_OutputOrder_v2_26.Out", "box_NarrativeCS_Cinema_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1958814892", "1958814892", "MIS_160_DEBRIEF", "box_OutputOrder_v2_26.Out", "box_Delay_v5_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_72();
    l0 = self.box_RemoveEntity_v2_73;
    l1 = self.box_Delay_v5_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|536842051", "536842051", "MIS_160_DEBRIEF", "box_RemoveEntity_v2_73.Out", "box_Delay_v5_72.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1721614289", "1721614289", "MIS_160_DEBRIEF", "box_MultipleOR_7.Out", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1813554886", "1813554886", "MIS_160_DEBRIEF", "box_OutputOrder_v2_79.Out", "box_Delay_v5_78.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Strings_88_A_contains_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_90();
    l0 = self.box_Delay_v5_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|434686469", "434686469", "MIS_160_DEBRIEF", "box_Compare_Strings_88.A_contains_B", "box_Delay_v5_90.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Strings_88_A_ncontains_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_83();
    l0 = self.box_Delay_v5_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|114842915", "114842915", "MIS_160_DEBRIEF", "box_Compare_Strings_88.A_ncontains_B", "box_Delay_v5_83.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:OnEnter_box_Simple_Node_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|@beat_end");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_63()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "fadetowhitefast",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_36()
    local params;
    params = {
        -- Group,
        [0] = "#0BE781B3",
    };
    return params;
end;

function export:OnEnter_box_CancelAllExplosions_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CancelAllExplosions_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|41664844");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CancelAllExplosions_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|55519728");
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
                [0] = self.f_box_OutputOrder_v2_95_Out_0,
                [1] = self.f_box_OutputOrder_v2_95_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|73745628");
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

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7.6,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|106848953");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|158422313");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = self._sld_type_box_GetDemoType_87,
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_17()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_62()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|209047478");
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

function export:OnEnter_box_Simple_Node_45()
    local params, l0;
    DrawTextToScreen("Comment: Day", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Day");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|263999082");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeCS_Cinema_25()
    local params;
    params = {
        -- CS_Cinema_Animals,
        [0] = "2109098286961932344",
        -- CS_Cinema_NPCs,
        [1] = "2109098287819667514",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_64()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_50()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|335988631");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_46_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_46_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_46_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Hour_box_GetTimeOfDay_v2_40,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_42()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|481964948");
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

function export:OnEnter_box_ChangeSunOrientation_v4_56()
    local params;
    params = {
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|527352893");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_43_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_43_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Hour_box_GetTimeOfDay_v2_40,
        -- B,
        [1] = 19,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_4()
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
        [6] = "3791081821",
        -- StopEvent,
        [7] = "2455311545",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_80()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "992768399",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_30()
    local params;
    params = {
        -- BinkAudio,
        [0] = "3636247035",
        -- BinkAudioType,
        [1] = 12,
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\cin_m160_flashback_ryefamily_wip05.bik]],
        -- BinkSound,
        [3] = "1285401383",
        -- BinkSoundFade,
        [6] = 6,
        -- BinkSoundType,
        [7] = 12,
        -- BinkVolumePercent,
        [8] = 1,
        -- Loop,
        [9] = false,
        -- MaterialName,
        [10] = "Black",
        -- ScreenEntity,
        [11] = self.eLocalPlayer,
        -- TCR_Music,
        [12] = false,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|608339675");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_82_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160321126027130",
        -- missionLayerId,
        [1] = "36167520380768124",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|650178953");
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

function export:OnEnter_box_RemoveEntity_v2_86()
    local params;
    params = {
        -- Group,
        [0] = "#ED8B4EC0",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|836390658");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|849180845");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_47_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_47_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Minute_box_GetTimeOfDay_v2_40,
        -- B,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|856150868");
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

function export:OnEnter_box_Simple_Node_44()
    local params, l0;
    DrawTextToScreen("Comment: Night", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Night");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|872543379");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|880530831");
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

function export:OnEnter_box_ActivityEnd_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|887938956");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_21()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2107935997370063932",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_m160_victoryhomebase/cin_m160_victoryhomebase.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_85()
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

function export:OnEnter_box_Delay_v5_90()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_69()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1000962646");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
                [2] = self.f_box_OutputOrder_v2_37_Out_2,
                [3] = self.f_box_OutputOrder_v2_37_Out_3,
                [4] = self.f_box_OutputOrder_v2_37_Out_4,
            },
            count = 5,
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
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1034942998");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 0,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1050764670");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1051083989");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetTimeOfDay_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetTimeOfDay_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1079387414");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetTimeOfDay_v2_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_60()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_QuitToMainMenu_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/QuitToMainMenu.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_QuitToMainMenu_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1100827464");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_81()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 32,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3791081821",
        -- StopEvent,
        [7] = "2455311545",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_58()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_83()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109788701069423874",
    };
    return params;
end;

function export:OnEnter_box_PlayerExtinguishFire_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerExtinguishFire_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1151857783");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_PlayerExtinguishFire_v2_92_Out,
    });
    params = {
        -- pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1155777814");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 0,
        -- Minute,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_16()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1230311895");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1242402487");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_19()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109858699106342728",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_BinkPlayerListener_v3_34()
    local params;
    params = {
        -- BinkPathIDFilter,
        [0] = [[ui\singleplayer\video\cin_m160_flashback_ryefamily_wip05.bik]],
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_35()
    local params;
    params = {
        -- Group,
        [0] = "#9E452510",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_18()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_11()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_68()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1927281476",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_52()
    local params;
    params = {
        -- Azimuth,
        [0] = 210,
        -- Elevation,
        [1] = 35,
        -- HDRMultiplier,
        [2] = 1,
        -- Phase,
        [3] = -2,
        -- ResetAfterBeat,
        [4] = true,
        -- Size,
        [5] = 1,
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

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1435358137");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
                [2] = self.f_box_OutputOrder_v2_29_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_72()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1458976450");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ExtinguishAllFires_93_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_54()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 237,
        -- ElevationDegree,
        [1] = 25,
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_14()
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1586868415");
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

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1666412139");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 11,
        -- Minute,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_DisplayActBreakUI_39()
    local params;
    params = {
        -- Act,
        [0] = 3,
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_57()
    local params;
    params = {
        -- Azimuth,
        [0] = -80,
        -- Elevation,
        [1] = 20,
        -- HDRMultiplier,
        [2] = 1,
        -- Phase,
        [3] = -2,
        -- ResetAfterBeat,
        [4] = true,
        -- Size,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1726113165");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_66()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "fadetowhitefast",
    };
    return params;
end;

function export:OnEnter_box_DisplayActBreakUI_38()
    local params;
    params = {
        -- Act,
        [0] = 11,
    };
    return params;
end;

function export:OnEnter_box_GetDemoType_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDemoType_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1910202504");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDemoType_87_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1920600768");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|1962147316");
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
        [8] = "MIS_160_DEBRIEF Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_73()
    local params, l0;
    l0 = self.box_ProximityTrigger_v3_71;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|2073423621");
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
        [8] = "MIS_160_DEBRIEF Ended",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|2090221632");
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
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\mis_160_debrief.domino|@MIS_160_DEBRIEF|2095693978");
    l0:SetConnections({
        -- A_contains_B,
        [0] = self.f_box_Compare_Strings_88_A_contains_B,
        -- A_ncontains_B,
        [2] = self.f_box_Compare_Strings_88_A_ncontains_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_87,
        -- B,
        [1] = "JanuaryDemo",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetTimeOfDay_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    self._sld_Hour_box_GetTimeOfDay_v2_40 = l0:GetDataOutValue(0);
    self._sld_Hour_box_GetTimeOfDay_v2_40 = l0:GetDataOutValue(0);
    self._sld_Minute_box_GetTimeOfDay_v2_40 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_StartMetaSequence_12_Out()
    local l0;
    l0 = self.box_StartMetaSequence_12;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_71_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_71;
    l1 = self.box_RemoveEntity_v2_73;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_71_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_71;
    l1 = self.box_RemoveEntity_v2_73;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_71_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_71;
    l1 = self.box_RemoveEntity_v2_73;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_71_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_71;
    l1 = self.box_RemoveEntity_v2_73;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_71_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_71;
    l1 = self.box_RemoveEntity_v2_73;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_71_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_71;
    l1 = self.box_RemoveEntity_v2_73;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDemoType_87_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    self._sld_type_box_GetDemoType_87 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_87 = l0:GetDataOutValue(0);
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
