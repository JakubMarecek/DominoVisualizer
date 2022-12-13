LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act1/bowmore_act1_start.domino
-- User graph: Bowmore_ACT1_Start_Main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/ChangeSunOrientation_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DisbandUniqueGunsForHire.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PersistentParticlesModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayActBreakUI.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3202019046.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2270105790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1281529039.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015334630293318.part]], "CParticlesSystemParamResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/Bowmore_ACT1_Start.Bowmore_ACT1_Start_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua")] = {
        stateless = false,
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
    metadataTable[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "RequestDisband",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "RequestFail",
                delayed = false,
            },
            [1] = {
                name = "RequestSuccess",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "player",
                type = "entity",
            },
            [1] = {
                name = "uniqueCharacterDesc",
                type = "genericdb",
            },
        },
        dataInCount = 2,
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
    self._name = "Bowmore_ACT1_Start_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main";
    self.player = nil;
    self.MetaSequenceID = 0;
    self.MetaSequenceID2 = 0;
    self.EXTRA02 = "2106845081387406047";
    self.EXTRA01 = "2106856617881386603";
    self.box_VisibilityModifier_73 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|3990191");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|27484021");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_StartMetaSequence_17 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|71203697");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_17_Out,
    });
    self.box_SpawnAI_46 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|168338178");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_51 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|186084140");
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
    self.box_LockTimeOfDay_56 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|187448537");
    l0:SetConnections({
    });
    self.box_MultipleOR_64 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|336970691");
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
        [0] = self.f_box_MultipleOR_64_Out,
    });
    self.box_PlaySequence_v8_49 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|357823185");
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
        [4] = self.f_box_PlaySequence_v8_49_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_49_Stopped,
    });
    self.box_Music_Quest_v2_33 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|364098918");
    l0:SetConnections({
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|412089108");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_24_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_Delay_v5_25 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|415145714");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_25_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_25_TimeElapsed,
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|421153659");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_NarrativeFade_13 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|422460358");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_13_FadedOut,
    });
    self.box_Music_Quest_v2_36 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|447675443");
    l0:SetConnections({
    });
    self.box_NarrativeFade_26 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|450615852");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_26_FadedIn,
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_26_FadedOut,
    });
    self.box_PostFx_v3_31 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|517588114");
    l0:SetConnections({
    });
    self.box_ChangeSunOrientation_v4_42 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|567478319");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_18 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|598236746");
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
        [0] = self.f_box_PlaySequence_v8_18_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_18_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIN",
                    value = self.f_box_PlaySequence_v8_18_SPOut__FadeIN_,
                },
                [1] = {
                    string = "FadeOUT",
                    value = self.f_box_PlaySequence_v8_18_SPOut__FadeOUT_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_18_Started,
    });
    self.box_ChangeSunOrientation_v4_44 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|623917863");
    l0:SetConnections({
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|816768678");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_28_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_NarrativeCS_Cinema_37 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeCS_Cinema.debug.lua");
    l0 = self.box_NarrativeCS_Cinema_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeCS_Cinema_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1060479300");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_55 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1064755339");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_55_Disabled,
    });
    self.box_Delay_v5_68 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1104065109");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_68_TimeElapsed,
    });
    self.box_NarrativeFade_27 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1109033756");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_27_FadedIn,
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1116627873");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_57_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1128260728");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1151010472");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_NarrativeSceneSetup_6 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1212270878");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_6_Holstered,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_11 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1227381269");
    l0:SetConnections({
    });
    self.box_LookAtTrigger_v2_50 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1286360155");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_50_EnterFOV,
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1295786203");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_StartMetaSequence_29 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1309378293");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_29_Out,
    });
    self.box_StopMetaSequence_v5_20 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1371335944");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_20_Stopped,
    });
    self.box_Music_Quest_v2_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1485059245");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_66 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1501916135");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_30 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1511286677");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_30_Stopped,
    });
    self.box_NarrativeSceneCleanUp_V2_47 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1614256914");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_47_Out,
    });
    self.box_VisibilityModifier_71 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1614323822");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_63 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1643644904");
    l0:SetConnections({
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1655226553");
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
    self.box_Gate_v3_53 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1702655308");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_53_Out,
    });
    self.box_NarrativeFade_5 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1717231814");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_5_FadedIn,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1718403606");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1758234208");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_PlaySequence_v8_19 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1766984138");
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
        [0] = self.f_box_PlaySequence_v8_19_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_19_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIN",
                    value = self.f_box_PlaySequence_v8_19_SPOut__FadeIN_,
                },
                [1] = {
                    string = "FadeOUT",
                    value = self.f_box_PlaySequence_v8_19_SPOut__FadeOUT_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_19_Started,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1875993824");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_Gate_v3_61 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1927482234");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_61_Out,
    });
    self.box_OverrideMenuAccessibility_v2_21 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1984858348");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_21_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_43 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|2064071977");
    l0:SetConnections({
    });
    self.box_NarrativeCS_Cinema_40 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeCS_Cinema.debug.lua");
    l0 = self.box_NarrativeCS_Cinema_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeCS_Cinema_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|2075005794");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_NarrativeCS_Cinema_40_Stopped,
    });
    self.box_DisplayActBreakUI_32 = cbox:CreateBox("Domino/System/UI/DisplayActBreakUI.lua");
    l0 = self.box_DisplayActBreakUI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayActBreakUI_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|2131982248");
    l0:SetConnections({
        -- Hidden,
        [1] = self.f_box_DisplayActBreakUI_32_Hidden,
    });
    self.box_PersistentParticlesModifier_59 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|2142853869");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1119804372", "1119804372", "Bowmore_ACT1_Start_Main", "In", "box_ActivityAcknowledgeGate_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|19531460", "19531460", "Bowmore_ACT1_Start_Main", "OnLeaveZone", "box_ActivityRetry_v2_4.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1838193688", "1838193688", "Bowmore_ACT1_Start_Main", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|49973447", "49973447", "Bowmore_ACT1_Start_Main", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StartMetaSequence_17_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_17_Out();
    params = self:OnEnter_box_PlaySequence_v8_18();
    l0 = self.box_StartMetaSequence_17;
    l1 = self.box_PlaySequence_v8_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1824442218", "1824442218", "Bowmore_ACT1_Start_Main", "box_StartMetaSequence_17.Out", "box_PlaySequence_v8_18.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_41();
    l0 = self.box_Music_Quest_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|899914262", "899914262", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_45.Out", "box_Music_Quest_v2_41.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_46();
    l0 = self.box_SpawnAI_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|827873803", "827873803", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_45.Out", "box_SpawnAI_46.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1457809437", "1457809437", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_45.Out", "box_ActivityEnd_3.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|576632786", "576632786", "Bowmore_ACT1_Start_Main", "box_SetTimeOfDay_74.Out", "box_Delay_v5_57.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_44();
    l0 = self.box_ChangeSunOrientation_v4_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|604239118", "604239118", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_48.Out", "box_ChangeSunOrientation_v4_44.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_43();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|946926625", "946926625", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_48.Out", "box_CHEAT_SetEnvironmentTimeScale_43.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_30();
    l0 = self.box_StopMetaSequence_v5_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1685755217", "1685755217", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_9.Out", "box_StopMetaSequence_v5_30.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_61();
    l0 = self.box_Gate_v3_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|889248945", "889248945", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_9.Out", "box_Gate_v3_61.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|140280467", "140280467", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_9.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_65();
    l0 = self.box_MultipleOR_64;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|60739505", "60739505", "Bowmore_ACT1_Start_Main", "box_MultipleOR_64.Out", "box_SoundMixing_65.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_49_Started()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_50();
    l0 = self.box_PlaySequence_v8_49;
    l1 = self.box_LookAtTrigger_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1197471323", "1197471323", "Bowmore_ACT1_Start_Main", "box_PlaySequence_v8_49.Started", "box_LookAtTrigger_v2_50.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_49_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_PlaySequence_v8_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|249449370", "249449370", "Bowmore_ACT1_Start_Main", "box_PlaySequence_v8_49.Stopped", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_24_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_Delay_v5_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|176122867", "176122867", "Bowmore_ACT1_Start_Main", "box_Delay_v5_24.Started", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_Delay_v5_24;
    l1 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1426598737", "1426598737", "Bowmore_ACT1_Start_Main", "box_Delay_v5_24.TimeElapsed", "box_Delay_v5_39.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_25_Started()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeCS_Cinema_37();
    l0 = self.box_Delay_v5_25;
    l1 = self.box_NarrativeCS_Cinema_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|834914811", "834914811", "Bowmore_ACT1_Start_Main", "box_Delay_v5_25.Started", "box_NarrativeCS_Cinema_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_25_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_25;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1134984881", "1134984881", "Bowmore_ACT1_Start_Main", "box_Delay_v5_25.TimeElapsed", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_10();
    l0 = self.box_Delay_v5_39;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1699267222", "1699267222", "Bowmore_ACT1_Start_Main", "box_Delay_v5_39.TimeElapsed", "box_GetLocalPlayer_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_13_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_25();
    l0 = self.box_NarrativeFade_13;
    l1 = self.box_Delay_v5_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1753516537", "1753516537", "Bowmore_ACT1_Start_Main", "box_NarrativeFade_13.FadedOut", "box_Delay_v5_25.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_33();
    l0 = self.box_Music_Quest_v2_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|376922761", "376922761", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_58.Out", "box_Music_Quest_v2_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_59();
    l0 = self.box_PersistentParticlesModifier_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1255371814", "1255371814", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_58.Out", "box_PersistentParticlesModifier_59.StopParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopParticles
    l0:Exec(1, params);
