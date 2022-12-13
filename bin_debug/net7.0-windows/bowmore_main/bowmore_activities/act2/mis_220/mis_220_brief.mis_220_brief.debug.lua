LUACN" -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_220/mis_220_brief.domino
-- User graph: MIS_220_BRIEF
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetTimeOfDay_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PersistentParticlesModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        
        -- Load resources
        cboxRes:LoadResource([[357605033.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015334630293318.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[439384452.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/mis_220_brief.MIS_220_BRIEF.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_220_BRIEF";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF";
    self.MetaSequenceID_FAINT = 0;
    self.gPlayer = nil;
    self.MetaSequenceID_WAKE = 0;
    self.eLocalPlayer = nil;
    self.MetaSequenceID = 0;
    self.UNI108 = nil;
    self.MetaSequenceID2 = 0;
    self.box_StartMetaSequence_27 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|71077208");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_27_Out,
    });
    self.box_StopMetaSequence_v5_31 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|79341857");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_31_Stopped,
    });
    self.box_ProximityTrigger_v3_30 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|87363766");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_30_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_30_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_30_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_30_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_30_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_30_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_30_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_30_Use,
    });
    self.box_Delay_v5_56 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|169067425");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_56_TimeElapsed,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_19 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|348599999");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_8 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|478024371");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_8_Stopped,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|519791386");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_EntityStatusListener_25 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|572371601");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_25_Loaded,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|614350316");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_47 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|659362211");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_47_Out,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|674807602");
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
        [0] = self.f_box_MultipleOR_48_Out,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|767973046");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_PlaySequence_v8_71 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|795146968");
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
        [0] = self.f_box_PlaySequence_v8_71_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_71_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_71_SPOut__FadeIn_,
                },
                [1] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_71_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_71_Started,
    });
    self.box_RemoveEntity_v2_50 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|861025233");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_50_Out,
    });
    self.box_NarrativeSceneSetup_13 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|893067848");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_13_Holstered,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|895903541");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_TeleportPawns_64 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1026102605");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_64_Out,
    });
    self.box_MultipleOR_54 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1070685300");
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
        [0] = self.f_box_MultipleOR_54_Out,
    });
    self.box_Delay_v5_67 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1088248712");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_67_TimeElapsed,
    });
    self.box_Music_Quest_v2_69 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1096114494");
    l0:SetConnections({
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1103553929");
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
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1136888590");
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
    self.box_NarrativeFade_74 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1141563597");
    l0:SetConnections({
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1251127956");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_Music_Quest_v2_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1297037347");
    l0:SetConnections({
    });
    self.box_PostFx_v3_44 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1320412119");
    l0:SetConnections({
    });
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1351503953");
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
        [0] = self.f_box_MultipleOR_79_Out,
    });
    self.box_NarrativeFade_26 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1374758423");
    l0:SetConnections({
    });
    self.box_Delay_v5_23 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1399978292");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_23_TimeElapsed,
    });
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1447835355");
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
        [0] = self.f_box_MultipleOR_35_Out,
    });
    self.box_NarrativeCS_Cinema_15 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeCS_Cinema.debug.lua");
    l0 = self.box_NarrativeCS_Cinema_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeCS_Cinema_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1453875501");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_32 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1539046988");
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
        [0] = self.f_box_PlaySequence_v8_32_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_32_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_32_SPOut__FadeIn_,
                },
                [1] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_32_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_32_Started,
    });
    self.box_PersistentParticlesModifier_77 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1688305800");
    l0:SetConnections({
    });
    self.box_Delay_v5_63 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1691278991");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_63_TimeElapsed,
    });
    self.box_MultipleOR_68 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1733720522");
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
        [0] = self.f_box_MultipleOR_68_Out,
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1837256023");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
    });
    self.box_StartMetaSequence_62 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1907438524");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_62_Out,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1922215704");
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
        [0] = self.f_box_MultipleOR_39_Out,
    });
    self.box_NarrativeFade_66 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2031753632");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_66_FadedOut,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_40 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2037571809");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2113986943");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|494544704", "494544704", "MIS_220_BRIEF", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1332740031", "1332740031", "MIS_220_BRIEF", "OnLeaveZone", "box_OutputOrder_v2_75.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_22_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_22_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|560465633", "560465633", "MIS_220_BRIEF", "box_GetLocalPlayer_v2_22.Out", "box_EntityStatusListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StartMetaSequence_27_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_27_Out();
    params = self:OnEnter_box_PlaySequence_v8_32();
    l0 = self.box_StartMetaSequence_27;
    l1 = self.box_PlaySequence_v8_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|327807354", "327807354", "MIS_220_BRIEF", "box_StartMetaSequence_27.Out", "box_PlaySequence_v8_32.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v5_31_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_StopMetaSequence_v5_31;
    l1 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|510608082", "510608082", "MIS_220_BRIEF", "box_StopMetaSequence_v5_31.Stopped", "box_Delay_v5_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_30_Enabled()
    self:OnExit_box_ProximityTrigger_v3_30_Enabled();
