LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b15.domino
-- User graph: INTRO_010_B15
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayer_v6.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayerListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DisplayCinematicSkipPrompt.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/InventoryPackModifier.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MoonModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PawnCameraModifier.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[ui\singleplayer\video\context_video.bik]], "CBinkResource");
        cboxRes:LoadResource([[274060232.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1257790454.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2248944541.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2892310692.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B15.INTRO_010_B15.debug.lua")] = {
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/InventoryPackModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Load",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Failed",
                delayed = false,
            },
            [1] = {
                name = "Loaded",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "inventoryPackId",
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/Player/PawnCameraModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableCloseUp",
            },
            [1] = {
                name = "DisableExtremeZoom",
            },
            [2] = {
                name = "EnableCloseUp",
            },
            [3] = {
                name = "EnableExtremeZoom",
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
                name = "ExtremeZoomDisabled",
                delayed = false,
            },
            [3] = {
                name = "ExtremeZoomEnabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "INTRO_010_B15";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15";
    self.Players = nil;
    self.Player = nil;
    self.MetaSequenceID = 0;
    self.player = nil;
    self.box_PawnCameraModifier_49 = cbox:CreateBox("Domino/System/Player/PawnCameraModifier.lua");
    l0 = self.box_PawnCameraModifier_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnCameraModifier_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|8233519");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PawnCameraModifier_49_Disabled,
    });
    self.box_VisibilityModifier_86 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|18789187");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|62309805");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_SpawnAI_38 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|81981125");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_38_Out,
    });
    self.box_BaseMissionBlock_v2_44 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|99221917");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_44_Activated,
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|116414116");
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
    self.box_ConsoleCommand_v3_19 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|124737260");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ConsoleCommand_v3_19_Disabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_19_Execute,
    });
    self.box_RemoveEntity_v2_63 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|180054550");
    l0:SetConnections({
    });
    self.box_BaseMissionBlock_v2_83 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|249078937");
    l0:SetConnections({
    });
    self.box_Delay_v5_70 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|284355125");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_70_TimeElapsed,
    });
    self.box_MultipleOR_75 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|291539840");
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
    self.box_EntityStatusListener_85 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|301131178");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_85_Disabled,
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_85_Enabled,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_85_Unloaded,
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|320644650");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_24_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_TeleportPawns_14 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|425338781");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_14_Out,
    });
    self.box_BaseMissionBlock_v2_17 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|487420381");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_BaseMissionBlock_v2_17_Enabled,
    });
    self.box_SpawnAI_59 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|507378801");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_59_Out,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|539149695");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_MoonModifier_82 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|617864707");
    l0:SetConnections({
        -- OnSetMoonSize,
        [5] = self.f_box_MoonModifier_82_OnSetMoonSize,
    });
    self.box_EntityStatusListener_84 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|621865517");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_84_Loaded,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_53 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|656729686");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_53_Out,
    });
    self.box_ProximityRadiusListener_v3_60 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|670383971");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_60_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_60_SomeoneNear,
    });
    self.box_StartMetaSequence_41 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|681405275");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_41_Out,
    });
    self.box_ProximityRadiusListener_v3_37 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|681424210");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_37_SomeoneNear,
    });
    self.box_Music_Quest_v2_62 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|691972941");
    l0:SetConnections({
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|692298485");
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
    self.box_BinkPlayer_v6_66 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|808585340");
    l0:SetConnections({
    });
    self.box_SpawnAI_58 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|832000132");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_58_Out,
    });
    self.box_BinkPlayerListener_v3_65 = cbox:CreateBox("Domino/System/BinkPlayerListener_v3.lua");
    l0 = self.box_BinkPlayerListener_v3_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayerListener_v3_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|970618546");
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
    self.box_PawnCameraModifier_48 = cbox:CreateBox("Domino/System/Player/PawnCameraModifier.lua");
    l0 = self.box_PawnCameraModifier_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnCameraModifier_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|980242934");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PawnCameraModifier_48_Enabled,
    });
    self.box_NarrativeSceneSetup_1 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1028403596");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_1_Out,
    });
    self.box_RemoveEntity_v2_29 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1102098511");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_81 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1105235131");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_20 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1105662963");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_20_Out,
    });
    self.box_OverrideMenuAccessibility_16 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1110244924");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_16_Out,
    });
    self.box_SpawnAI_80 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1186681836");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_80_Out,
    });
    self.box_BaseMissionBlock_v2_21 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1193245338");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_21_Activated,
    });
    self.box_DisplayCinematicSkipPrompt_51 = cbox:CreateBox("Domino/System/DisplayCinematicSkipPrompt.lua");
    l0 = self.box_DisplayCinematicSkipPrompt_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicSkipPrompt_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1203846827");
    l0:SetConnections({
    });
    self.box_NarrativeFade_69 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1207445922");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_69_FadedOut,
    });
    self.box_MoonModifier_77 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1215274083");
    l0:SetConnections({
        -- OnSetMoonSize,
        [5] = self.f_box_MoonModifier_77_OnSetMoonSize,
    });
    self.box_RemoveEntity_v2_73 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1249053247");
    l0:SetConnections({
    });
    self.box_BaseMissionBlock_v2_68 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1263872585");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_30 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1267384401");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_30_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_30_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_30_SomeoneNear,
    });
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1330021912");
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
        [0] = self.f_box_MultipleOR_55_Out,
    });
    self.box_EntityStatusListener_78 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1361201610");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_78_Loaded,
    });
    self.box_RemoveEntity_v2_72 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1393030488");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_72_Out,
    });
    self.box_PlaySequence_v8_40 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1410445858");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 5,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_40_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_40_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Stop_Postfx",
                    value = self.f_box_PlaySequence_v8_40_SPOut__Stop_Postfx_,
                },
                [1] = {
                    string = "Start_timelapse",
                },
                [2] = {
                    string = "Remove_Statue",
                    value = self.f_box_PlaySequence_v8_40_SPOut__Remove_Statue_,
                },
                [3] = {
                    string = "MoveTheMoon",
                    value = self.f_box_PlaySequence_v8_40_SPOut__MoveTheMoon_,
                },
                [4] = {
                    string = "Start_Postfx",
                    value = self.f_box_PlaySequence_v8_40_SPOut__Start_Postfx_,
                },
            },
            count = 5,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_40_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_40_Stopped,
    });
    self.box_SpawnAI_52 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1482925285");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_52_Out,
    });
    self.box_InventoryPackModifier_6 = cbox:CreateBox("Domino/System/InventoryPackModifier.lua");
    l0 = self.box_InventoryPackModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryPackModifier_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1594765268");
    l0:SetConnections({
        -- Loaded,
        [1] = self.f_box_InventoryPackModifier_6_Loaded,
    });
    self.box_MoonModifier_79 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1597321758");
    l0:SetConnections({
        -- OnResetMoonDirection,
        [0] = self.f_box_MoonModifier_79_OnResetMoonDirection,
        -- OnResetMoonHDRMultiplier,
        [1] = self.f_box_MoonModifier_79_OnResetMoonHDRMultiplier,
    });
    self.box_Delay_v5_90 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1613187988");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_90_TimeElapsed,
    });
    self.box_EntityStatusListener_28 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1618717516");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_28_Loaded,
    });
    self.box_NarrativeFade_39 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1748694136");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_39_FadedIn,
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_39_FadedOut,
    });
    self.box_Delay_v5_74 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1825027442");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_74_TimeElapsed,
    });
    self.box_Music_Quest_v2_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1919537966");
    l0:SetConnections({
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1947540227");
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
    self.box_Music_Quest_v2_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1951008118");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Music_Quest_v2_26_Started,
    });
    self.box_Gate_v3_87 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1953831495");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_87_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_87_Out,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1958896011");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_VisibilityModifier_57 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1971843945");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_57_Disabled,
    });
    self.box_Delay_v5_32 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2018199527");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_32_TimeElapsed,
    });
    self.box_OnceOnly_v3_76 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2021988733");
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
                [0] = self.f_box_OnceOnly_v3_76_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_89 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2074174720");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_89_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1778609777", "1778609777", "INTRO_010_B15", "In", "box_OutputOrder_v2_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnCameraModifier_49_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_PawnCameraModifier_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2007054621", "2007054621", "INTRO_010_B15", "box_PawnCameraModifier_49.Disabled", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|570584508", "570584508", "INTRO_010_B15", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|328181776", "328181776", "INTRO_010_B15", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_52();
    l0 = self.box_SpawnAI_38;
    l1 = self.box_SpawnAI_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1216090676", "1216090676", "INTRO_010_B15", "box_SpawnAI_38.Out", "box_SpawnAI_52.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_44_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_21();
    l0 = self.box_BaseMissionBlock_v2_44;
    l1 = self.box_BaseMissionBlock_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|283001123", "283001123", "INTRO_010_B15", "box_BaseMissionBlock_v2_44.Activated", "box_BaseMissionBlock_v2_21.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_68();
    l0 = self.box_MultipleOR_56;
    l1 = self.box_BaseMissionBlock_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|29165726", "29165726", "INTRO_010_B15", "box_MultipleOR_56.Out", "box_BaseMissionBlock_v2_68.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
