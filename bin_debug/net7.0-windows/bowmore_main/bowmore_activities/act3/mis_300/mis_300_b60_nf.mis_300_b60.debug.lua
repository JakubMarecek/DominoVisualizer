LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_300/mis_300_b60_nf.domino
-- User graph: MIS_300_B60
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayer_v6.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayerListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DisplayCinematicPrompt.lua");
        cboxRes:RegisterBox("Domino/System/DisplayCinematicSkipPrompt.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MoonModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayActBreakUI.lua");
        cboxRes:RegisterBox("Domino/System/UI/SetLoadingVideo.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[ui\singleplayer\video\cin_m300_flashback_twins.bik]], "CBinkResource");
        cboxRes:LoadResource([[2042182736.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1046779607.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3202019046.bnk]], "CSoundResource");
        cboxRes:LoadResource([[54859756.bnk]], "CSoundResource");
        cboxRes:LoadResource([[389070781.bnk]], "CSoundResource");
        cboxRes:LoadResource([[652479070.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2611405624.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B60_nf.MIS_300_B60.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/DisplayCinematicPrompt.lua")] = {
        stateless = true,
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
            [0] = {
                name = "textId1",
                type = "oasis",
            },
            [1] = {
                name = "textId2",
                type = "oasis",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Player/InputListener_v3.lua")] = {
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
                name = "SignalReceived",
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
                name = "player",
                type = "entity",
            },
            [2] = {
                name = "signal",
                type = "string",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "numAxis",
                type = "int",
            },
            [1] = {
                name = "xAxis",
                type = "float",
            },
            [2] = {
                name = "yAxis",
                type = "float",
            },
            [3] = {
                name = "zAxis",
                type = "float",
            },
        },
        dataOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/UI/SetLoadingVideo.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetVideo",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "videoId",
                type = "int",
            },
        },
        dataInCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_300_B60";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60";
    self.ePlayer = nil;
    self.gPlayerGroup = nil;
    self.player = nil;
    self.MetaSequenceID = 0;
    self.MetaSequence2 = 0;
    self.DidPlayerInteract = false;
    self.GetVehiclesList = {
    };
    self.box_StopMetaSequence_v5_164 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|25940681");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_164_Stopped,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|36944863");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_VisibilityModifier_45 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|41176982");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_45_Disabled,
    });
    self.box_MultipleOR_73 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|71788871");
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
        [0] = self.f_box_MultipleOR_73_Out,
    });
    self.box_VisibilityModifier_219 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|114735793");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_139 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|145062273");
    l0:SetConnections({
    });
    self.box_NarrativeCS_Cinema_167 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeCS_Cinema.debug.lua");
    l0 = self.box_NarrativeCS_Cinema_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeCS_Cinema_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|176695422");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_123 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|241686225");
    l0:SetConnections({
    });
    self.box_NarrativeFade_70 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|264322205");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_70_FadedIn,
    });
    self.box_RemoveEntity_v2_138 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|276681731");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_189 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|278521605");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_137 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|285478905");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_37 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|308776972");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_37_Holstered,
    });
    self.box_VisibilityModifier_134 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|310566745");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_8 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|399335917");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_8_Enabled,
    });
    self.box_Delay_v5_192 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|429337073");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_192_TimeElapsed,
    });
    self.box_MultipleOR_157 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|439306309");
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
        [0] = self.f_box_MultipleOR_157_Out,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|462636021");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_MultipleOR_159 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|489802793");
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
        [0] = self.f_box_MultipleOR_159_Out,
    });
    self.box_MoonModifier_82 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|496436787");
    l0:SetConnections({
    });
    self.box_MultipleOR_214 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|507394497");
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
        [0] = self.f_box_MultipleOR_214_Out,
    });
    self.box_BinkPlayer_v6_67 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|509862712");
    l0:SetConnections({
    });
    self.box_NarrativeFade_145 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|523498468");
    l0:SetConnections({
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|533616181");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_80 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|590351831");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_194 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|701830916");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_194_Out,
    });
    self.box_PostFx_v3_148 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|705929144");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_125 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|738838398");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_142 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|748403450");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_135 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|770114833");
    l0:SetConnections({
    });
    self.box_StartMetaSequence_163 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|795218604");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_163_Out,
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|800359879");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_43_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_MultipleOR_206 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|827265586");
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
        [0] = self.f_box_MultipleOR_206_Out,
    });
    self.box_VisibilityModifier_21 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|858369302");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_132 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|868352164");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_20 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|885495194");
    l0:SetConnections({
    });
    self.box_BinkPlayerListener_v3_65 = cbox:CreateBox("Domino/System/BinkPlayerListener_v3.lua");
    l0 = self.box_BinkPlayerListener_v3_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayerListener_v3_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|900639514");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_BinkPlayerListener_v3_65_Disabled,
        -- Enabled,
        [1] = self.f_box_BinkPlayerListener_v3_65_Enabled,
        -- End,
        [2] = self.f_box_BinkPlayerListener_v3_65_End,
        -- Start,
        [5] = self.f_box_BinkPlayerListener_v3_65_Start,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_76 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|971908720");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_69 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|985263177");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_69_Stopped,
    });
    self.box_Delay_v5_182 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1023157762");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_182_TimeElapsed,
    });
    self.box_Music_Quest_v2_169 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1038760763");
    l0:SetConnections({
    });
    self.box_MultipleOR_191 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1091898710");
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
        [0] = self.f_box_MultipleOR_191_Out,
    });
    self.box_VisibilityModifier_218 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1120769815");
    l0:SetConnections({
    });
    self.box_StartMetaSequence_68 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1125687358");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_68_Out,
    });
    self.box_VisibilityModifier_29 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1140127192");
    l0:SetConnections({
    });
    self.box_NarrativeFade_160 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1268235254");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_10 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1275546936");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_10_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_10_Reloaded,
    });
    self.box_PostFx_v3_71 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1282670544");
    l0:SetConnections({
    });
    self.box_Delay_v5_152 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1293089580");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_152_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_152_TimeElapsed,
    });
    self.box_Delay_v5_72 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1312059881");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_72_TimeElapsed,
    });
    self.box_RemoveEntity_v2_27 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1356996211");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_27_Out,
    });
    self.box_ProximityTrigger_v3_188 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1358162783");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_188_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_188_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_188_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_188_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_188_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_188_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_188_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_188_Use,
    });
    self.box_VisibilityModifier_121 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1365134134");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_47 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1371739892");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_136 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1377319949");
    l0:SetConnections({
    });
    self.box_Delay_v5_186 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1397164999");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_186_TimeElapsed,
    });
    self.box_PlaySequence_v8_66 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1400371331");
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
        [0] = self.f_box_PlaySequence_v8_66_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_66_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_66_SPOut__FadeIn_,
                },
                [1] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_66_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_66_Started,
    });
    self.box_VisibilityModifier_143 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1481219524");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_185 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1495093157");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_185_Out,
    });
    self.box_VisibilityModifier_126 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1520052760");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_193 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1527035156");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_193_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_193_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_193_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_193_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_193_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_193_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_193_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_193_Use,
    });
    self.box_PostFx_v3_153 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1534927563");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_46 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1535503803");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_46_Disabled,
    });
    self.box_MultipleOR_176 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1552710953");
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
        [0] = self.f_box_MultipleOR_176_Out,
    });
    self.box_DisplayActBreakUI_83 = cbox:CreateBox("Domino/System/UI/DisplayActBreakUI.lua");
    l0 = self.box_DisplayActBreakUI_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayActBreakUI_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1591788403");
    l0:SetConnections({
        -- CompletelyShowed,
        [0] = self.f_box_DisplayActBreakUI_83_CompletelyShowed,
        -- Hidden,
        [1] = self.f_box_DisplayActBreakUI_83_Hidden,
        -- Showed,
        [2] = self.f_box_DisplayActBreakUI_83_Showed,
    });
    self.box_PlaySequence_v8_155 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1612358696");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 1,
        },
        controlOut = {
            [3] = 17,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_155_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_155_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_155_SPOut__FadeIn_,
                },
                [1] = {
                    string = "1stLoop",
                    value = self.f_box_PlaySequence_v8_155_SPOut__1stLoop_,
                },
                [2] = {
                    string = "1stEnd",
                    value = self.f_box_PlaySequence_v8_155_SPOut__1stEnd_,
                },
                [3] = {
                    string = "2ndLoop",
                    value = self.f_box_PlaySequence_v8_155_SPOut__2ndLoop_,
                },
                [4] = {
                    string = "2ndEnd",
                    value = self.f_box_PlaySequence_v8_155_SPOut__2ndEnd_,
                },
                [5] = {
                    string = "3rdLoop",
                    value = self.f_box_PlaySequence_v8_155_SPOut__3rdLoop_,
                },
                [6] = {
                    string = "3rdEnd",
                    value = self.f_box_PlaySequence_v8_155_SPOut__3rdEnd_,
                },
                [7] = {
                    string = "VFX_CIN_M300_Rush_Execution_BloodSplat_Shot_1",
                    value = self.f_box_PlaySequence_v8_155_SPOut__VFX_CIN_M300_Rush_Execution_BloodSplat_Shot_1_,
                },
                [8] = {
                    string = "VFX_CIN_M300_Rush_Execution_BloodSplat_1",
                    value = self.f_box_PlaySequence_v8_155_SPOut__VFX_CIN_M300_Rush_Execution_BloodSplat_1_,
                },
                [9] = {
                    string = "SwitchHelmetA",
                },
                [10] = {
                    string = "VFX_CIN_M300_Rush_Execution_Blood_Punch_Wall_1",
                    value = self.f_box_PlaySequence_v8_155_SPOut__VFX_CIN_M300_Rush_Execution_Blood_Punch_Wall_1_,
                },
                [11] = {
                    string = "VFX_CIN_M300_Rush_Execution_BrokenGlass_1",
                    value = self.f_box_PlaySequence_v8_155_SPOut__VFX_CIN_M300_Rush_Execution_BrokenGlass_1_,
                },
                [12] = {
                    string = "BlackscreenB",
                    value = self.f_box_PlaySequence_v8_155_SPOut__BlackscreenB_,
                },
                [13] = {
                    string = "EndB",
                    value = self.f_box_PlaySequence_v8_155_SPOut__EndB_,
                },
                [14] = {
                    string = "SwitchHelmetB",
                },
                [15] = {
                    string = "Godray_window_OFF",
                    value = self.f_box_PlaySequence_v8_155_SPOut__Godray_window_OFF_,
                },
                [16] = {
                    string = "BlackScreenA",
                    value = self.f_box_PlaySequence_v8_155_SPOut__BlackScreenA_,
                },
            },
            count = 17,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_155_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_155_Stopped,
    });
    self.box_MultipleOR_166 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1613901908");
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
        [0] = self.f_box_MultipleOR_166_Out,
    });
    self.box_MultipleOR_180 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1624097489");
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
        [0] = self.f_box_MultipleOR_180_Out,
    });
    self.box_MultipleOR_161 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1627054639");
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
        [0] = self.f_box_MultipleOR_161_Out,
    });
    self.box_SoundModifier_v2_216 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1660610600");
    l0:SetConnections({
    });
    self.box_Delay_v5_147 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1671373940");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_147_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_147_TimeElapsed,
    });
    self.box_Delay_v5_64 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1683258745");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_64_TimeElapsed,
    });
    self.box_PostFx_v3_149 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1698719682");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_86 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1710181482");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_210 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1733080662");
    l0:SetConnections({
    });
    self.box_NarrativeFade_85 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1770162697");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_85_FadedOut,
    });
    self.box_ActivityInitialized_9 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1801188458");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_9_Out,
    });
    self.box_MultipleOR_187 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1811801373");
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
    self.box_VisibilityModifier_151 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1832531084");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_212 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1849906439");
    l0:SetConnections({
    });
    self.box_DisplayCinematicSkipPrompt_63 = cbox:CreateBox("Domino/System/DisplayCinematicSkipPrompt.lua");
    l0 = self.box_DisplayCinematicSkipPrompt_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicSkipPrompt_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1857345136");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_30 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1880128450");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_30_Out,
    });
    self.box_VisibilityModifier_190 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1899881731");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_141 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1923276179");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_200 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1937111779");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_202 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1937744919");
    l0:SetConnections({
    });
    self.box_InputListener_v3_156 = cbox:CreateBox("Domino/System/Player/InputListener_v3.lua");
    l0 = self.box_InputListener_v3_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputListener_v3_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1955517872");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_InputListener_v3_156_Disabled,
        -- Enabled,
        [1] = self.f_box_InputListener_v3_156_Enabled,
        -- SignalReceived,
        [2] = self.f_box_InputListener_v3_156_SignalReceived,
    });
    self.box_RemoveEntity_v2_183 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1959271760");
    l0:SetConnections({
    });
    self.box_MultipleOR_162 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1979022348");
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
        [0] = self.f_box_MultipleOR_162_Out,
    });
    self.box_NarrativeCS_Cinema_48 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeCS_Cinema.debug.lua");
    l0 = self.box_NarrativeCS_Cinema_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeCS_Cinema_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1994383219");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_209 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2041546319");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_168 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2043310351");
    l0:SetConnections({
    });
    self.box_PostFx_v3_154 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2077318428");
    l0:SetConnections({
    });
    self.box_Delay_v5_146 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2099847098");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_146_TimeElapsed,
    });
    self.box_DisplayActBreakUI_84 = cbox:CreateBox("Domino/System/UI/DisplayActBreakUI.lua");
    l0 = self.box_DisplayActBreakUI_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayActBreakUI_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2103855301");
    l0:SetConnections({
        -- CompletelyShowed,
        [0] = self.f_box_DisplayActBreakUI_84_CompletelyShowed,
        -- Hidden,
        [1] = self.f_box_DisplayActBreakUI_84_Hidden,
    });
    self.box_BaseMissionBlock_v2_217 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2119739248");
    l0:SetConnections({
    });
    self.box_MoonModifier_81 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2120784171");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_204 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2127477794");
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
    });
    self.box_VisibilityModifier_140 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2139146851");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1660524956", "1660524956", "MIS_300_B60", "In", "box_OutputOrder_v2_11.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_StopMetaSequence_v5_164_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_182();
    l0 = self.box_StopMetaSequence_v5_164;
    l1 = self.box_Delay_v5_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|789311141", "789311141", "MIS_300_B60", "box_StopMetaSequence_v5_164.Stopped", "box_Delay_v5_182.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|662348365", "662348365", "MIS_300_B60", "box_MultipleOR_4.Out", "box_ActivityInitialized_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_VisibilityModifier_45_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_46();
    l0 = self.box_VisibilityModifier_45;
    l1 = self.box_VisibilityModifier_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2100058448", "2100058448", "MIS_300_B60", "box_VisibilityModifier_45.Disabled", "box_VisibilityModifier_46.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_213_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1676141889", "1676141889", "MIS_300_B60", "box_OutputOrder_v2_213.Out", "box_MultipleOR_214.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_213_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_70();
    l0 = self.box_NarrativeFade_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|212245731", "212245731", "MIS_300_B60", "box_OutputOrder_v2_213.Out", "box_NarrativeFade_70.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_69();
    l0 = self.box_MultipleOR_73;
    l1 = self.box_StopMetaSequence_v5_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1288068310", "1288068310", "MIS_300_B60", "box_MultipleOR_73.Out", "box_StopMetaSequence_v5_69.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_196_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetLoadingVideo_195();
    l0 = Boxes[GetPathID("Domino/System/UI/SetLoadingVideo.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1643822913", "1643822913", "MIS_300_B60", "box_OutputOrder_v2_196.Out", "box_SetLoadingVideo_195.SetVideo", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetVideo
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_196_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1292451022", "1292451022", "MIS_300_B60", "box_OutputOrder_v2_196.Out", "box_ActivityEnd_1.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_70_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_71();
    l0 = self.box_NarrativeFade_70;
    l1 = self.box_PostFx_v3_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|679917180", "679917180", "MIS_300_B60", "box_NarrativeFade_70.FadedIn", "box_PostFx_v3_71.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UnlockDoor_17_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_30();
    l0 = self.box_RemoveEntity_v2_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|34588400", "34588400", "MIS_300_B60", "box_UnlockDoor_17.Unlocked", "box_RemoveEntity_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_NarrativeSceneSetup_37_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_85();
    l0 = self.box_NarrativeSceneSetup_37;
    l1 = self.box_NarrativeFade_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1149536195", "1149536195", "MIS_300_B60", "box_NarrativeSceneSetup_37.Holstered", "box_NarrativeFade_85.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_203_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_202();
    l0 = self.box_Music_Quest_v2_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1552353726", "1552353726", "MIS_300_B60", "box_OutputOrder_v2_203.Out", "box_Music_Quest_v2_202.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_203_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|123216966", "123216966", "MIS_300_B60", "box_OutputOrder_v2_203.Out", "box_MultipleOR_73.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_203_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|376464406", "376464406", "MIS_300_B60", "box_OutputOrder_v2_203.Out", "box_MultipleOR_214.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PhoneCallExclusivityModifier_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_2();
    l0 = self.box_PhoneCallExclusivityModifier_8;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|282500453", "282500453", "MIS_300_B60", "box_PhoneCallExclusivityModifier_8.Enabled", "box_GetLocalPlayer_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_192_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_192;
    l1 = self.box_MultipleOR_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|51150391", "51150391", "MIS_300_B60", "box_Delay_v5_192.TimeElapsed", "box_MultipleOR_191.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_157_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InputListener_v3_156();
    l0 = self.box_MultipleOR_157;
    l1 = self.box_InputListener_v3_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|542659056", "542659056", "MIS_300_B60", "box_MultipleOR_157.Out", "box_InputListener_v3_156.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_181_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|187556928", "187556928", "MIS_300_B60", "box_OutputOrder_v2_181.Out", "box_MultipleOR_206.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_181_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_164();
    l0 = self.box_StopMetaSequence_v5_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|58575230", "58575230", "MIS_300_B60", "box_OutputOrder_v2_181.Out", "box_StopMetaSequence_v5_164.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_181_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|939096676", "939096676", "MIS_300_B60", "box_OutputOrder_v2_181.Out", "box_MultipleOR_176.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_181_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_217();
    l0 = self.box_BaseMissionBlock_v2_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|385514674", "385514674", "MIS_300_B60", "box_OutputOrder_v2_181.Out", "box_BaseMissionBlock_v2_217.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_35;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|271754132", "271754132", "MIS_300_B60", "box_Delay_v5_35.TimeElapsed", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_159_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InputListener_v3_156();
    l0 = self.box_MultipleOR_159;
    l1 = self.box_InputListener_v3_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1853082296", "1853082296", "MIS_300_B60", "box_MultipleOR_159.Out", "box_InputListener_v3_156.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_214_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_215();
    l0 = self.box_MultipleOR_214;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1608644394", "1608644394", "MIS_300_B60", "box_MultipleOR_214.Out", "box_SoundMixing_215.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_12_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_33();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1278665635", "1278665635", "MIS_300_B60", "box_GetPlayerGroup_v2_12.Out", "box_SetBoolean_v2_33.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_170_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_168();
    l0 = self.box_Music_Quest_v2_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1717354124", "1717354124", "MIS_300_B60", "box_OutputOrder_v2_170.Out", "box_Music_Quest_v2_168.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_170_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeCS_Cinema_167();
    l0 = self.box_NarrativeCS_Cinema_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|608992264", "608992264", "MIS_300_B60", "box_OutputOrder_v2_170.Out", "box_NarrativeCS_Cinema_167.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayActBreakUI_84();
    l0 = self.box_Delay_v5_28;
    l1 = self.box_DisplayActBreakUI_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|204688438", "204688438", "MIS_300_B60", "box_Delay_v5_28.TimeElapsed", "box_DisplayActBreakUI_84.Show", l0:GetLuaBox(), l1:GetLuaBox());
    -- Show
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_194_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_192();
    l0 = self.box_RemoveEntity_v2_194;
    l1 = self.box_Delay_v5_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|910060684", "910060684", "MIS_300_B60", "box_RemoveEntity_v2_194.Out", "box_Delay_v5_192.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_124_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1893186470", "1893186470", "MIS_300_B60", "box_OutputOrder_v2_124.Out", "box_StartMetaSequence_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_124_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_143();
    l0 = self.box_VisibilityModifier_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|299081256", "299081256", "MIS_300_B60", "box_OutputOrder_v2_124.Out", "box_VisibilityModifier_143.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_124_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_183();
    l0 = self.box_RemoveEntity_v2_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2074495234", "2074495234", "MIS_300_B60", "box_OutputOrder_v2_124.Out", "box_RemoveEntity_v2_183.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_124_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_184();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1801689072", "1801689072", "MIS_300_B60", "box_OutputOrder_v2_124.Out", "box_MissionBlockLayer_184.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_124_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_125();
    l0 = self.box_VisibilityModifier_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1080656059", "1080656059", "MIS_300_B60", "box_OutputOrder_v2_124.Out", "box_VisibilityModifier_125.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_124_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_126();
    l0 = self.box_VisibilityModifier_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|347817840", "347817840", "MIS_300_B60", "box_OutputOrder_v2_124.Out", "box_VisibilityModifier_126.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_124_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_20();
    l0 = self.box_RemoveEntity_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|683525762", "683525762", "MIS_300_B60", "box_OutputOrder_v2_124.Out", "box_RemoveEntity_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_124_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_138();
    l0 = self.box_RemoveEntity_v2_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|84890314", "84890314", "MIS_300_B60", "box_OutputOrder_v2_124.Out", "box_RemoveEntity_v2_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_124_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_189();
    l0 = self.box_VisibilityModifier_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|30675176", "30675176", "MIS_300_B60", "box_OutputOrder_v2_124.Out", "box_VisibilityModifier_189.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_150_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_145();
    l0 = self.box_NarrativeFade_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1181504396", "1181504396", "MIS_300_B60", "box_OutputOrder_v2_150.Out", "box_NarrativeFade_145.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_150_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_149();
    l0 = self.box_PostFx_v3_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|769209153", "769209153", "MIS_300_B60", "box_OutputOrder_v2_150.Out", "box_PostFx_v3_149.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_StartMetaSequence_163_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_163_Out();
    params = self:OnEnter_box_PlaySequence_v8_155();
    l0 = self.box_StartMetaSequence_163;
    l1 = self.box_PlaySequence_v8_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|346404112", "346404112", "MIS_300_B60", "box_StartMetaSequence_163.Out", "box_PlaySequence_v8_155.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_43_Started()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_217();
    l0 = self.box_Delay_v5_43;
    l1 = self.box_BaseMissionBlock_v2_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|981238936", "981238936", "MIS_300_B60", "box_Delay_v5_43.Started", "box_BaseMissionBlock_v2_217.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = self.box_Delay_v5_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|107931580", "107931580", "MIS_300_B60", "box_Delay_v5_43.TimeElapsed", "box_OutputOrder_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_206_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_208();
    l0 = self.box_MultipleOR_206;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|818154215", "818154215", "MIS_300_B60", "box_MultipleOR_206.Out", "box_SoundMixing_208.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_211_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_212();
    l0 = self.box_SoundModifier_v2_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|318512786", "318512786", "MIS_300_B60", "box_OutputOrder_v2_211.Out", "box_SoundModifier_v2_212.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_211_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_70();
    l0 = self.box_NarrativeFade_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1622709932", "1622709932", "MIS_300_B60", "box_OutputOrder_v2_211.Out", "box_NarrativeFade_70.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_BinkPlayerListener_v3_65_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_BinkPlayerListener_v3_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1733082522", "1733082522", "MIS_300_B60", "box_BinkPlayerListener_v3_65.Disabled", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BinkPlayerListener_v3_65_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_67();
    l0 = self.box_BinkPlayerListener_v3_65;
    l1 = self.box_BinkPlayer_v6_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|552983215", "552983215", "MIS_300_B60", "box_BinkPlayerListener_v3_65.Enabled", "box_BinkPlayer_v6_67.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_BinkPlayerListener_v3_65_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_BinkPlayerListener_v3_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|568008349", "568008349", "MIS_300_B60", "box_BinkPlayerListener_v3_65.End", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BinkPlayerListener_v3_65_Start()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_201();
    l0 = self.box_BinkPlayerListener_v3_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1994813360", "1994813360", "MIS_300_B60", "box_BinkPlayerListener_v3_65.Start", "box_OutputOrder_v2_201.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1346245053", "1346245053", "MIS_300_B60", "box_OutputOrder_v2_78.Out", "box_StartMetaSequence_163.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_76();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|443887889", "443887889", "MIS_300_B60", "box_OutputOrder_v2_78.Out", "box_CHEAT_SetEnvironmentTimeScale_76.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_78_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_75();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|239564041", "239564041", "MIS_300_B60", "box_OutputOrder_v2_78.Out", "box_SetTimeOfDay_75.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_77();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|933100384", "933100384", "MIS_300_B60", "box_OutputOrder_v2_78.Out", "box_OverrideEnvironment_v3_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_81();
    l0 = self.box_MoonModifier_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1856352719", "1856352719", "MIS_300_B60", "box_OutputOrder_v2_78.Out", "box_MoonModifier_81.SetMoonDirection", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonDirection
    l0:Exec(4, params);
end;

function export:f_box_OutputOrder_v2_78_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_121();
    l0 = self.box_VisibilityModifier_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1510532742", "1510532742", "MIS_300_B60", "box_OutputOrder_v2_78.Out", "box_VisibilityModifier_121.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_78_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|160019708", "160019708", "MIS_300_B60", "box_OutputOrder_v2_78.Out", "box_OutputOrder_v2_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_7()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1624529619", "1624529619", "MIS_300_B60", "box_OutputOrder_v2_78.Out", "box_MultipleOR_187.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_78_Out_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1304266952", "1304266952", "MIS_300_B60", "box_OutputOrder_v2_78.Out", "box_MultipleOR_191.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_205_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_202();
    l0 = self.box_Music_Quest_v2_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|772678653", "772678653", "MIS_300_B60", "box_OutputOrder_v2_205.Out", "box_Music_Quest_v2_202.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_205_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_204();
    l0 = self.box_PlaySequence_v8_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1979231783", "1979231783", "MIS_300_B60", "box_OutputOrder_v2_205.Out", "box_PlaySequence_v8_204.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v5_69_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_StopMetaSequence_v5_69;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|435580704", "435580704", "MIS_300_B60", "box_StopMetaSequence_v5_69.Stopped", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_182_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayActBreakUI_83();
    l0 = self.box_Delay_v5_182;
    l1 = self.box_DisplayActBreakUI_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|309293778", "309293778", "MIS_300_B60", "box_Delay_v5_182.TimeElapsed", "box_DisplayActBreakUI_83.Show", l0:GetLuaBox(), l1:GetLuaBox());
    -- Show
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_178_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_171();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1116667026", "1116667026", "MIS_300_B60", "box_OutputOrder_v2_178.Out", "box_ParticleSystem_v3_171.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_178_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2026125506", "2026125506", "MIS_300_B60", "box_OutputOrder_v2_178.Out", "box_MultipleOR_180.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_165_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_169();
    l0 = self.box_Music_Quest_v2_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1604421391", "1604421391", "MIS_300_B60", "box_OutputOrder_v2_165.Out", "box_Music_Quest_v2_169.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_165_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_155();
    l0 = self.box_PlaySequence_v8_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|133889064", "133889064", "MIS_300_B60", "box_OutputOrder_v2_165.Out", "box_PlaySequence_v8_155.SPIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- SPIn
    l0:ExecDynString(4, params, "ConditionAStart");
end;

function export:f_box_OutputOrder_v2_165_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1766236909", "1766236909", "MIS_300_B60", "box_OutputOrder_v2_165.Out", "box_MultipleOR_166.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_191_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_193();
    l0 = self.box_MultipleOR_191;
    l1 = self.box_ProximityTrigger_v3_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|744852953", "744852953", "MIS_300_B60", "box_MultipleOR_191.Out", "box_ProximityTrigger_v3_193.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StartMetaSequence_68_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_68_Out();
    params = self:OnEnter_box_PlaySequence_v8_66();
    l0 = self.box_StartMetaSequence_68;
    l1 = self.box_PlaySequence_v8_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1099657318", "1099657318", "MIS_300_B60", "box_StartMetaSequence_68.Out", "box_PlaySequence_v8_66.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayerListener_v3_65();
    l0 = self.box_BinkPlayerListener_v3_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1205411517", "1205411517", "MIS_300_B60", "box_OutputOrder_v2_62.Out", "box_BinkPlayerListener_v3_65.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_DisplayCinematicSkipPrompt_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|864580495", "864580495", "MIS_300_B60", "box_OutputOrder_v2_62.Out", "box_DisplayCinematicSkipPrompt_63.HidePrompt", clone:GetLuaBox(), l0:GetLuaBox());
    -- HidePrompt
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2099275441", "2099275441", "MIS_300_B60", "box_OutputOrder_v2_11.Out", "box_ActivityAcknowledgeGate_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|178842967", "178842967", "MIS_300_B60", "box_OutputOrder_v2_11.Out", "box_Print_v2_3.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_72();
    l0 = self.box_Delay_v5_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1068565002", "1068565002", "MIS_300_B60", "box_OutputOrder_v2_7.Out", "box_Delay_v5_72.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_79();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|281021199", "281021199", "MIS_300_B60", "box_OutputOrder_v2_7.Out", "box_OverrideEnvironment_v3_79.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_80();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|54111343", "54111343", "MIS_300_B60", "box_OutputOrder_v2_7.Out", "box_CHEAT_SetEnvironmentTimeScale_80.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_82();
    l0 = self.box_MoonModifier_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|587896889", "587896889", "MIS_300_B60", "box_OutputOrder_v2_7.Out", "box_MoonModifier_82.ResetMoonDirection", clone:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonDirection
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_216();
    l0 = self.box_SoundModifier_v2_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1206336124", "1206336124", "MIS_300_B60", "box_OutputOrder_v2_36.Out", "box_SoundModifier_v2_216.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1637102757", "1637102757", "MIS_300_B60", "box_OutputOrder_v2_36.Out", "box_OutputOrder_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_10_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_10;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|228780553", "228780553", "MIS_300_B60", "box_ActivityAcknowledgeGate_10.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_10_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_37();
    l0 = self.box_ActivityAcknowledgeGate_10;
    l1 = self.box_NarrativeSceneSetup_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|863881519", "863881519", "MIS_300_B60", "box_ActivityAcknowledgeGate_10.Reloaded", "box_NarrativeSceneSetup_37.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_152_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_153();
    l0 = self.box_Delay_v5_152;
    l1 = self.box_PostFx_v3_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1197673431", "1197673431", "MIS_300_B60", "box_Delay_v5_152.Started", "box_PostFx_v3_153.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_152_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_154();
    l0 = self.box_Delay_v5_152;
    l1 = self.box_PostFx_v3_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|36231366", "36231366", "MIS_300_B60", "box_Delay_v5_152.TimeElapsed", "box_PostFx_v3_154.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_72_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_124();
    l0 = self.box_Delay_v5_72;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1605187157", "1605187157", "MIS_300_B60", "box_Delay_v5_72.TimeElapsed", "box_OutputOrder_v2_124.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_207_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1127900835", "1127900835", "MIS_300_B60", "box_OutputOrder_v2_207.Out", "box_MultipleOR_206.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_207_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_160();
    l0 = self.box_NarrativeFade_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1408749197", "1408749197", "MIS_300_B60", "box_OutputOrder_v2_207.Out", "box_NarrativeFade_160.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UnlockDoor_17();
    l0 = self.box_RemoveEntity_v2_27;
    l1 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|903499250", "903499250", "MIS_300_B60", "box_RemoveEntity_v2_27.Out", "box_UnlockDoor_17.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_188_Enabled()
    self:OnExit_box_ProximityTrigger_v3_188_Enabled();
end;

function export:f_box_ProximityTrigger_v3_188_Enter()
    self:OnExit_box_ProximityTrigger_v3_188_Enter();
end;

function export:f_box_ProximityTrigger_v3_188_Leave()
    self:OnExit_box_ProximityTrigger_v3_188_Leave();
end;

function export:f_box_ProximityTrigger_v3_188_OnEmpty()
    self:OnExit_box_ProximityTrigger_v3_188_OnEmpty();
end;

function export:f_box_ProximityTrigger_v3_188_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_188_OnOccupied();
    params = self:OnEnter_box_RemoveEntity_v2_185();
    l0 = self.box_ProximityTrigger_v3_188;
    l1 = self.box_RemoveEntity_v2_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|726869492", "726869492", "MIS_300_B60", "box_ProximityTrigger_v3_188.OnOccupied", "box_RemoveEntity_v2_185.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_188_Use()
    self:OnExit_box_ProximityTrigger_v3_188_Use();
end;

function export:f_box_Delay_v5_186_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_186;
    l1 = self.box_MultipleOR_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|328161954", "328161954", "MIS_300_B60", "box_Delay_v5_186.TimeElapsed", "box_MultipleOR_187.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_66_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_66;
    l1 = self.box_MultipleOR_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1612844727", "1612844727", "MIS_300_B60", "box_PlaySequence_v8_66.Finished", "box_MultipleOR_73.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_66_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_203();
    l0 = self.box_PlaySequence_v8_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|766413811", "766413811", "MIS_300_B60", "box_PlaySequence_v8_66.Skipped", "box_OutputOrder_v2_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_66_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_211();
    l0 = self.box_PlaySequence_v8_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1980836530", "1980836530", "MIS_300_B60", "box_PlaySequence_v8_66.SPOut", "box_OutputOrder_v2_211.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_66_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_213();
    l0 = self.box_PlaySequence_v8_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2141858848", "2141858848", "MIS_300_B60", "box_PlaySequence_v8_66.SPOut", "box_OutputOrder_v2_213.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_66_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_205();
    l0 = self.box_PlaySequence_v8_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1699914645", "1699914645", "MIS_300_B60", "box_PlaySequence_v8_66.Started", "box_OutputOrder_v2_205.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_12();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|824002019", "824002019", "MIS_300_B60", "box_GetLocalPlayer_v2_2.Out", "box_GetPlayerGroup_v2_12.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_185_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_186();
    l0 = self.box_RemoveEntity_v2_185;
    l1 = self.box_Delay_v5_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1607944596", "1607944596", "MIS_300_B60", "box_RemoveEntity_v2_185.Out", "box_Delay_v5_186.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_193_Enabled()
    self:OnExit_box_ProximityTrigger_v3_193_Enabled();
end;

function export:f_box_ProximityTrigger_v3_193_Enter()
    self:OnExit_box_ProximityTrigger_v3_193_Enter();
end;

function export:f_box_ProximityTrigger_v3_193_Leave()
    self:OnExit_box_ProximityTrigger_v3_193_Leave();
end;

function export:f_box_ProximityTrigger_v3_193_OnEmpty()
    self:OnExit_box_ProximityTrigger_v3_193_OnEmpty();
end;

function export:f_box_ProximityTrigger_v3_193_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_193_OnOccupied();
    params = self:OnEnter_box_RemoveEntity_v2_194();
    l0 = self.box_ProximityTrigger_v3_193;
    l1 = self.box_RemoveEntity_v2_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|118935965", "118935965", "MIS_300_B60", "box_ProximityTrigger_v3_193.OnOccupied", "box_RemoveEntity_v2_194.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_193_Use()
    self:OnExit_box_ProximityTrigger_v3_193_Use();
end;

function export:f_box_VisibilityModifier_46_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_47();
    l0 = self.box_VisibilityModifier_46;
    l1 = self.box_VisibilityModifier_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|866098180", "866098180", "MIS_300_B60", "box_VisibilityModifier_46.Disabled", "box_VisibilityModifier_47.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_176_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_179();
    l0 = self.box_MultipleOR_176;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1067721221", "1067721221", "MIS_300_B60", "box_MultipleOR_176.Out", "box_OutputOrder_v2_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayActBreakUI_83_CompletelyShowed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_147();
    l0 = self.box_DisplayActBreakUI_83;
    l1 = self.box_Delay_v5_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|338320457", "338320457", "MIS_300_B60", "box_DisplayActBreakUI_83.CompletelyShowed", "box_Delay_v5_147.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayActBreakUI_83_Hidden()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayerListener_v3_65();
    l0 = self.box_DisplayActBreakUI_83;
    l1 = self.box_BinkPlayerListener_v3_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|442001912", "442001912", "MIS_300_B60", "box_DisplayActBreakUI_83.Hidden", "box_BinkPlayerListener_v3_65.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_DisplayActBreakUI_83_Showed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_146();
    l0 = self.box_DisplayActBreakUI_83;
    l1 = self.box_Delay_v5_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1891470658", "1891470658", "MIS_300_B60", "box_DisplayActBreakUI_83.Showed", "box_Delay_v5_146.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_21();
    l0 = self.box_VisibilityModifier_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|636472649", "636472649", "MIS_300_B60", "box_OutputOrder_v2_87.Out", "box_VisibilityModifier_21.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_29();
    l0 = self.box_VisibilityModifier_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1599370153", "1599370153", "MIS_300_B60", "box_OutputOrder_v2_87.Out", "box_VisibilityModifier_29.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_86();
    l0 = self.box_VisibilityModifier_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|744349661", "744349661", "MIS_300_B60", "box_OutputOrder_v2_87.Out", "box_VisibilityModifier_86.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_140();
    l0 = self.box_VisibilityModifier_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|421845736", "421845736", "MIS_300_B60", "box_OutputOrder_v2_87.Out", "box_VisibilityModifier_140.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_139();
    l0 = self.box_VisibilityModifier_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|131503284", "131503284", "MIS_300_B60", "box_OutputOrder_v2_87.Out", "box_VisibilityModifier_139.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_151();
    l0 = self.box_VisibilityModifier_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1894924815", "1894924815", "MIS_300_B60", "box_OutputOrder_v2_87.Out", "box_VisibilityModifier_151.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_209();
    l0 = self.box_VisibilityModifier_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|654951255", "654951255", "MIS_300_B60", "box_OutputOrder_v2_87.Out", "box_VisibilityModifier_209.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_155_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1151427602", "1151427602", "MIS_300_B60", "box_PlaySequence_v8_155.Finished", "box_MultipleOR_162.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_155_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1512125470", "1512125470", "MIS_300_B60", "box_PlaySequence_v8_155.Skipped", "box_MultipleOR_162.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_155_SPOut__1stEnd_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1679486758", "1679486758", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_155_SPOut__1stLoop_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1277618383", "1277618383", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_155_SPOut__2ndEnd_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|48365707", "48365707", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_155_SPOut__2ndLoop_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1495793430", "1495793430", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_155_SPOut__3rdEnd_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1232135102", "1232135102", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_155_SPOut__3rdLoop_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|343326544", "343326544", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_155_SPOut__BlackScreenA_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|669254957", "669254957", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_MultipleOR_161.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_155_SPOut__BlackscreenB_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1184273672", "1184273672", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_MultipleOR_161.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_155_SPOut__EndB_()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_155();
    l0 = self.box_PlaySequence_v8_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|54555273", "54555273", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_PlaySequence_v8_155.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_PlaySequence_v8_155_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_160();
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_NarrativeFade_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|726532166", "726532166", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_NarrativeFade_160.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_155_SPOut__Godray_window_OFF_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1636322491", "1636322491", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_155_SPOut__VFX_CIN_M300_Rush_Execution_Blood_Punch_Wall_1_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_178();
    l0 = self.box_PlaySequence_v8_155;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2064492022", "2064492022", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_OutputOrder_v2_178.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_155_SPOut__VFX_CIN_M300_Rush_Execution_BloodSplat_1_()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_172();
    l0 = self.box_PlaySequence_v8_155;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|245338979", "245338979", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_ParticleSystem_v3_172.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_155_SPOut__VFX_CIN_M300_Rush_Execution_BloodSplat_Shot_1_()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_173();
    l0 = self.box_PlaySequence_v8_155;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|952720962", "952720962", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_ParticleSystem_v3_173.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_155_SPOut__VFX_CIN_M300_Rush_Execution_BrokenGlass_1_()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_174();
    l0 = self.box_PlaySequence_v8_155;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1364954179", "1364954179", "MIS_300_B60", "box_PlaySequence_v8_155.SPOut", "box_ParticleSystem_v3_174.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_155_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_170();
    l0 = self.box_PlaySequence_v8_155;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1858476560", "1858476560", "MIS_300_B60", "box_PlaySequence_v8_155.Started", "box_OutputOrder_v2_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_155_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_155;
    l1 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|905529566", "905529566", "MIS_300_B60", "box_PlaySequence_v8_155.Stopped", "box_MultipleOR_162.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_166_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCinematicPrompt_158();
    l0 = self.box_MultipleOR_166;
    l1 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1242807028", "1242807028", "MIS_300_B60", "box_MultipleOR_166.Out", "box_DisplayCinematicPrompt_158.HidePrompt", l0:GetLuaBox(), l1:GetLuaBox());
    -- HidePrompt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|244290409", "244290409", "MIS_300_B60", "box_OutputOrder_v2_6.Out", "box_Delay_v5_28.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeCS_Cinema_48();
    l0 = self.box_NarrativeCS_Cinema_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1153277949", "1153277949", "MIS_300_B60", "box_OutputOrder_v2_6.Out", "box_NarrativeCS_Cinema_48.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_180_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_180;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2089817572", "2089817572", "MIS_300_B60", "box_MultipleOR_180.Out", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_161_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_207();
    l0 = self.box_MultipleOR_161;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1998760078", "1998760078", "MIS_300_B60", "box_MultipleOR_161.Out", "box_OutputOrder_v2_207.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_147_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_150();
    l0 = self.box_Delay_v5_147;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|253783175", "253783175", "MIS_300_B60", "box_Delay_v5_147.Started", "box_OutputOrder_v2_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_147_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_148();
    l0 = self.box_Delay_v5_147;
    l1 = self.box_PostFx_v3_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1691768333", "1691768333", "MIS_300_B60", "box_Delay_v5_147.TimeElapsed", "box_PostFx_v3_148.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_64_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_196();
    l0 = self.box_Delay_v5_64;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1479634862", "1479634862", "MIS_300_B60", "box_Delay_v5_64.TimeElapsed", "box_OutputOrder_v2_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_64();
    l0 = self.box_Delay_v5_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|11128508", "11128508", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_Delay_v5_64.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_45();
    l0 = self.box_VisibilityModifier_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2002952024", "2002952024", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_VisibilityModifier_45.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_74_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_135();
    l0 = self.box_VisibilityModifier_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1634391098", "1634391098", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_VisibilityModifier_135.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_136();
    l0 = self.box_VisibilityModifier_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1756281863", "1756281863", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_VisibilityModifier_136.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_134();
    l0 = self.box_VisibilityModifier_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|245824783", "245824783", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_VisibilityModifier_134.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_132();
    l0 = self.box_VisibilityModifier_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|695579596", "695579596", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_VisibilityModifier_132.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_137();
    l0 = self.box_VisibilityModifier_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|30525523", "30525523", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_VisibilityModifier_137.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_141();
    l0 = self.box_VisibilityModifier_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|896017920", "896017920", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_VisibilityModifier_141.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_123();
    l0 = self.box_VisibilityModifier_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|729323709", "729323709", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_VisibilityModifier_123.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_142();
    l0 = self.box_VisibilityModifier_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1451078475", "1451078475", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_VisibilityModifier_142.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_190();
    l0 = self.box_VisibilityModifier_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1858008585", "1858008585", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_VisibilityModifier_190.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_218();
    l0 = self.box_VisibilityModifier_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|436951388", "436951388", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_VisibilityModifier_218.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_219();
    l0 = self.box_VisibilityModifier_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1575268117", "1575268117", "MIS_300_B60", "box_OutputOrder_v2_74.Out", "box_VisibilityModifier_219.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_NarrativeFade_85_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_NarrativeFade_85;
    l1 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|480130572", "480130572", "MIS_300_B60", "box_NarrativeFade_85.FadedOut", "box_Delay_v5_35.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityInitialized_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_27();
    l0 = self.box_ActivityInitialized_9;
    l1 = self.box_RemoveEntity_v2_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2097960204", "2097960204", "MIS_300_B60", "box_ActivityInitialized_9.Out", "box_RemoveEntity_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_187_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_188();
    l0 = self.box_MultipleOR_187;
    l1 = self.box_ProximityTrigger_v3_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1267614091", "1267614091", "MIS_300_B60", "box_MultipleOR_187.Out", "box_ProximityTrigger_v3_188.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_30_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_30;
    l1 = self.box_PhoneCallExclusivityModifier_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1920053203", "1920053203", "MIS_300_B60", "box_RemoveEntity_v2_30.Out", "box_PhoneCallExclusivityModifier_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_201_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_DisplayCinematicSkipPrompt_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|985357148", "985357148", "MIS_300_B60", "box_OutputOrder_v2_201.Out", "box_DisplayCinematicSkipPrompt_63.DisplayPrompt", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisplayPrompt
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_201_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_200();
    l0 = self.box_Music_Quest_v2_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1756105143", "1756105143", "MIS_300_B60", "box_OutputOrder_v2_201.Out", "box_Music_Quest_v2_200.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_InputListener_v3_156_Disabled()
    local l0, l1;
    l0 = self.box_InputListener_v3_156;
    l1 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|405495204", "405495204", "MIS_300_B60", "box_InputListener_v3_156.Disabled", "box_MultipleOR_166.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InputListener_v3_156_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCinematicPrompt_158();
    l0 = self.box_InputListener_v3_156;
    l1 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2047691547", "2047691547", "MIS_300_B60", "box_InputListener_v3_156.Enabled", "box_DisplayCinematicPrompt_158.DisplayPrompt", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisplayPrompt
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InputListener_v3_156_SignalReceived()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_165();
    l0 = self.box_InputListener_v3_156;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|830588328", "830588328", "MIS_300_B60", "box_InputListener_v3_156.SignalReceived", "box_OutputOrder_v2_165.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_162_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_181();
    l0 = self.box_MultipleOR_162;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|714266502", "714266502", "MIS_300_B60", "box_MultipleOR_162.Out", "box_OutputOrder_v2_181.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_33_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_33_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|727688189", "727688189", "MIS_300_B60", "box_SetBoolean_v2_33.Out", "box_Delay_v5_43.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_179_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_177();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1383054091", "1383054091", "MIS_300_B60", "box_OutputOrder_v2_179.Out", "box_ParticleSystem_v3_177.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_175();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1704763339", "1704763339", "MIS_300_B60", "box_OutputOrder_v2_179.Out", "box_ParticleSystem_v3_175.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_197();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|564467559", "564467559", "MIS_300_B60", "box_OutputOrder_v2_179.Out", "box_ParticleSystem_v3_197.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_198();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1867132300", "1867132300", "MIS_300_B60", "box_OutputOrder_v2_179.Out", "box_ParticleSystem_v3_198.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_199();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1686615253", "1686615253", "MIS_300_B60", "box_OutputOrder_v2_179.Out", "box_ParticleSystem_v3_199.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_146_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_210();
    l0 = self.box_Delay_v5_146;
    l1 = self.box_SoundModifier_v2_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|855640308", "855640308", "MIS_300_B60", "box_Delay_v5_146.TimeElapsed", "box_SoundModifier_v2_210.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_DisplayActBreakUI_84_CompletelyShowed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_152();
    l0 = self.box_DisplayActBreakUI_84;
    l1 = self.box_Delay_v5_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1188697891", "1188697891", "MIS_300_B60", "box_DisplayActBreakUI_84.CompletelyShowed", "box_Delay_v5_152.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayActBreakUI_84_Hidden()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_DisplayActBreakUI_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|269330249", "269330249", "MIS_300_B60", "box_DisplayActBreakUI_84.Hidden", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_StopMetaSequence_v5_164()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_45()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108970528774574079",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|48682152");
    l0:SetConnections({
    });
    params = {
        -- lighting,
        [7] = "FCZ_Default:Location_Specific.cin_m300_Rush_Execution_lighting",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|58262561");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|66679010");
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
                [0] = self.f_box_OutputOrder_v2_213_Out_0,
                [1] = self.f_box_OutputOrder_v2_213_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|86296747");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109675323518889372",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|102767057");
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

function export:OnEnter_box_VisibilityModifier_219()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104157631884071734",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_139()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101619867456128297",
    };
    return params;
end;

function export:OnEnter_box_NarrativeCS_Cinema_167()
    local params;
    params = {
        -- CS_Cinema_Animals,
        [0] = "2109125480562052589",
        -- CS_Cinema_NPCs,
        [1] = "2109125482917154287",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_123()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109289148887091111",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_70()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|275743317");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_17_Unlocked,
    });
    params = {
        -- door,
        [0] = "2108516869037108129",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_138()
    local params;
    params = {
        -- Group,
        [0] = "2109288321831154981",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_189()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109692378821438967",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_137()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109289148887091111",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|301408031");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109747224628964865",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_37()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_134()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109468183051110288",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|362669761");
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
                [0] = self.f_box_OutputOrder_v2_203_Out_0,
                [1] = self.f_box_OutputOrder_v2_203_Out_1,
                [2] = self.f_box_OutputOrder_v2_203_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_192()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|445144897");
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
                [0] = self.f_box_OutputOrder_v2_181_Out_0,
                [1] = self.f_box_OutputOrder_v2_181_Out_1,
                [2] = self.f_box_OutputOrder_v2_181_Out_2,
                [3] = self.f_box_OutputOrder_v2_181_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetLoadingVideo_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/SetLoadingVideo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetLoadingVideo_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|460607004");
    l0:SetConnections({
    });
    params = {
        -- videoId,
        [0] = 19,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_82()
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

function export:OnEnter_box_BinkPlayer_v6_67()
    local params;
    params = {
        -- BinkAudio,
        [0] = "54859756",
        -- BinkAudioType,
        [1] = 12,
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\cin_m300_flashback_twins.bik]],
        -- BinkSound,
        [3] = "2042182736",
        -- BinkSoundFade,
        [6] = 9,
        -- BinkSoundType,
        [7] = 12,
        -- BinkVolumePercent,
        [8] = 1,
        -- Loop,
        [9] = false,
        -- MaterialName,
        [10] = "Black",
        -- ScreenEntity,
        [11] = self.ePlayer,
        -- TCR_Music,
        [12] = false,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|515105511");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_145()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|527670159");
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
                [0] = self.f_box_OutputOrder_v2_170_Out_0,
                [1] = self.f_box_OutputOrder_v2_170_Out_1,
            },
            count = 2,
        },
    });
    params = {
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

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_80()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_194()
    local params, l0;
    l0 = self.box_ProximityTrigger_v3_193;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|703502505");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 11,
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
                [2] = self.f_box_OutputOrder_v2_124_Out_2,
                [3] = self.f_box_OutputOrder_v2_124_Out_3,
                [4] = self.f_box_OutputOrder_v2_124_Out_4,
                [5] = self.f_box_OutputOrder_v2_124_Out_5,
                [6] = self.f_box_OutputOrder_v2_124_Out_6,
                [7] = self.f_box_OutputOrder_v2_124_Out_7,
                [8] = self.f_box_OutputOrder_v2_124_Out_8,
            },
            count = 11,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_148()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "fadetowhitefast",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_125()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108516869037108129",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_142()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101619867456128297",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|762348359");
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