end;

function export:f_box_ProximityTrigger_v3_30_Enter()
    self:OnExit_box_ProximityTrigger_v3_30_Enter();
end;

function export:f_box_ProximityTrigger_v3_30_Leave()
    self:OnExit_box_ProximityTrigger_v3_30_Leave();
end;

function export:f_box_ProximityTrigger_v3_30_OnEmpty()
    self:OnExit_box_ProximityTrigger_v3_30_OnEmpty();
end;

function export:f_box_ProximityTrigger_v3_30_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_30_OnOccupied();
    params = self:OnEnter_box_RemoveEntity_v2_50();
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_RemoveEntity_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|726869492", "726869492", "MIS_220_BRIEF", "box_ProximityTrigger_v3_30.OnOccupied", "box_RemoveEntity_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_30_Use()
    self:OnExit_box_ProximityTrigger_v3_30_Use();
end;

function export:f_box_Delay_v5_56_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_56;
    l1 = self.box_StartMetaSequence_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|340514485", "340514485", "MIS_220_BRIEF", "box_Delay_v5_56.TimeElapsed", "box_StartMetaSequence_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_StopMetaSequence_v5_8_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_StopMetaSequence_v5_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|281893649", "281893649", "MIS_220_BRIEF", "box_StopMetaSequence_v5_8.Stopped", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1768344820", "1768344820", "MIS_220_BRIEF", "box_Simple_Node_38.Out", "box_OutputOrder_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_10();
    l0 = self.box_Music_Quest_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|90880325", "90880325", "MIS_220_BRIEF", "box_OutputOrder_v2_76.Out", "box_Music_Quest_v2_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|703011737", "703011737", "MIS_220_BRIEF", "box_OutputOrder_v2_76.Out", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_Delay_v5_18;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1398196326", "1398196326", "MIS_220_BRIEF", "box_Delay_v5_18.TimeElapsed", "box_ActivityEnd_7.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_25_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = self.box_EntityStatusListener_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|959234416", "959234416", "MIS_220_BRIEF", "box_EntityStatusListener_25.Loaded", "box_OutputOrder_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_6();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|758275275", "758275275", "MIS_220_BRIEF", "box_ActivityInitialized_5.Out", "box_GetPlayerGroup_v2_6.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_31();
    l0 = self.box_StopMetaSequence_v5_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|292973010", "292973010", "MIS_220_BRIEF", "box_OutputOrder_v2_42.Out", "box_StopMetaSequence_v5_31.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeCS_Cinema_15();
    l0 = self.box_NarrativeCS_Cinema_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|152166548", "152166548", "MIS_220_BRIEF", "box_OutputOrder_v2_42.Out", "box_NarrativeCS_Cinema_15.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_47;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|294834235", "294834235", "MIS_220_BRIEF", "box_CHEAT_SetEnvironmentTimeScale_47.Out", "box_Delay_v5_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_77();
    l0 = self.box_PersistentParticlesModifier_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1857858234", "1857858234", "MIS_220_BRIEF", "box_OutputOrder_v2_78.Out", "box_PersistentParticlesModifier_77.StopParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopParticles
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|639887368", "639887368", "MIS_220_BRIEF", "box_OutputOrder_v2_78.Out", "box_MultipleOR_79.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_30();
    l0 = self.box_MultipleOR_48;
    l1 = self.box_ProximityTrigger_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1267614091", "1267614091", "MIS_220_BRIEF", "box_MultipleOR_48.Out", "box_ProximityTrigger_v3_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2061985330", "2061985330", "MIS_220_BRIEF", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1061649220", "1061649220", "MIS_220_BRIEF", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_69();
    l0 = self.box_Music_Quest_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|28534582", "28534582", "MIS_220_BRIEF", "box_OutputOrder_v2_73.Out", "box_Music_Quest_v2_69.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1171393638", "1171393638", "MIS_220_BRIEF", "box_OutputOrder_v2_73.Out", "box_MultipleOR_68.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_71_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_71;
    l1 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|275785445", "275785445", "MIS_220_BRIEF", "box_PlaySequence_v8_71.Finished", "box_MultipleOR_68.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_71_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = self.box_PlaySequence_v8_71;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1028359374", "1028359374", "MIS_220_BRIEF", "box_PlaySequence_v8_71.Skipped", "box_OutputOrder_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_71_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_74();
    l0 = self.box_PlaySequence_v8_71;
    l1 = self.box_NarrativeFade_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1634157858", "1634157858", "MIS_220_BRIEF", "box_PlaySequence_v8_71.SPOut", "box_NarrativeFade_74.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_71_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_74();
    l0 = self.box_PlaySequence_v8_71;
    l1 = self.box_NarrativeFade_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|181992497", "181992497", "MIS_220_BRIEF", "box_PlaySequence_v8_71.SPOut", "box_NarrativeFade_74.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_71_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_PlaySequence_v8_71;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1222488692", "1222488692", "MIS_220_BRIEF", "box_PlaySequence_v8_71.Started", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_56();
    l0 = self.box_Delay_v5_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|893171883", "893171883", "MIS_220_BRIEF", "box_OutputOrder_v2_55.Out", "box_Delay_v5_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_45();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|303568310", "303568310", "MIS_220_BRIEF", "box_OutputOrder_v2_55.Out", "box_MissionBlockLayer_45.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetTimeOfDay_v2_60();
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|551349523", "551349523", "MIS_220_BRIEF", "box_OutputOrder_v2_55.Out", "box_GetTimeOfDay_v2_60.GetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetTimeOfDay
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_RemoveEntity_v2_50;
    l1 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|140516139", "140516139", "MIS_220_BRIEF", "box_RemoveEntity_v2_50.Out", "box_Delay_v5_51.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NarrativeSceneSetup_13_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_66();
    l0 = self.box_NarrativeSceneSetup_13;
    l1 = self.box_NarrativeFade_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1256680785", "1256680785", "MIS_220_BRIEF", "box_NarrativeSceneSetup_13.Holstered", "box_NarrativeFade_66.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_51;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1701633360", "1701633360", "MIS_220_BRIEF", "box_Delay_v5_51.TimeElapsed", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_69();
    l0 = self.box_Music_Quest_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|348730820", "348730820", "MIS_220_BRIEF", "box_OutputOrder_v2_17.Out", "box_Music_Quest_v2_69.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|129530624", "129530624", "MIS_220_BRIEF", "box_OutputOrder_v2_17.Out", "box_MultipleOR_79.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_70();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1071903612", "1071903612", "MIS_220_BRIEF", "box_OutputOrder_v2_17.Out", "box_Print_v2_70.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_19();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1195810558", "1195810558", "MIS_220_BRIEF", "box_OutputOrder_v2_59.Out", "box_CHEAT_SetEnvironmentTimeScale_19.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_34();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1060326259", "1060326259", "MIS_220_BRIEF", "box_OutputOrder_v2_59.Out", "box_SetTimeOfDay_34.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_40();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|707638562", "707638562", "MIS_220_BRIEF", "box_OutputOrder_v2_24.Out", "box_CHEAT_SetEnvironmentTimeScale_40.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_29();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1803512204", "1803512204", "MIS_220_BRIEF", "box_OutputOrder_v2_24.Out", "box_SetTimeOfDay_29.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_25();
    l0 = self.box_TeleportPawns_64;
    l1 = self.box_EntityStatusListener_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1794724382", "1794724382", "MIS_220_BRIEF", "box_TeleportPawns_64.Out", "box_EntityStatusListener_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_58_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_61();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2131011559", "2131011559", "MIS_220_BRIEF", "box_Compare_Integers_58.A_eq_B", "box_Compare_Integers_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_58_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|837531892", "837531892", "MIS_220_BRIEF", "box_Compare_Integers_58.A_gt_B", "box_MultipleOR_54.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_58_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1205721752", "1205721752", "MIS_220_BRIEF", "box_Compare_Integers_58.A_lt_B", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_MultipleOR_54;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1614383404", "1614383404", "MIS_220_BRIEF", "box_MultipleOR_54.Out", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_26();
    l0 = self.box_NarrativeFade_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1892602732", "1892602732", "MIS_220_BRIEF", "box_OutputOrder_v2_46.Out", "box_NarrativeFade_26.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_44();
    l0 = self.box_PostFx_v3_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|105816953", "105816953", "MIS_220_BRIEF", "box_OutputOrder_v2_46.Out", "box_PostFx_v3_44.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_67_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_64();
    l0 = self.box_Delay_v5_67;
    l1 = self.box_TeleportPawns_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1736009810", "1736009810", "MIS_220_BRIEF", "box_Delay_v5_67.TimeElapsed", "box_TeleportPawns_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_MultipleOR_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1013995786", "1013995786", "MIS_220_BRIEF", "box_MultipleOR_33.Out", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|278982862", "278982862", "MIS_220_BRIEF", "box_MultipleOR_4.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_Delay_v5_43;
    l1 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|893443849", "893443849", "MIS_220_BRIEF", "box_Delay_v5_43.TimeElapsed", "box_Delay_v5_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_79_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeCS_Cinema_15();
    l0 = self.box_MultipleOR_79;
    l1 = self.box_NarrativeCS_Cinema_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|909121087", "909121087", "MIS_220_BRIEF", "box_MultipleOR_79.Out", "box_NarrativeCS_Cinema_15.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|440831629", "440831629", "MIS_220_BRIEF", "box_OutputOrder_v2_52.Out", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|542658687", "542658687", "MIS_220_BRIEF", "box_OutputOrder_v2_52.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_23_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_47();
    l0 = self.box_Delay_v5_23;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1801844981", "1801844981", "MIS_220_BRIEF", "box_Delay_v5_23.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_47.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|844614771", "844614771", "MIS_220_BRIEF", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|840891355", "840891355", "MIS_220_BRIEF", "box_OutputOrder_v2_2.Out", "box_Print_v2_21.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_57();
    l0 = self.box_MultipleOR_35;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|847746283", "847746283", "MIS_220_BRIEF", "box_MultipleOR_35.Out", "box_SoundMixing_57.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_41();
    l0 = self.box_Music_Quest_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1154120401", "1154120401", "MIS_220_BRIEF", "box_OutputOrder_v2_75.Out", "box_Music_Quest_v2_41.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_49();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2001684886", "2001684886", "MIS_220_BRIEF", "box_OutputOrder_v2_75.Out", "box_ActivityRetry_v2_49.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_32_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_32;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|335156289", "335156289", "MIS_220_BRIEF", "box_PlaySequence_v8_32.Finished", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_32_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_PlaySequence_v8_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|120985855", "120985855", "MIS_220_BRIEF", "box_PlaySequence_v8_32.Skipped", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_32_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_PlaySequence_v8_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|244595728", "244595728", "MIS_220_BRIEF", "box_PlaySequence_v8_32.SPOut", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_32_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_PlaySequence_v8_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|621407519", "621407519", "MIS_220_BRIEF", "box_PlaySequence_v8_32.SPOut", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_32_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = self.box_PlaySequence_v8_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|352642966", "352642966", "MIS_220_BRIEF", "box_PlaySequence_v8_32.Started", "box_OutputOrder_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_22();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1533334", "1533334", "MIS_220_BRIEF", "box_GetPlayerGroup_v2_6.Out", "box_GetLocalPlayer_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_63_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_Delay_v5_63;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1298747202", "1298747202", "MIS_220_BRIEF", "box_Delay_v5_63.TimeElapsed", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_37_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1523058981", "1523058981", "MIS_220_BRIEF", "box_Compare_Integers_37.A_ge_B", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_37_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_58();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|943181782", "943181782", "MIS_220_BRIEF", "box_Compare_Integers_37.A_lt_B", "box_Compare_Integers_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1035993955", "1035993955", "MIS_220_BRIEF", "box_Simple_Node_36.Out", "box_OutputOrder_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = self.box_MultipleOR_68;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1136857642", "1136857642", "MIS_220_BRIEF", "box_MultipleOR_68.Out", "box_OutputOrder_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_13();
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_NarrativeSceneSetup_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1021997833", "1021997833", "MIS_220_BRIEF", "box_EntityStatusListener_9.Loaded", "box_NarrativeSceneSetup_13.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_StartMetaSequence_62_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_62_Out();
    params = self:OnEnter_box_PlaySequence_v8_71();
    l0 = self.box_StartMetaSequence_62;
    l1 = self.box_PlaySequence_v8_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|645773201", "645773201", "MIS_220_BRIEF", "box_StartMetaSequence_62.Out", "box_PlaySequence_v8_71.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_8();
    l0 = self.box_StopMetaSequence_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|66262482", "66262482", "MIS_220_BRIEF", "box_OutputOrder_v2_72.Out", "box_StopMetaSequence_v5_8.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_MultipleOR_39;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1650715378", "1650715378", "MIS_220_BRIEF", "box_MultipleOR_39.Out", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_66_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_63();
    l0 = self.box_NarrativeFade_66;
    l1 = self.box_Delay_v5_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2105152690", "2105152690", "MIS_220_BRIEF", "box_NarrativeFade_66.FadedOut", "box_Delay_v5_63.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_14();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1358881503", "1358881503", "MIS_220_BRIEF", "box_OutputOrder_v2_12.Out", "box_MissionBlockLayer_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2116422238", "2116422238", "MIS_220_BRIEF", "box_OutputOrder_v2_12.Out", "box_StartMetaSequence_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1997337382", "1997337382", "MIS_220_BRIEF", "box_OutputOrder_v2_28.Out", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_10();
    l0 = self.box_Music_Quest_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|393017043", "393017043", "MIS_220_BRIEF", "box_OutputOrder_v2_28.Out", "box_Music_Quest_v2_10.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1495760569", "1495760569", "MIS_220_BRIEF", "box_OutputOrder_v2_28.Out", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetTimeOfDay_v2_60_Out()
    local params, l0;
    self:OnExit_box_GetTimeOfDay_v2_60_Out();
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_37();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|318001201", "318001201", "MIS_220_BRIEF", "box_GetTimeOfDay_v2_60.Out", "box_Compare_Integers_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_11();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|120306438", "120306438", "MIS_220_BRIEF", "box_OutputOrder_v2_65.Out", "box_MissionBlockLayer_11.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1585229401", "1585229401", "MIS_220_BRIEF", "box_OutputOrder_v2_65.Out", "box_Delay_v5_67.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_61_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1605752486", "1605752486", "MIS_220_BRIEF", "box_Compare_Integers_61.A_ge_B", "box_MultipleOR_54.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_61_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1396194697", "1396194697", "MIS_220_BRIEF", "box_Compare_Integers_61.A_lt_B", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1677758236", "1677758236", "MIS_220_BRIEF", "box_OutputOrder_v2_1.Out", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_26();
    l0 = self.box_NarrativeFade_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|167301156", "167301156", "MIS_220_BRIEF", "box_OutputOrder_v2_1.Out", "box_NarrativeFade_26.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:OnEnter_box_GetLocalPlayer_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|19835229");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_31()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID2,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109854069800582263",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|127611104");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 1,
        -- Minute,
        [1] = 45,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_56()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_19()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_8()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_38()
    local params, l0;
    DrawTextToScreen("Comment: Night", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Night");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|490444510");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|510036362");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_14()
    local params, l0;
    DrawTextToScreen("Comment: HIDE DOORS", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: HIDE DOORS");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|519923289");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160315753589410",
        -- missionLayerId,
        [1] = "36167515008330403",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108350072849699275",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|644344901");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_47()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|661869778");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|668174269");
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