end;

function export:f_box_ConsoleCommand_v3_19_Disabled()
    local l0, l1;
    l0 = self.box_ConsoleCommand_v3_19;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1133634939", "1133634939", "INTRO_010_B15", "box_ConsoleCommand_v3_19.Disabled", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ConsoleCommand_v3_19_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_40();
    l0 = self.box_ConsoleCommand_v3_19;
    l1 = self.box_PlaySequence_v8_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1628928610", "1628928610", "INTRO_010_B15", "box_ConsoleCommand_v3_19.Execute", "box_PlaySequence_v8_40.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_16();
    l0 = self.box_OverrideMenuAccessibility_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1034992633", "1034992633", "INTRO_010_B15", "box_OutputOrder_v2_5.Out", "box_OverrideMenuAccessibility_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_62();
    l0 = self.box_Music_Quest_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1083947899", "1083947899", "INTRO_010_B15", "box_OutputOrder_v2_5.Out", "box_Music_Quest_v2_62.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_50();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|636656235", "636656235", "INTRO_010_B15", "box_OutputOrder_v2_5.Out", "box_SetTimeOfDay_50.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_78();
    l0 = self.box_EntityStatusListener_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|556379299", "556379299", "INTRO_010_B15", "box_OutputOrder_v2_5.Out", "box_EntityStatusListener_78.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_70_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_70;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|552673969", "552673969", "INTRO_010_B15", "box_Delay_v5_70.TimeElapsed", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_75_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_75;
    l1 = self.box_OnceOnly_v3_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|865306701", "865306701", "INTRO_010_B15", "box_MultipleOR_75.Out", "box_OnceOnly_v3_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_85_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_86();
    l0 = self.box_EntityStatusListener_85;
    l1 = self.box_VisibilityModifier_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|690804856", "690804856", "INTRO_010_B15", "box_EntityStatusListener_85.Disabled", "box_VisibilityModifier_86.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_85_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_86();
    l0 = self.box_EntityStatusListener_85;
    l1 = self.box_VisibilityModifier_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|651296091", "651296091", "INTRO_010_B15", "box_EntityStatusListener_85.Enabled", "box_VisibilityModifier_86.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_85_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_87();
    l0 = self.box_EntityStatusListener_85;
    l1 = self.box_Gate_v3_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|212113009", "212113009", "INTRO_010_B15", "box_EntityStatusListener_85.Unloaded", "box_Gate_v3_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_12();
    l0 = self.box_Music_Quest_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|107287692", "107287692", "INTRO_010_B15", "box_OutputOrder_v2_15.Out", "box_Music_Quest_v2_12.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1006164811", "1006164811", "INTRO_010_B15", "box_OutputOrder_v2_15.Out", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1926192059", "1926192059", "INTRO_010_B15", "box_OutputOrder_v2_15.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_24_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideDisabledLogicId_11();
    l0 = self.box_Delay_v5_24;
    l1 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1304523445", "1304523445", "INTRO_010_B15", "box_Delay_v5_24.Started", "box_OverrideDisabledLogicId_11.DetectionMeter", l0:GetLuaBox(), l1:GetLuaBox());
    -- DetectionMeter
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideDisabledLogicId_25();
    l0 = self.box_Delay_v5_24;
    l1 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|899835925", "899835925", "INTRO_010_B15", "box_Delay_v5_24.TimeElapsed", "box_OverrideDisabledLogicId_25.DetectionMeter", l0:GetLuaBox(), l1:GetLuaBox());
    -- DetectionMeter
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|269845665", "269845665", "INTRO_010_B15", "box_OutputOrder_v2_8.Out", "box_Print_v2_3.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|912294196", "912294196", "INTRO_010_B15", "box_OutputOrder_v2_8.Out", "box_ActivityAcknowledgeGate_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_TeleportPawns_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MoonModifier_79();
    l0 = self.box_TeleportPawns_14;
    l1 = self.box_MoonModifier_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1211622418", "1211622418", "INTRO_010_B15", "box_TeleportPawns_14.Out", "box_MoonModifier_79.ResetMoonHDRMultiplier", l0:GetLuaBox(), l1:GetLuaBox());
    -- ResetMoonHDRMultiplier
    l1:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_17_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_83();
    l0 = self.box_BaseMissionBlock_v2_17;
    l1 = self.box_BaseMissionBlock_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1600005044", "1600005044", "INTRO_010_B15", "box_BaseMissionBlock_v2_17.Enabled", "box_BaseMissionBlock_v2_83.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayerListener_v3_65();
    l0 = self.box_BinkPlayerListener_v3_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1259559712", "1259559712", "INTRO_010_B15", "box_OutputOrder_v2_9.Out", "box_BinkPlayerListener_v3_65.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_DisplayCinematicSkipPrompt_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2115253700", "2115253700", "INTRO_010_B15", "box_OutputOrder_v2_9.Out", "box_DisplayCinematicSkipPrompt_51.HidePrompt", clone:GetLuaBox(), l0:GetLuaBox());
    -- HidePrompt
    l0:Exec(1, {
    });