end;

function export:f_box_NarrativeFade_26_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_66();
    l0 = self.box_NarrativeFade_26;
    l1 = self.box_SoundModifier_v2_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1660514414", "1660514414", "Bowmore_ACT1_Start_Main", "box_NarrativeFade_26.FadedIn", "box_SoundModifier_v2_66.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_NarrativeFade_26_FadedOut()
    local l0, l1;
    l0 = self.box_NarrativeFade_26;
    l1 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1404000355", "1404000355", "Bowmore_ACT1_Start_Main", "box_NarrativeFade_26.FadedOut", "box_MultipleOR_64.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_18_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_18;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|750180046", "750180046", "Bowmore_ACT1_Start_Main", "box_PlaySequence_v8_18.Finished", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_18_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_PlaySequence_v8_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1902776548", "1902776548", "Bowmore_ACT1_Start_Main", "box_PlaySequence_v8_18.Skipped", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_18_SPOut__FadeIN_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_26();
    l0 = self.box_PlaySequence_v8_18;
    l1 = self.box_NarrativeFade_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1591167625", "1591167625", "Bowmore_ACT1_Start_Main", "box_PlaySequence_v8_18.SPOut", "box_NarrativeFade_26.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_18_SPOut__FadeOUT_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_26();
    l0 = self.box_PlaySequence_v8_18;
    l1 = self.box_NarrativeFade_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|323855144", "323855144", "Bowmore_ACT1_Start_Main", "box_PlaySequence_v8_18.SPOut", "box_NarrativeFade_26.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_18_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_PlaySequence_v8_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1368254773", "1368254773", "Bowmore_ACT1_Start_Main", "box_PlaySequence_v8_18.Started", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_55();
    l0 = self.box_VisibilityModifier_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|360559248", "360559248", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_72.Out", "box_VisibilityModifier_55.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_72_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_71();
    l0 = self.box_VisibilityModifier_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|456148161", "456148161", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_72.Out", "box_VisibilityModifier_71.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_72_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_73();
    l0 = self.box_VisibilityModifier_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|823936962", "823936962", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_72.Out", "box_VisibilityModifier_73.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_28_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_Delay_v5_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1565578909", "1565578909", "Bowmore_ACT1_Start_Main", "box_Delay_v5_28.Started", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_28;
    l1 = self.box_StartMetaSequence_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1772107994", "1772107994", "Bowmore_ACT1_Start_Main", "box_Delay_v5_28.TimeElapsed", "box_StartMetaSequence_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_GetLocalPlayer_v2_10_Out()
    local l0;
    self:OnExit_box_GetLocalPlayer_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1896018719", "1896018719", "Bowmore_ACT1_Start_Main", "box_GetLocalPlayer_v2_10.Out", "box_StartMetaSequence_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_47();
    l0 = self.box_NarrativeSceneCleanUp_V2_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1778777150", "1778777150", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_69.Out", "box_NarrativeSceneCleanUp_V2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_62();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1431450033", "1431450033", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_69.Out", "box_SoundMixing_62.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_36();
    l0 = self.box_Music_Quest_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1789575837", "1789575837", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_38.Out", "box_Music_Quest_v2_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_49();
    l0 = self.box_PlaySequence_v8_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|550237479", "550237479", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_38.Out", "box_PlaySequence_v8_49.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_VisibilityModifier_55_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeCS_Cinema_40();
    l0 = self.box_VisibilityModifier_55;
    l1 = self.box_NarrativeCS_Cinema_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|304760366", "304760366", "Bowmore_ACT1_Start_Main", "box_VisibilityModifier_55.Disabled", "box_NarrativeCS_Cinema_40.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_68_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayActBreakUI_32();
    l0 = self.box_Delay_v5_68;
    l1 = self.box_DisplayActBreakUI_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1114790108", "1114790108", "Bowmore_ACT1_Start_Main", "box_Delay_v5_68.TimeElapsed", "box_DisplayActBreakUI_32.Show", l0:GetLuaBox(), l1:GetLuaBox());
    -- Show
    l1:Exec(0, params);