function export:OnEnter_box_SoundMixing_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|718764585");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_11()
    local params, l0;
    DrawTextToScreen("Comment: HIDE DOORS", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: HIDE DOORS");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|742818365");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160315753589410",
        -- missionLayerId,
        [1] = "27160315754743716",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|779088523");
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
                [0] = self.f_box_OutputOrder_v2_73_Out_0,
                [1] = self.f_box_OutputOrder_v2_73_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_71()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2108499366732899187",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m220_admittancetoedenpost210/cin_m220_admittancetoedenpost210.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|810703651");
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
                [0] = self.f_box_OutputOrder_v2_55_Out_0,
                [1] = self.f_box_OutputOrder_v2_55_Out_1,
                [3] = self.f_box_OutputOrder_v2_55_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|847721610");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- id,
        [5] = "2108499366732899187",
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_50()
    local params, l0;
    l0 = self.box_ProximityTrigger_v3_30;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_13()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|908573908");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
            },
            count = 3,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|961909110");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|974825665");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_64()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109207797896848305",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1037213776");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_58_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_58_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_58_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Hour_box_GetTimeOfDay_v2_60,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1076007712");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
            },
            count = 3,
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
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_69()
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
        [6] = "357605033",
        -- StopEvent,
        [7] = "439384452",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1133077909");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_74()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade60frames",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_10()
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
        [6] = "357605033",
        -- StopEvent,
        [7] = "439384452",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_44()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_26()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1398631311");
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