end;

function export:f_box_SpawnAI_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_80();
    l0 = self.box_SpawnAI_59;
    l1 = self.box_SpawnAI_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1550405738", "1550405738", "INTRO_010_B15", "box_SpawnAI_59.Out", "box_SpawnAI_80.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_67();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1677826692", "1677826692", "INTRO_010_B15", "box_ActivityInitialized_2.Out", "box_GetLocalPlayer_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MoonModifier_82_OnSetMoonSize()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_82();
    l0 = self.box_MoonModifier_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1758704087", "1758704087", "INTRO_010_B15", "box_MoonModifier_82.OnSetMoonSize", "box_MoonModifier_82.SetMoonDirection", l0:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonDirection
    l0:Exec(3, params);
end;

function export:f_box_EntityStatusListener_84_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_85();
    l0 = self.box_EntityStatusListener_84;
    l1 = self.box_EntityStatusListener_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|418502280", "418502280", "INTRO_010_B15", "box_EntityStatusListener_84.Loaded", "box_EntityStatusListener_85.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_47();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_53;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|929401844", "929401844", "INTRO_010_B15", "box_CHEAT_SetEnvironmentTimeScale_53.Out", "box_OverrideEnvironment_v3_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_60_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_58();
    l0 = self.box_ProximityRadiusListener_v3_60;
    l1 = self.box_SpawnAI_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1454738843", "1454738843", "INTRO_010_B15", "box_ProximityRadiusListener_v3_60.Disabled", "box_SpawnAI_58.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_60_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_60();
    l0 = self.box_ProximityRadiusListener_v3_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1014312824", "1014312824", "INTRO_010_B15", "box_ProximityRadiusListener_v3_60.SomeoneNear", "box_ProximityRadiusListener_v3_60.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_StartMetaSequence_41_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_41_Out();
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_StartMetaSequence_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|159458017", "159458017", "INTRO_010_B15", "box_StartMetaSequence_41.Out", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_37_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_23();
    l0 = self.box_ProximityRadiusListener_v3_37;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|954877705", "954877705", "INTRO_010_B15", "box_ProximityRadiusListener_v3_37.SomeoneNear", "box_ParticleSystem_v3_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_84();
    l0 = self.box_MultipleOR_88;
    l1 = self.box_EntityStatusListener_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1513957647", "1513957647", "INTRO_010_B15", "box_MultipleOR_88.Out", "box_EntityStatusListener_84.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|675008913", "675008913", "INTRO_010_B15", "box_OutputOrder_v2_64.Out", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v4_42();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|579029148", "579029148", "INTRO_010_B15", "box_OutputOrder_v2_64.Out", "box_StopMetaSequence_v4_42.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_87();
    l0 = self.box_Gate_v3_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|635788709", "635788709", "INTRO_010_B15", "box_OutputOrder_v2_64.Out", "box_Gate_v3_87.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_33_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_34();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|79273605", "79273605", "INTRO_010_B15", "box_UseContextualActionModifier_v3_33.Disabled", "box_UseContextualActionModifier_v3_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_33_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|525894865", "525894865", "INTRO_010_B15", "box_UseContextualActionModifier_v3_33.InterruptCalled", "box_UseContextualActionModifier_v3_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_59();
    l0 = self.box_SpawnAI_58;
    l1 = self.box_SpawnAI_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|483054745", "483054745", "INTRO_010_B15", "box_SpawnAI_58.Out", "box_SpawnAI_59.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_67_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_67_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_89();
    l0 = self.box_Delay_v5_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|25112771", "25112771", "INTRO_010_B15", "box_GetLocalPlayer_v2_67.Out", "box_Delay_v5_89.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_BinkPlayerListener_v3_65_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_90();
    l0 = self.box_BinkPlayerListener_v3_65;
    l1 = self.box_Delay_v5_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1344065085", "1344065085", "INTRO_010_B15", "box_BinkPlayerListener_v3_65.Disabled", "box_Delay_v5_90.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_BinkPlayerListener_v3_65_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_66();
    l0 = self.box_BinkPlayerListener_v3_65;
    l1 = self.box_BinkPlayer_v6_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|189787335", "189787335", "INTRO_010_B15", "box_BinkPlayerListener_v3_65.Enabled", "box_BinkPlayer_v6_66.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_BinkPlayerListener_v3_65_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_BinkPlayerListener_v3_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|851745156", "851745156", "INTRO_010_B15", "box_BinkPlayerListener_v3_65.End", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BinkPlayerListener_v3_65_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_26();
    l0 = self.box_BinkPlayerListener_v3_65;
    l1 = self.box_Music_Quest_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|787402784", "787402784", "INTRO_010_B15", "box_BinkPlayerListener_v3_65.Start", "box_Music_Quest_v2_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PawnCameraModifier_48_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_40();
    l0 = self.box_PawnCameraModifier_48;
    l1 = self.box_PlaySequence_v8_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|211834435", "211834435", "INTRO_010_B15", "box_PawnCameraModifier_48.Enabled", "box_PlaySequence_v8_40.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_13();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|429333236", "429333236", "INTRO_010_B15", "box_OutputOrder_v2_31.Out", "box_MissionBlockLayer_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|442243737", "442243737", "INTRO_010_B15", "box_OutputOrder_v2_31.Out", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_69();
    l0 = self.box_NarrativeSceneSetup_1;
    l1 = self.box_NarrativeFade_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1689251404", "1689251404", "INTRO_010_B15", "box_NarrativeSceneSetup_1.Out", "box_NarrativeFade_69.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_29();
    l0 = self.box_RemoveEntity_v2_20;
    l1 = self.box_RemoveEntity_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1013209679", "1013209679", "INTRO_010_B15", "box_RemoveEntity_v2_20.Out", "box_RemoveEntity_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OverrideMenuAccessibility_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_70();
    l0 = self.box_OverrideMenuAccessibility_16;
    l1 = self.box_Delay_v5_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1327738242", "1327738242", "INTRO_010_B15", "box_OverrideMenuAccessibility_16.Out", "box_Delay_v5_70.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_20();
    l0 = self.box_SpawnAI_80;
    l1 = self.box_RemoveEntity_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1419236514", "1419236514", "INTRO_010_B15", "box_SpawnAI_80.Out", "box_RemoveEntity_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_BaseMissionBlock_v2_21_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_17();
    l0 = self.box_BaseMissionBlock_v2_21;
    l1 = self.box_BaseMissionBlock_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1744948888", "1744948888", "INTRO_010_B15", "box_BaseMissionBlock_v2_21.Activated", "box_BaseMissionBlock_v2_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