end;

function export:f_box_NarrativeFade_27_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_31();
    l0 = self.box_NarrativeFade_27;
    l1 = self.box_PostFx_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1240203184", "1240203184", "Bowmore_ACT1_Start_Main", "box_NarrativeFade_27.FadedIn", "box_PostFx_v3_31.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_57_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_60();
    l0 = self.box_Delay_v5_57;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1518424346", "1518424346", "Bowmore_ACT1_Start_Main", "box_Delay_v5_57.Started", "box_SoundMixing_60.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_5();
    l0 = self.box_Delay_v5_57;
    l1 = self.box_NarrativeFade_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|135547304", "135547304", "Bowmore_ACT1_Start_Main", "box_Delay_v5_57.TimeElapsed", "box_NarrativeFade_5.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_70();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1519402299", "1519402299", "Bowmore_ACT1_Start_Main", "box_MultipleOR_8.Out", "box_SoundMixing_70.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_20();
    l0 = self.box_MultipleOR_23;
    l1 = self.box_StopMetaSequence_v5_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|981213264", "981213264", "Bowmore_ACT1_Start_Main", "box_MultipleOR_23.Out", "box_StopMetaSequence_v5_20.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneSetup_6_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_13();
    l0 = self.box_NarrativeSceneSetup_6;
    l1 = self.box_NarrativeFade_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|382090603", "382090603", "Bowmore_ACT1_Start_Main", "box_NarrativeSceneSetup_6.Holstered", "box_NarrativeFade_13.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_DisbandUniqueGunsForHire_15_RequestFail()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|167192833", "167192833", "Bowmore_ACT1_Start_Main", "box_DisbandUniqueGunsForHire_15.RequestFail", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisbandUniqueGunsForHire_15_RequestSuccess()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|278270834", "278270834", "Bowmore_ACT1_Start_Main", "box_DisbandUniqueGunsForHire_15.RequestSuccess", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LookAtTrigger_v2_50_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_50;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1524621933", "1524621933", "Bowmore_ACT1_Start_Main", "box_LookAtTrigger_v2_50.EnterFOV", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_MultipleOR_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1037919154", "1037919154", "Bowmore_ACT1_Start_Main", "box_MultipleOR_22.Out", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_29_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_29_Out();
    params = self:OnEnter_box_PlaySequence_v8_19();
    l0 = self.box_StartMetaSequence_29;
    l1 = self.box_PlaySequence_v8_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|977469513", "977469513", "Bowmore_ACT1_Start_Main", "box_StartMetaSequence_29.Out", "box_PlaySequence_v8_19.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v5_20_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = self.box_StopMetaSequence_v5_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|483259685", "483259685", "Bowmore_ACT1_Start_Main", "box_StopMetaSequence_v5_20.Stopped", "box_OutputOrder_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_27();
    l0 = self.box_NarrativeFade_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1063433231", "1063433231", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_67.Out", "box_NarrativeFade_27.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_63();
    l0 = self.box_SoundModifier_v2_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|555887038", "555887038", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_67.Out", "box_SoundModifier_v2_63.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_33();
    l0 = self.box_Music_Quest_v2_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1288179644", "1288179644", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_34.Out", "box_Music_Quest_v2_33.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|365330288", "365330288", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_34.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_6();
    l0 = self.box_NarrativeSceneSetup_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|897437879", "897437879", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_12.Out", "box_NarrativeSceneSetup_6.HolsterWeapon", clone:GetLuaBox(), l0:GetLuaBox());
    -- HolsterWeapon
    l0:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v5_30_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_68();
    l0 = self.box_StopMetaSequence_v5_30;
    l1 = self.box_Delay_v5_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|639656611", "639656611", "Bowmore_ACT1_Start_Main", "box_StopMetaSequence_v5_30.Stopped", "box_Delay_v5_68.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SoundMixing_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisbandUniqueGunsForHire_15();
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1079141576", "1079141576", "Bowmore_ACT1_Start_Main", "box_SoundMixing_70.Out", "box_DisbandUniqueGunsForHire_15.RequestDisband", clone:GetLuaBox(), l0:GetLuaBox());
    -- RequestDisband
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_V2_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_NarrativeSceneCleanUp_V2_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1748673285", "1748673285", "Bowmore_ACT1_Start_Main", "box_NarrativeSceneCleanUp_V2_47.Out", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|168485502", "168485502", "Bowmore_ACT1_Start_Main", "box_MultipleOR_16.Out", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_49();
    l0 = self.box_Gate_v3_53;
    l1 = self.box_PlaySequence_v8_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1503772958", "1503772958", "Bowmore_ACT1_Start_Main", "box_Gate_v3_53.Out", "box_PlaySequence_v8_49.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_NarrativeFade_5_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_NarrativeFade_5;
    l1 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1678671353", "1678671353", "Bowmore_ACT1_Start_Main", "box_NarrativeFade_5.FadedIn", "box_Delay_v5_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_ActivityInitialized_2;
    l1 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1547827966", "1547827966", "Bowmore_ACT1_Start_Main", "box_ActivityInitialized_2.Out", "box_Delay_v5_24.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = self.box_Delay_v5_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1465654143", "1465654143", "Bowmore_ACT1_Start_Main", "box_Delay_v5_7.TimeElapsed", "box_OutputOrder_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_19_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_19;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1292721817", "1292721817", "Bowmore_ACT1_Start_Main", "box_PlaySequence_v8_19.Finished", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_19_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_PlaySequence_v8_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1153947843", "1153947843", "Bowmore_ACT1_Start_Main", "box_PlaySequence_v8_19.Skipped", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_19_SPOut__FadeIN_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = self.box_PlaySequence_v8_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1202120781", "1202120781", "Bowmore_ACT1_Start_Main", "box_PlaySequence_v8_19.SPOut", "box_OutputOrder_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_19_SPOut__FadeOUT_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_27();
    l0 = self.box_PlaySequence_v8_19;
    l1 = self.box_NarrativeFade_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1636234918", "1636234918", "Bowmore_ACT1_Start_Main", "box_PlaySequence_v8_19.SPOut", "box_NarrativeFade_27.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_19_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = self.box_PlaySequence_v8_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|840588274", "840588274", "Bowmore_ACT1_Start_Main", "box_PlaySequence_v8_19.Started", "box_OutputOrder_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_53();
    l0 = self.box_MultipleOR_52;
    l1 = self.box_Gate_v3_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|328102746", "328102746", "Bowmore_ACT1_Start_Main", "box_MultipleOR_52.Out", "box_Gate_v3_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_53();
    l0 = self.box_Gate_v3_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|169145149", "169145149", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_54.Out", "box_Gate_v3_53.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_61();
    l0 = self.box_Gate_v3_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|934732226", "934732226", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_54.Out", "box_Gate_v3_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_51();
    l0 = self.box_Gate_v3_61;
    l1 = self.box_PlaySequence_v8_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|2014422673", "2014422673", "Bowmore_ACT1_Start_Main", "box_Gate_v3_61.Out", "box_PlaySequence_v8_51.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_42();
    l0 = self.box_ChangeSunOrientation_v4_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|557807533", "557807533", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_14.Out", "box_ChangeSunOrientation_v4_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_11();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|426897769", "426897769", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_14.Out", "box_CHEAT_SetEnvironmentTimeScale_11.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LockTimeOfDay_56();
    l0 = self.box_LockTimeOfDay_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|2046290250", "2046290250", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_14.Out", "box_LockTimeOfDay_56.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