function export:OnEnter_box_VisibilityModifier_135()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104157610795111220",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|778788222");
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
        [8] = "MIS_300_B60_Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_21()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104157610795111220",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|860709868");
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
                [0] = self.f_box_OutputOrder_v2_211_Out_0,
                [1] = self.f_box_OutputOrder_v2_211_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_132()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108516869037108129",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_20()
    local params;
    params = {
        -- Group,
        [0] = "2109772666471735598",
    };
    return params;
end;

function export:OnEnter_box_BinkPlayerListener_v3_65()
    local params;
    params = {
        -- BinkPathIDFilter,
        [0] = [[ui\singleplayer\video\cin_m300_flashback_twins.bik]],
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|911047394");
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

function export:OnEnter_box_DisplayCinematicPrompt_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicPrompt_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|952820181");
    l0:SetConnections({
    });
    params = {
        -- textId1,
        [0] = {
            section = "MIS_300",
            item = "MIS_300_Cin_Interaction_Handcuff",
            id = "1033527",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|957933743");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
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
                [2] = self.f_box_OutputOrder_v2_78_Out_2,
                [3] = self.f_box_OutputOrder_v2_78_Out_3,
                [4] = self.f_box_OutputOrder_v2_78_Out_4,
                [5] = self.f_box_OutputOrder_v2_78_Out_5,
                [6] = self.f_box_OutputOrder_v2_78_Out_6,
                [7] = self.f_box_OutputOrder_v2_78_Out_7,
                [8] = self.f_box_OutputOrder_v2_78_Out_8,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|959950407");
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

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_76()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_69()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequence2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_182()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1026044885");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109499256359362668",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_169()
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
        [6] = "1046779607",
        -- StopEvent,
        [7] = "2611405624",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1048882880");
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
                [0] = self.f_box_OutputOrder_v2_178_Out_0,
                [1] = self.f_box_OutputOrder_v2_178_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1060098178");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "162268295730803742",
        -- missionLayerId,
        [1] = "27160321926618123",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1063626457");
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
                [0] = self.f_box_OutputOrder_v2_165_Out_0,
                [1] = self.f_box_OutputOrder_v2_165_Out_1,
                [2] = self.f_box_OutputOrder_v2_165_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_218()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104157652471812930",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1138136202");
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

function export:OnEnter_box_VisibilityModifier_29()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101619876740220211",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1255752250");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1258265576");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
                [4] = self.f_box_OutputOrder_v2_7_Out_4,
            },
            count = 9,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1260825956");
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
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_160()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematiccutoblack60",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_71()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30to60frames",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_152()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_72()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1335822511");
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
                [0] = self.f_box_OutputOrder_v2_207_Out_0,
                [1] = self.f_box_OutputOrder_v2_207_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_27()
    local params;
    params = {
        -- Group,
        [0] = "2109288321831154981",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_188()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109978335107881070",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_121()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109289148887091111",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_47()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108970543614021635",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_136()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101619876740220211",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_186()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_66()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequence2,
        -- SceneEntity,
        [3] = "2109262069185388886",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_m300_wakeupmontage/cin_m300_wakeupmontage.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1413502828");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1415698621");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109747180425194996",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1441497256");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109499427300319512",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1452366589");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109499244814540906",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1455357536");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_143()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109563516095583777",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_185()
    local params, l0;
    l0 = self.box_ProximityTrigger_v3_188;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_126()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109289148887091111",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_193()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109787999072969099",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_153()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "fadetowhitefast",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_46()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108970533547692033",
    };
    return params;