end;

function export:f_box_NarrativeFade_69_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_NarrativeFade_69;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|3173878", "3173878", "INTRO_010_B15", "box_NarrativeFade_69.FadedOut", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MoonModifier_77_OnSetMoonSize()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_77();
    l0 = self.box_MoonModifier_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|559529464", "559529464", "INTRO_010_B15", "box_MoonModifier_77.OnSetMoonSize", "box_MoonModifier_77.SetMoonDirection", l0:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonDirection
    l0:Exec(3, params);
end;

function export:f_box_ProximityRadiusListener_v3_30_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_ProximityRadiusListener_v3_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1712656866", "1712656866", "INTRO_010_B15", "box_ProximityRadiusListener_v3_30.Disabled", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_37();
    l0 = self.box_ProximityRadiusListener_v3_30;
    l1 = self.box_ProximityRadiusListener_v3_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1242194123", "1242194123", "INTRO_010_B15", "box_ProximityRadiusListener_v3_30.Enabled", "box_ProximityRadiusListener_v3_37.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_30_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_30();
    l0 = self.box_ProximityRadiusListener_v3_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1960504756", "1960504756", "INTRO_010_B15", "box_ProximityRadiusListener_v3_30.SomeoneNear", "box_ProximityRadiusListener_v3_30.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_30();
    l0 = self.box_ProximityRadiusListener_v3_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|668280867", "668280867", "INTRO_010_B15", "box_OutputOrder_v2_61.Out", "box_ProximityRadiusListener_v3_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_60();
    l0 = self.box_ProximityRadiusListener_v3_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1058334137", "1058334137", "INTRO_010_B15", "box_OutputOrder_v2_61.Out", "box_ProximityRadiusListener_v3_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_34_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_34();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|577929774", "577929774", "INTRO_010_B15", "box_UseContextualActionModifier_v3_34.Enabled", "box_UseContextualActionModifier_v3_34.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_34_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1422146552", "1422146552", "INTRO_010_B15", "box_UseContextualActionModifier_v3_34.UseCalled", "box_UseContextualActionModifier_v3_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_12();
    l0 = self.box_Music_Quest_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1211736727", "1211736727", "INTRO_010_B15", "box_OutputOrder_v2_10.Out", "box_Music_Quest_v2_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_28();
    l0 = self.box_EntityStatusListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1416056275", "1416056275", "INTRO_010_B15", "box_OutputOrder_v2_10.Out", "box_EntityStatusListener_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1881982450", "1881982450", "INTRO_010_B15", "box_OutputOrder_v2_10.Out", "box_MultipleOR_88.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_MultipleOR_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|134627573", "134627573", "INTRO_010_B15", "box_MultipleOR_55.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OverrideEnvironment_v3_47_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_77();
    l0 = self.box_MoonModifier_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1694288645", "1694288645", "INTRO_010_B15", "box_OverrideEnvironment_v3_47.Enabled", "box_MoonModifier_77.SetMoonSize", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonSize
    l0:Exec(5, params);