end;

function export:f_box_OverrideMenuAccessibility_v2_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_74();
    l0 = self.box_OverrideMenuAccessibility_v2_21;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1056650149", "1056650149", "Bowmore_ACT1_Start_Main", "box_OverrideMenuAccessibility_v2_21.Out", "box_SetTimeOfDay_74.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeCS_Cinema_40_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_21();
    l0 = self.box_NarrativeCS_Cinema_40;
    l1 = self.box_OverrideMenuAccessibility_v2_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|407024786", "407024786", "Bowmore_ACT1_Start_Main", "box_NarrativeCS_Cinema_40.Stopped", "box_OverrideMenuAccessibility_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_36();
    l0 = self.box_Music_Quest_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|185436118", "185436118", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_35.Out", "box_Music_Quest_v2_36.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|199449871", "199449871", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_35.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_35_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|701138035", "701138035", "Bowmore_ACT1_Start_Main", "box_OutputOrder_v2_35.Out", "box_MultipleOR_64.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_DisplayActBreakUI_32_Hidden()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_DisplayActBreakUI_32;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|850072005", "850072005", "Bowmore_ACT1_Start_Main", "box_DisplayActBreakUI_32.Hidden", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:OnEnter_box_VisibilityModifier_73()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2110035450470095217",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|60003719");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|129386334");
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
                [2] = self.f_box_OutputOrder_v2_45_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|153411850");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_74_Out,
    });
    params = {
        -- Hour,
        [0] = 5,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_46()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109591979150029312",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|185083081");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_51()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109688761578176986",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_m030_pitchhomebase/cin_m030_pitchhomebase_part1_rabbit.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_LockTimeOfDay_56()
    local params;
    params = {
        -- Hour,
        [0] = 18,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|308799498");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_49()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109688761578176986",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_m030_pitchhomebase/cin_m030_pitchhomebase_part1_rabbit_loop.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_33()
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
        [6] = "1281529039",
        -- StopEvent,
        [7] = "2270105790",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_25()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_39()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_13()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|444706907");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_36()
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
        [6] = "1281529039",
        -- StopEvent,
        [7] = "2270105790",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_26()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_31()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_42()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 277,
        -- ElevationDegree,
        [1] = 19.5,
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_18()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2108928563276178407",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_m030_pitchhomebase/cin_m030_pitchhomebase_part1.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_44()
    local params;
    params = {
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|695854031");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|779715285");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
                [1] = self.f_box_OutputOrder_v2_72_Out_1,
                [2] = self.f_box_OutputOrder_v2_72_Out_2,
            },
            count = 4,
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
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|961565495");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|975984460");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1008249222");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1019047909");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeCS_Cinema_37()
    local params;
    params = {
        -- CS_Cinema_Animals,
        [0] = "2109097480797842385",
        -- CS_Cinema_NPCs,
        [1] = "2109097485052963795",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_55()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109688814952792540",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_68()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.8,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_27()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_6()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_11()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1227389835");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_M140_Exterior_Amb_Mute",
    };
    return params;