function export:OnEnter_box_Delay_v5_23()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1410764627");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeCS_Cinema_15()
    local params;
    params = {
        -- CS_Cinema_Animals,
        [0] = "2109124233771632287",
        -- CS_Cinema_NPCs,
        [1] = "2109124235451451041",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1496349075");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 13,
        -- Minute,
        [1] = 45,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1505492292");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_32()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID2,
        -- SceneEntity,
        [3] = "2108350072849699275",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m220_zealotopenszone/cin_m220_zealotopenszone.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1647089523");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_77()
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

function export:OnEnter_box_Delay_v5_63()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1707189383");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_37_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_37_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Hour_box_GetTimeOfDay_v2_60,
        -- B,
        [1] = 19,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1714153084");
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
        [8] = "MIS_220_B10 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    DrawTextToScreen("Comment: Day", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Day");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1728465993");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108499366732899187",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|1911875252");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_66()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2034645821");
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
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_40()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2042237193");
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

function export:OnEnter_box_GetTimeOfDay_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetTimeOfDay_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2054626077");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetTimeOfDay_v2_60_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2056381930");
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

function export:OnEnter_box_Compare_Integers_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2084056523");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_61_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_61_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Minute_box_GetTimeOfDay_v2_60,
        -- B,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2111553530");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 3,
        },
    });
    params = {
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
        [6] = "357605033",
        -- StopEvent,
        [7] = "439384452",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_brief.domino|@MIS_220_BRIEF|2114732684");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "36167512595583671",
        -- missionLayerId,
        [1] = "63189110359834414",
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_27_Out()
    local l0;
    l0 = self.box_StartMetaSequence_27;
    self.MetaSequenceID2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_30_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_RemoveEntity_v2_50;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_30_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_RemoveEntity_v2_50;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_30_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_RemoveEntity_v2_50;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_30_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_RemoveEntity_v2_50;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_30_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_RemoveEntity_v2_50;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_30_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_RemoveEntity_v2_50;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_62_Out()
    local l0;
    l0 = self.box_StartMetaSequence_62;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetTimeOfDay_v2_60_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    self._sld_Hour_box_GetTimeOfDay_v2_60 = l0:GetDataOutValue(0);
    self._sld_Hour_box_GetTimeOfDay_v2_60 = l0:GetDataOutValue(0);
    self._sld_Minute_box_GetTimeOfDay_v2_60 = l0:GetDataOutValue(1);
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