end;

function export:f_box_UseContextualActionModifier_v3_36_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1763856240", "1763856240", "INTRO_010_B15", "box_UseContextualActionModifier_v3_36.Disabled", "box_UseContextualActionModifier_v3_33.CallInterrupt", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallInterrupt
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_36_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_36();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|438053396", "438053396", "INTRO_010_B15", "box_UseContextualActionModifier_v3_36.InterruptCalled", "box_UseContextualActionModifier_v3_36.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_78_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_54();
    l0 = self.box_EntityStatusListener_78;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2135412269", "2135412269", "INTRO_010_B15", "box_EntityStatusListener_78.Loaded", "box_StimsEmitter_v2_54.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_74();
    l0 = self.box_RemoveEntity_v2_72;
    l1 = self.box_Delay_v5_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1684603261", "1684603261", "INTRO_010_B15", "box_RemoveEntity_v2_72.Out", "box_Delay_v5_74.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_40_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|993381283", "993381283", "INTRO_010_B15", "box_PlaySequence_v8_40.Finished", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_40_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2100549840", "2100549840", "INTRO_010_B15", "box_PlaySequence_v8_40.Skipped", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_40_SPOut__MoveTheMoon_()
    local params, l0, l1;
    params = self:OnEnter_box_MoonModifier_82();
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_MoonModifier_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|522172549", "522172549", "INTRO_010_B15", "box_PlaySequence_v8_40.SPOut", "box_MoonModifier_82.SetMoonSize", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetMoonSize
    l1:Exec(5, params);