end;

function export:OnEnter_box_DisbandUniqueGunsForHire_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisbandUniqueGunsForHire_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1258955482");
    l0:SetConnections({
        -- RequestFail,
        [0] = self.f_box_DisbandUniqueGunsForHire_15_RequestFail,
        -- RequestSuccess,
        [1] = self.f_box_DisbandUniqueGunsForHire_15_RequestSuccess,
    });
    params = {
        -- uniqueCharacterDesc,
        [1] = "9015333852467969",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109688885389836788",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_20()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1414805122");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
                [1] = self.f_box_OutputOrder_v2_67_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1425886068");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_41()
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
        [6] = "1281529039",
        -- StopEvent,
        [7] = "2270105790",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1489142436");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_66()
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

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1503865670");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_30()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1557446165");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_70_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_47()
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

function export:OnEnter_box_VisibilityModifier_71()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2110035461377382771",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_63()
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

function export:OnEnter_box_Gate_v3_53()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_5()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_19()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID2,
        -- SceneEntity,
        [3] = "2108929314394236073",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_m030_pitchhomebase/cin_m030_pitchhomebase_part2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1897472759");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_61()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|1934763252");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
                [2] = self.f_box_OutputOrder_v2_14_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_21()
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
        -- HomebaseMenuEnabled,
        [4] = false,
        -- LootMenuEnabled,
        [5] = false,
        -- OnlineMenuEnabled,
        [6] = false,
        -- PerksMenuEnabled,
        [7] = false,
        -- SquadMenuEnabled,
        [8] = false,
        -- WorldmapMenuEnabled,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_43()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeCS_Cinema_40()
    local params;
    params = {
        -- CS_Cinema_Animals,
        [0] = "2109097480797842385",
        -- CS_Cinema_NPCs,
        [1] = "2109097485052963795",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\Bowmore_ACT1_Start.domino|@Bowmore_ACT1_Start_Main|2102283948");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
                [2] = self.f_box_OutputOrder_v2_35_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DisplayActBreakUI_32()
    local params;
    params = {
        -- Act,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_59()
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

function export:OnExit_box_StartMetaSequence_17_Out()
    local l0;
    l0 = self.box_StartMetaSequence_17;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_29_Out()
    local l0;
    l0 = self.box_StartMetaSequence_29;
    self.MetaSequenceID2 = l0:GetDataOutValue(0);
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
