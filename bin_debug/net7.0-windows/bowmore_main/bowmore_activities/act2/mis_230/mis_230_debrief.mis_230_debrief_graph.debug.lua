LUAC�< -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_230/mis_230_debrief.domino
-- User graph: MIS_230_DEBRIEF_graph
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PersistentParticlesModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3202019046.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1208466061.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1666472216.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015334630293318.part]], "CParticlesSystemParamResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_230_DEBRIEF = nil;
    Globals.MIS_230_DEBRIEF = {
        bAfter_230_Debrief_Cin = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_DEBRIEF.MIS_230_DEBRIEF_graph.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/AgentGroupModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AddGroup",
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
                name = "AnimalGroup",
                type = "group",
            },
            [1] = {
                name = "PawnGroup",
                type = "group",
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
                name = "TrackedMaterials",
            },
            [41] = {
                name = "Tutorial",
            },
        },
        controlInCount = 42,
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
    self._name = "MIS_230_DEBRIEF_graph";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph";
    self.Players = nil;
    self.player = nil;
    self.MetaSequenceID = 0;
    self.box_StopMetaSequence_v5_10 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|175990434");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_10_Stopped,
    });
    self.box_VisibilityModifier_26 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|190923644");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_18 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|193581098");
    l0:SetConnections({
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|539989626");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_31 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|568290018");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_31_Out,
    });
    self.box_SoundModifier_v2_15 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|669990549");
    l0:SetConnections({
    });
    self.box_TeleportPawns_20 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|711062488");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_20_Out,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|796055446");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|830418544");
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
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|862693714");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_GunsForHireSystemModifier_12 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1021768295");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_12_Disabled,
    });
    self.box_NarrativeFade_13 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1182440941");
    l0:SetConnections({
    });
    self.box_StartMetaSequence_17 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1254692855");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_17_Out,
    });
    self.box_PlaySequence_v8_11 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1264191604");
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
        [0] = self.f_box_PlaySequence_v8_11_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_11_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_11_SPOut__FadeIn_,
                },
                [1] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_11_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_11_Started,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1284850339");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1288184369");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_PersistentParticlesModifier_9 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1530052016");
    l0:SetConnections({
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1632263446");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_Music_Quest_v2_40 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1663452890");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_30 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1834877708");
    l0:SetConnections({
    });
    self.box_PostFx_v3_32 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1852413961");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_24 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|2085181694");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|928147560", "928147560", "MIS_230_DEBRIEF_graph", "In", "box_ActivityAcknowledgeGate_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_13();
    l0 = self.box_NarrativeFade_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1553816946", "1553816946", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_33.Out", "box_NarrativeFade_13.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_32();
    l0 = self.box_PostFx_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1118002582", "1118002582", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_33.Out", "box_PostFx_v3_32.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_15();
    l0 = self.box_SoundModifier_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|642131156", "642131156", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_33.Out", "box_SoundModifier_v2_15.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|466131127", "466131127", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_25.Out", "box_Delay_v5_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_1();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1538926857", "1538926857", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_25.Out", "box_AgentGroupModifier_1.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_30();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1113936736", "1113936736", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_25.Out", "box_CHEAT_SetEnvironmentTimeScale_30.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_29();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1917298484", "1917298484", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_25.Out", "box_SetTimeOfDay_29.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v5_10_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_StopMetaSequence_v5_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|252134621", "252134621", "MIS_230_DEBRIEF_graph", "box_StopMetaSequence_v5_10.Stopped", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_38();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1722217700", "1722217700", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_36.Out", "box_OverrideDisabledLogicId_38.HudNotificationsQueueCenterMessage", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueueCenterMessage
    l0:Exec(18, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_40();
    l0 = self.box_Music_Quest_v2_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1087594290", "1087594290", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_36.Out", "box_Music_Quest_v2_40.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_36_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|476861724", "476861724", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_36.Out", "box_ActivityEnd_8.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_18();
    l0 = self.box_Music_Quest_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|919951261", "919951261", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_19.Out", "box_Music_Quest_v2_18.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|89657256", "89657256", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_19.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1085327352", "1085327352", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_19.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_35();
    l0 = self.box_MultipleOR_34;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|668613248", "668613248", "MIS_230_DEBRIEF_graph", "box_MultipleOR_34.Out", "box_SoundMixing_35.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|620474263", "620474263", "MIS_230_DEBRIEF_graph", "box_CHEAT_SetEnvironmentTimeScale_31.Out", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_31();
    l0 = self.box_TeleportPawns_20;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|903725782", "903725782", "MIS_230_DEBRIEF_graph", "box_TeleportPawns_20.Out", "box_CHEAT_SetEnvironmentTimeScale_31.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_10();
    l0 = self.box_MultipleOR_16;
    l1 = self.box_StopMetaSequence_v5_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1643164670", "1643164670", "MIS_230_DEBRIEF_graph", "box_MultipleOR_16.Out", "box_StopMetaSequence_v5_10.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1423940436", "1423940436", "MIS_230_DEBRIEF_graph", "box_MultipleOR_4.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|973248722", "973248722", "MIS_230_DEBRIEF_graph", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1215614516", "1215614516", "MIS_230_DEBRIEF_graph", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_22();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1475660048", "1475660048", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_23.Out", "box_SetContextualStrategy_22.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_24();
    l0 = self.box_VisibilityModifier_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1604525538", "1604525538", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_23.Out", "box_VisibilityModifier_24.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_18();
    l0 = self.box_Music_Quest_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|530024631", "530024631", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_5.Out", "box_Music_Quest_v2_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_9();
    l0 = self.box_PersistentParticlesModifier_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1368412016", "1368412016", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_5.Out", "box_PersistentParticlesModifier_9.StopParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopParticles
    l0:Exec(1, params);
end;

function export:f_box_GunsForHireSystemModifier_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_GunsForHireSystemModifier_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|330323200", "330323200", "MIS_230_DEBRIEF_graph", "box_GunsForHireSystemModifier_12.Disabled", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_12();
    l0 = self.box_GunsForHireSystemModifier_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1227261556", "1227261556", "MIS_230_DEBRIEF_graph", "box_GetPlayerGroup_v2_6.Out", "box_GunsForHireSystemModifier_12.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_StartMetaSequence_17_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_17_Out();
    params = self:OnEnter_box_PlaySequence_v8_11();
    l0 = self.box_StartMetaSequence_17;
    l1 = self.box_PlaySequence_v8_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1350367358", "1350367358", "MIS_230_DEBRIEF_graph", "box_StartMetaSequence_17.Out", "box_PlaySequence_v8_11.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_11_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_11;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|707578960", "707578960", "MIS_230_DEBRIEF_graph", "box_PlaySequence_v8_11.Finished", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_11_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_PlaySequence_v8_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1113601759", "1113601759", "MIS_230_DEBRIEF_graph", "box_PlaySequence_v8_11.Skipped", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_11_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_PlaySequence_v8_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|17966230", "17966230", "MIS_230_DEBRIEF_graph", "box_PlaySequence_v8_11.SPOut", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_11_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_PlaySequence_v8_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|873054126", "873054126", "MIS_230_DEBRIEF_graph", "box_PlaySequence_v8_11.SPOut", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_11_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_PlaySequence_v8_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1953878368", "1953878368", "MIS_230_DEBRIEF_graph", "box_PlaySequence_v8_11.Started", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_20();
    l0 = self.box_Delay_v5_21;
    l1 = self.box_TeleportPawns_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1695331255", "1695331255", "MIS_230_DEBRIEF_graph", "box_Delay_v5_21.TimeElapsed", "box_TeleportPawns_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_6();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|210178100", "210178100", "MIS_230_DEBRIEF_graph", "box_ActivityInitialized_3.Out", "box_GetPlayerGroup_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_1_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1239579045", "1239579045", "MIS_230_DEBRIEF_graph", "box_AgentGroupModifier_1.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_14;
    l1 = self.box_StartMetaSequence_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|829846318", "829846318", "MIS_230_DEBRIEF_graph", "box_Delay_v5_14.TimeElapsed", "box_StartMetaSequence_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1969161483", "1969161483", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_2.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_13();
    l0 = self.box_NarrativeFade_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|376738391", "376738391", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_2.Out", "box_NarrativeFade_13.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|584125106", "584125106", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_28.Out", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_27();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|909030407", "909030407", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_28.Out", "box_SetContextualStrategy_27.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_26();
    l0 = self.box_VisibilityModifier_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|2045449994", "2045449994", "MIS_230_DEBRIEF_graph", "box_OutputOrder_v2_28.Out", "box_VisibilityModifier_26.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|12761090");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|46975090");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
                [3] = self.f_box_OutputOrder_v2_25_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|83299981");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109082509881910827",
        -- Group,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_10()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_26()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_18()
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
        [6] = "1666472216",
        -- StopEvent,
        [7] = "1208466061",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|377588400");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
                [2] = self.f_box_OutputOrder_v2_36_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|500795224");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|548216112");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_31()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|615350812");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_15()
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

function export:OnEnter_box_TeleportPawns_20()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2108710450114872256",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|890441793");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|949180668");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|983110819");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_12()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1035873771");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_13()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_11()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2108351382055572140",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m230_fatherback/cin_m230_fatherback.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1336186828");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_1_Out,
    });
    params = {
        -- PawnGroup,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_9()
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

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_40()
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
        [6] = "1666472216",
        -- StopEvent,
        [7] = "1208466061",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1801963673");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_30()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_32()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|1961080825");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|2081152904");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_24()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_DEBRIEF.domino|@MIS_230_DEBRIEF_graph|2111206407");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 16,
        -- Minute,
        [1] = 30,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_17_Out()
    local l0;
    l0 = self.box_StartMetaSequence_17;
    self.MetaSequenceID = l0:GetDataOutValue(0);
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