end;

function export:f_box_PlaySequence_v8_40_SPOut__Remove_Statue_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1912525872", "1912525872", "INTRO_010_B15", "box_PlaySequence_v8_40.SPOut", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_40_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_39();
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_NarrativeFade_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1737227845", "1737227845", "INTRO_010_B15", "box_PlaySequence_v8_40.SPOut", "box_NarrativeFade_39.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_40_SPOut__Stop_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_39();
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_NarrativeFade_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1121642190", "1121642190", "INTRO_010_B15", "box_PlaySequence_v8_40.SPOut", "box_NarrativeFade_39.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_40_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_PlaySequence_v8_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|563478973", "563478973", "INTRO_010_B15", "box_PlaySequence_v8_40.Started", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_40_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|780282094", "780282094", "INTRO_010_B15", "box_PlaySequence_v8_40.Stopped", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_72();
    l0 = self.box_SpawnAI_52;
    l1 = self.box_RemoveEntity_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1360778345", "1360778345", "INTRO_010_B15", "box_SpawnAI_52.Out", "box_RemoveEntity_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_35_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1774751076", "1774751076", "INTRO_010_B15", "box_UseContextualActionModifier_v3_35.Enabled", "box_UseContextualActionModifier_v3_35.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryPackModifier_6_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_1();
    l0 = self.box_InventoryPackModifier_6;
    l1 = self.box_NarrativeSceneSetup_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2024986576", "2024986576", "INTRO_010_B15", "box_InventoryPackModifier_6.Loaded", "box_NarrativeSceneSetup_1.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_MoonModifier_79_OnResetMoonDirection()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_22();
    l0 = self.box_MoonModifier_79;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1867637165", "1867637165", "INTRO_010_B15", "box_MoonModifier_79.OnResetMoonDirection", "box_ActivityEnd_22.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MoonModifier_79_OnResetMoonHDRMultiplier()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_79();
    l0 = self.box_MoonModifier_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|696486616", "696486616", "INTRO_010_B15", "box_MoonModifier_79.OnResetMoonHDRMultiplier", "box_MoonModifier_79.ResetMoonDirection", l0:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonDirection
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_90_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_90;
    l1 = self.box_StartMetaSequence_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1030382903", "1030382903", "INTRO_010_B15", "box_Delay_v5_90.TimeElapsed", "box_StartMetaSequence_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_EntityStatusListener_28_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_EntityStatusListener_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|174139806", "174139806", "INTRO_010_B15", "box_EntityStatusListener_28.Loaded", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_71_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_14();
    l0 = self.box_TeleportPawns_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1230007637", "1230007637", "INTRO_010_B15", "box_MissionBlockLayer_71.Disabled", "box_TeleportPawns_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_NarrativeFade_39_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_19();
    l0 = self.box_NarrativeFade_39;
    l1 = self.box_ConsoleCommand_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1683806831", "1683806831", "INTRO_010_B15", "box_NarrativeFade_39.FadedIn", "box_ConsoleCommand_v3_19.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_39_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_19();
    l0 = self.box_NarrativeFade_39;
    l1 = self.box_ConsoleCommand_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1499442573", "1499442573", "INTRO_010_B15", "box_NarrativeFade_39.FadedOut", "box_ConsoleCommand_v3_19.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SetTimeOfDay_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_53();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1824807795", "1824807795", "INTRO_010_B15", "box_SetTimeOfDay_50.Out", "box_CHEAT_SetEnvironmentTimeScale_53.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_74_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_63();
    l0 = self.box_Delay_v5_74;
    l1 = self.box_RemoveEntity_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1298281044", "1298281044", "INTRO_010_B15", "box_Delay_v5_74.TimeElapsed", "box_RemoveEntity_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_38();
    l0 = self.box_SpawnAI_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|493868005", "493868005", "INTRO_010_B15", "box_OutputOrder_v2_45.Out", "box_SpawnAI_38.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_32();
    l0 = self.box_Delay_v5_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|783615562", "783615562", "INTRO_010_B15", "box_OutputOrder_v2_45.Out", "box_Delay_v5_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1492005719", "1492005719", "INTRO_010_B15", "box_OutputOrder_v2_43.Out", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_44();
    l0 = self.box_BaseMissionBlock_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|647359652", "647359652", "INTRO_010_B15", "box_OutputOrder_v2_43.Out", "box_BaseMissionBlock_v2_44.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryPackModifier_6();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_InventoryPackModifier_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1514560573", "1514560573", "INTRO_010_B15", "box_MultipleOR_4.Out", "box_InventoryPackModifier_6.Load", l0:GetLuaBox(), l1:GetLuaBox());
    -- Load
    l1:Exec(0, params);