end;

function export:OnEnter_box_DisplayActBreakUI_83()
    local params;
    params = {
        -- Act,
        [0] = 13,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1594272331");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
                [1] = self.f_box_OutputOrder_v2_87_Out_1,
                [2] = self.f_box_OutputOrder_v2_87_Out_2,
                [3] = self.f_box_OutputOrder_v2_87_Out_3,
                [4] = self.f_box_OutputOrder_v2_87_Out_4,
                [5] = self.f_box_OutputOrder_v2_87_Out_5,
                [6] = self.f_box_OutputOrder_v2_87_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_155()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2108213229799892291",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_m300_rushexecution/cin_m300_rushexecution_all_parts.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1616229908");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109526000434945914",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1621246128");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_216()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "389070781",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_147()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_64()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1686549749");
    l0:SetConnections({
    });
    params = {
        -- lighting,
        [7] = "FCZ_Default:Location_Specific.cin_m300_Rush_Execution_lighting",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_149()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_86()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109468183051110288",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_210()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "652479070",
        -- SoundType,
        [2] = 12,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1739456118");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 13,
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
                [2] = self.f_box_OutputOrder_v2_74_Out_2,
                [3] = self.f_box_OutputOrder_v2_74_Out_3,
                [4] = self.f_box_OutputOrder_v2_74_Out_4,
                [5] = self.f_box_OutputOrder_v2_74_Out_5,
                [6] = self.f_box_OutputOrder_v2_74_Out_6,
                [7] = self.f_box_OutputOrder_v2_74_Out_7,
                [8] = self.f_box_OutputOrder_v2_74_Out_8,
                [9] = self.f_box_OutputOrder_v2_74_Out_9,
                [10] = self.f_box_OutputOrder_v2_74_Out_10,
                [11] = self.f_box_OutputOrder_v2_74_Out_11,
                [12] = self.f_box_OutputOrder_v2_74_Out_12,
            },
            count = 13,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_85()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_151()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104157652471812930",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_212()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3202019046",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_30()
    local params;
    params = {
        -- Group,
        [0] = "2108516869037108129",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_190()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109692378821438967",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_141()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104157652469715776",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1930391831");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
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
        [2] = 33,
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
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_202()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 34,
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
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1943156830");
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
                [0] = self.f_box_OutputOrder_v2_201_Out_0,
                [1] = self.f_box_OutputOrder_v2_201_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InputListener_v3_156()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- signal,
        [2] = "uiselector_skipprompt_press_special_action_x",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_183()
    local params;
    params = {
        -- Group,
        [0] = "2109456822183154358",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|1985505663");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeCS_Cinema_48()
    local params;
    params = {
        -- CS_Cinema_Animals,
        [0] = "2109125480562052589",
        -- CS_Cinema_NPCs,
        [1] = "2109125482917154287",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_209()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104157631884071734",
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
        [2] = 31,
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
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2071747909");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109413205483724100",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2073525995");
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
                [0] = self.f_box_OutputOrder_v2_179_Out_0,
                [1] = self.f_box_OutputOrder_v2_179_Out_1,
                [2] = self.f_box_OutputOrder_v2_179_Out_2,
                [3] = self.f_box_OutputOrder_v2_179_Out_3,
                [4] = self.f_box_OutputOrder_v2_179_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_154()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30to60frames",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B60_nf.domino|@MIS_300_B60|2099751966");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109499216310050920",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_146()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7.5,
    };
    return params;
end;

function export:OnEnter_box_DisplayActBreakUI_84()
    local params;
    params = {
        -- Act,
        [0] = 5,
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_217()
    local params;
    params = {
        -- missionBlockId,
        [0] = "36167526030814011",
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_81()
    local params;
    params = {
        -- Azimuth,
        [0] = 265,
        -- Elevation,
        [1] = 40,
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

function export:OnEnter_box_PlaySequence_v8_204()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2108213229799892291",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_m300_wakeupmontage/cin_m300_wakeupmontage_chains.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_140()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104157652469715776",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_163_Out()
    local l0;
    l0 = self.box_StartMetaSequence_163;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_68_Out()
    local l0;
    l0 = self.box_StartMetaSequence_68;
    self.MetaSequence2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_188_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_188;
    l1 = self.box_RemoveEntity_v2_185;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_188_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_188;
    l1 = self.box_RemoveEntity_v2_185;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_188_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_188;
    l1 = self.box_RemoveEntity_v2_185;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_188_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_188;
    l1 = self.box_RemoveEntity_v2_185;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_188_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_188;
    l1 = self.box_RemoveEntity_v2_185;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_188_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_188;
    l1 = self.box_RemoveEntity_v2_185;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_193_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_193;
    l1 = self.box_RemoveEntity_v2_194;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_193_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_193;
    l1 = self.box_RemoveEntity_v2_194;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_193_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_193;
    l1 = self.box_RemoveEntity_v2_194;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_193_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_193;
    l1 = self.box_RemoveEntity_v2_194;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_193_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_193;
    l1 = self.box_RemoveEntity_v2_194;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_193_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_193;
    l1 = self.box_RemoveEntity_v2_194;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.DidPlayerInteract = l0:GetDataOutValue(0);
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