end;

function export:f_box_Music_Quest_v2_26_Started()
    local l0, l1;
    l0 = self.box_Music_Quest_v2_26;
    l1 = self.box_DisplayCinematicSkipPrompt_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1785127219", "1785127219", "INTRO_010_B15", "box_Music_Quest_v2_26.Started", "box_DisplayCinematicSkipPrompt_51.DisplayPrompt", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisplayPrompt
    l1:Exec(0, {
    });
end;

function export:f_box_Gate_v3_87_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_85();
    l0 = self.box_Gate_v3_87;
    l1 = self.box_EntityStatusListener_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|53778289", "53778289", "INTRO_010_B15", "box_Gate_v3_87.Closed", "box_EntityStatusListener_85.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_87_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_87;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1651209360", "1651209360", "INTRO_010_B15", "box_Gate_v3_87.Out", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = self.box_MultipleOR_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|232640245", "232640245", "INTRO_010_B15", "box_MultipleOR_46.Out", "box_OutputOrder_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_57_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_73();
    l0 = self.box_VisibilityModifier_57;
    l1 = self.box_RemoveEntity_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2059423513", "2059423513", "INTRO_010_B15", "box_VisibilityModifier_57.Disabled", "box_RemoveEntity_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_32_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_36();
    l0 = self.box_Delay_v5_32;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|600543965", "600543965", "INTRO_010_B15", "box_Delay_v5_32.TimeElapsed", "box_UseContextualActionModifier_v3_36.CallInterrupt", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallInterrupt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_76_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_57();
    l0 = self.box_OnceOnly_v3_76;
    l1 = self.box_VisibilityModifier_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1310000271", "1310000271", "INTRO_010_B15", "box_OnceOnly_v3_76.Out", "box_VisibilityModifier_57.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_81();
    l0 = self.box_RemoveEntity_v2_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1213280256", "1213280256", "INTRO_010_B15", "box_OutputOrder_v2_27.Out", "box_RemoveEntity_v2_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_71();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1936275967", "1936275967", "INTRO_010_B15", "box_OutputOrder_v2_27.Out", "box_MissionBlockLayer_71.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_89_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayerListener_v3_65();
    l0 = self.box_Delay_v5_89;
    l1 = self.box_BinkPlayerListener_v3_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1006420296", "1006420296", "INTRO_010_B15", "box_Delay_v5_89.TimeElapsed", "box_BinkPlayerListener_v3_65.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v4_42_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnCameraModifier_49();
    l0 = self.box_PawnCameraModifier_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1909722448", "1909722448", "INTRO_010_B15", "box_StopMetaSequence_v4_42.Stopped", "box_PawnCameraModifier_49.DisableCloseUp", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableCloseUp
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|981179060", "981179060", "INTRO_010_B15", "box_OutputOrder_v2_18.Out", "box_Delay_v5_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnCameraModifier_48();
    l0 = self.box_PawnCameraModifier_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1148104151", "1148104151", "INTRO_010_B15", "box_OutputOrder_v2_18.Out", "box_PawnCameraModifier_48.EnableCloseUp", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnableCloseUp
    l0:Exec(2, params);
end;

function export:OnEnter_box_PawnCameraModifier_49()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_86()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104425942117010608",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_38()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103886900946289817",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|90068334");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_44()
    local params;
    params = {
        -- missionBlockId,
        [0] = "36167385877830901",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|123771161");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "18152987403694984",
        -- missionLayerId,
        [1] = "27160244629195208",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_19()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "Skip",
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|132232292");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|154286392");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_63()
    local params;
    params = {
        -- Group,
        [0] = "#558D009B",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_83()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160259247180134",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_70()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_85()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104425942117010608",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|310753748");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|413782556");
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

function export:OnEnter_box_StimsEmitter_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|420189292");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2104284116288560697",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_14()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2099833871718684364",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_17()
    local params;
    params = {
        -- missionBlockId,
        [0] = "18152989679881571",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|489031784");
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
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_59()
    local params;
    DrawTextToScreen("Comment: flamer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: flamer");
    params = {
        -- EntitySpawner,
        [0] = "2104326064751790472",
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_82()
    local params;
    params = {
        -- Azimuth,
        [0] = -85,
        -- Elevation,
        [1] = 15,
        -- HDRMultiplier,
        [2] = 1,
        -- ResetAfterBeat,
        [3] = true,
        -- Size,
        [4] = 8,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_84()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104425942117010608",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_53()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_60()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2103885684946260896",
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 60,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2103885684946260896",
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 15,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_62()
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

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|714478902");
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
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
                [2] = self.f_box_OutputOrder_v2_64_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|721064512");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_33_Disabled,
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_33_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101633198067821098",
        -- Entity,
        [1] = "2101633191998663195",
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_66()
    local params;
    params = {
        -- BinkAudio,
        [0] = "1257790454",
        -- BinkAudioType,
        [1] = 2,
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\context_video.bik]],
        -- BinkSound,
        [3] = "274060232",
        -- BinkSoundFade,
        [6] = 0,
        -- BinkSoundType,
        [7] = 12,
        -- BinkVolumePercent,
        [8] = 1,
        -- Loop,
        [9] = false,
        -- MaterialName,
        [10] = "Black",
        -- ScreenEntity,
        [11] = self.player,
        -- TCR_Music,
        [12] = false,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_58()
    local params;
    DrawTextToScreen("Comment: c1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: c1");
    params = {
        -- EntitySpawner,
        [0] = "2099901723255510789",
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|873756812");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|882537882");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|959397368");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104356071920420399",
    };
    return params;
end;

function export:OnEnter_box_BinkPlayerListener_v3_65()
    local params;
    params = {
        -- BinkPathIDFilter,
        [0] = [[ui\singleplayer\video\context_video.bik]],
    };
    return params;
end;

function export:OnEnter_box_PawnCameraModifier_48()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1017184690");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_1()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_29()
    local params;
    params = {
        -- Group,
        [0] = "#BB8361B7",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_81()
    local params;
    params = {
        -- Group,
        [0] = "2099901713698789015",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_20()
    local params;
    params = {
        -- Group,
        [0] = "2103886752969146936",
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_16()
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

function export:OnEnter_box_SpawnAI_80()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099901713694594701",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_21()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160259178256988",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_69()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_77()
    local params;
    params = {
        -- Azimuth,
        [0] = -80,
        -- Elevation,
        [1] = 12,
        -- HDRMultiplier,
        [2] = 1,
        -- ResetAfterBeat,
        [3] = true,
        -- Size,
        [4] = 8,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_73()
    local params;
    params = {
        -- Group,
        [0] = "#E9A582C4",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_68()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160246105053923",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2103885684946260896",
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1274708658");
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

function export:OnEnter_box_UseContextualActionModifier_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1286977946");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_34_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_34_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101633204327819850",
        -- Entity,
        [1] = "2101633191998663195",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1295491026");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1330396613");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_47_Enabled,
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Unique_Fogs.Playgo_Fog",
        -- ratio,
        [9] = 1,
        -- sky,
        [11] = "FCZ_Default:Special.Playgo_Intro_Sky",
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1351102143");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_36_Disabled,
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_36_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101479249956324616",
        -- Entity,
        [1] = "2099901713698789015",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_78()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104284116288560697",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_72()
    local params;
    params = {
        -- Group,
        [0] = "#FBEA97FC",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_40()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2100015237978664675",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_PlayGo_010_Heli_Ride/cin_playgo_010_heli_ride.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_52()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103886884152296412",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1483493625");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_35_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099901713698789013",
        -- Entity,
        [1] = "2099901713698789015",
    };
    return params;
end;

function export:OnEnter_box_InventoryPackModifier_6()
    local params;
    params = {
        -- inventoryPackId,
        [0] = "9015224054845487",
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_79()
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

function export:OnEnter_box_Delay_v5_90()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103885684946260896",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1736121366");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_71_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152987403694984",
        -- missionLayerId,
        [1] = "36167385913176974",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_39()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1779839922");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_50_Out,
    });
    params = {
        -- Hour,
        [0] = 2,
        -- Minute,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_74()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1870823724");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_12()
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

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|1921729962");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_26()
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

function export:OnEnter_box_Gate_v3_87()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_57()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#E9A582C4",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_32()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 14,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2065913842");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2072261158");
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
        [8] = "INTRO_010_B15 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_89()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2088791657");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_42_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B15.domino|@INTRO_010_B15|2138899957");
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

function export:OnExit_box_StartMetaSequence_41_Out()
    local l0;
    l0 = self.box_StartMetaSequence_41;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_67_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
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
