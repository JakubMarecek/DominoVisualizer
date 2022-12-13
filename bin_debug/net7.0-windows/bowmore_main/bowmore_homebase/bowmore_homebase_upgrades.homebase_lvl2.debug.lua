LUACj� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_homebase/bowmore_homebase_upgrades.domino
-- User graph: Homebase_Lvl2
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanup_Homebase.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Homebase.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/ChangeSunOrientation_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EndStandaloneScript.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/DisplayCinematicOverlay.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayersVisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3553920827.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3236068032.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3202019046.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1489618951.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3335001279.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Homebase/Bowmore_Homebase_Upgrades.Homebase_Lvl2.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanup_Homebase.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Homebase.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Active",
                delayed = false,
            },
            [1] = {
                name = "Canceled",
                delayed = false,
            },
            [2] = {
                name = "Completed",
                delayed = false,
            },
            [3] = {
                name = "Failed",
                delayed = false,
            },
            [4] = {
                name = "Inactive",
                delayed = false,
            },
            [5] = {
                name = "Out",
                delayed = false,
            },
            [6] = {
                name = "Unavailable",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "activityDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/BroadcastMessage.lua")] = {
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
                name = "Message",
                type = "string",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/EndStandaloneScript.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "End",
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
    metadataTable[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")] = {
        stateless = true,
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
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BottomDescriptionId",
                type = "oasis",
            },
            [1] = {
                name = "DisplayGameTimeAsButtonDescription",
                type = "bool",
            },
            [2] = {
                name = "IsInfrastructureUpgrade",
                type = "bool",
            },
            [3] = {
                name = "TitleId",
                type = "oasis",
            },
            [4] = {
                name = "TopDescriptionId",
                type = "oasis",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/Player/PlayersVisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetAllInvisible",
            },
            [1] = {
                name = "SetAllVisible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAllInvisible",
                delayed = false,
            },
            [1] = {
                name = "OnSetAllVisible",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ExcludeLocalPlayer",
                type = "bool",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Homebase_Lvl2";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2";
    self.Out = DummyFunction;
    self.MetaSequenceID = 0;
    self.MetaSequenceID_1 = 0;
    self.eLocalPlayer = nil;
    self.MetaSequenceID2 = 0;
    self.box_NarrativeSceneCleanup_Homebase_37 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanup_Homebase.debug.lua");
    l0 = self.box_NarrativeSceneCleanup_Homebase_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanup_Homebase_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|43319514");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanup_Homebase_37_Out,
    });
    self.box_ChangeSunOrientation_v4_51 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|105749730");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_131 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|106973040");
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
        [0] = self.f_box_MultipleAND_v2_131_Out,
    });
    self.box_StartMetaSequence_78 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|108772830");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_78_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_56 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|163920605");
    l0:SetConnections({
    });
    self.box_TeleportPawns_25 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|173010872");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_25_Out,
    });
    self.box_StartMetaSequence_2 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|244586770");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_2_Out,
    });
    self.box_NarrativeFade_57 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|263284914");
    l0:SetConnections({
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|266014937");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_Music_Quest_v2_76 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|318736306");
    l0:SetConnections({
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|369034644");
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
    self.box_MultipleAND_v2_75 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|448733862");
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
        [0] = self.f_box_MultipleAND_v2_75_Out,
    });
    self.box_NarrativeFade_90 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|455392194");
    l0:SetConnections({
    });
    self.box_PlayersVisibilityModifier_18 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|467595487");
    l0:SetConnections({
        -- OnSetAllVisible,
        [1] = self.f_box_PlayersVisibilityModifier_18_OnSetAllVisible,
    });
    self.box_NarrativeFade_1 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|536642948");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_1_FadedIn,
    });
    self.box_ChangeSunOrientation_v4_50 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|578842702");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_62 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|646855238");
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
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_62_Stopped,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|680559358");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|723665113");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
    self.box_PostFx_v3_38 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|735102793");
    l0:SetConnections({
    });
    self.box_Gate_v3_53 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|828660421");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_53_Out,
    });
    self.box_MultipleAND_v2_135 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|933835903");
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
        [0] = self.f_box_MultipleAND_v2_135_Out,
    });
    self.box_PostFx_v3_93 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|934463425");
    l0:SetConnections({
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|969220864");
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
    self.box_CharacterLoadedIdListener_v2_73 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|991811166");
    l0:SetConnections({
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_73_LoadedIdReceived,
    });
    self.box_StopMetaSequence_v5_13 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1002277464");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_13_Stopped,
    });
    self.box_EntityStatusListener_109 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1049816206");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_109_Loaded,
    });
    self.box_PlaySequence_v8_81 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1076910982");
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
        [0] = self.f_box_PlaySequence_v8_81_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_81_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_81_SPOut__FadeIn_,
                },
                [1] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_81_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_81_Started,
    });
    self.box_EntityStatusListener_6 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1102311513");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_6_Loaded,
    });
    self.box_StopMetaSequence_v5_55 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1143048999");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_55_Stopped,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1211468034");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1261946326");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1318456102");
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_Delay_v5_92 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1322974671");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_92_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_92_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_v2_54 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1347359824");
    l0:SetConnections({
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_54_LoadedIdReceived,
    });
    self.box_PlaySequence_v8_64 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1348817322");
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
    self.box_PlaySequence_v8_40 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1380151460");
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
        [0] = self.f_box_PlaySequence_v8_40_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_40_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_40_SPOut__FadeIn_,
                },
                [1] = {
                    string = "StartKidTire",
                    value = self.f_box_PlaySequence_v8_40_SPOut__StartKidTire_,
                },
                [2] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_40_SPOut__FadeOut_,
                },
            },
            count = 3,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_40_Started,
    });
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1431468563");
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
        [0] = self.f_box_MultipleOR_47_Out,
    });
    self.box_ChangeSunOrientation_v4_74 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1448920276");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1452600511");
    l0:SetConnections({
    });
    self.box_PostFx_v3_58 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1489553683");
    l0:SetConnections({
    });
    self.box_Delay_v5_83 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1535248830");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_83_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_83_TimeElapsed,
    });
    self.box_StopMetaSequence_v5_71 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1562375776");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_71_Stopped,
    });
    self.box_StartMetaSequence_60 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1669745249");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_60_Out,
    });
    self.box_NarrativeSceneSetup_Homebase_39 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Homebase.debug.lua");
    l0 = self.box_NarrativeSceneSetup_Homebase_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_Homebase_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1701624011");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_Homebase_39_Out,
    });
    self.box_SoundModifier_v2_97 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1715073373");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_77 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1721195325");
    l0:SetConnections({
    });
    self.box_MultipleOR_84 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1730541979");
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
        [0] = self.f_box_MultipleOR_84_Out,
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1751936523");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_SoundModifier_v2_99 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1857401037");
    l0:SetConnections({
    });
    self.box_NarrativeFade_8 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1952412912");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_8_FadedIn,
    });
    self.box_TeleportPawns_16 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2069828293");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_16_Out,
    });
    self.box_PostFx_v3_21 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2078928827");
    l0:SetConnections({
    });
    self.box_PlayersVisibilityModifier_17 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2107954766");
    l0:SetConnections({
        -- OnSetAllInvisible,
        [0] = self.f_box_PlayersVisibilityModifier_17_OnSetAllInvisible,
    });
    self.box_PlaySequence_v8_14 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2126968902");
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
        [0] = self.f_box_PlaySequence_v8_14_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_14_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIN",
                    value = self.f_box_PlaySequence_v8_14_SPOut__FadeIN_,
                },
                [1] = {
                    string = "Start_UI",
                    value = self.f_box_PlaySequence_v8_14_SPOut__Start_UI_,
                },
                [2] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_14_SPOut__FadeOut_,
                },
            },
            count = 3,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_14_Started,
    });
    self.box_NarrativeCS_Cinema_59 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeCS_Cinema.debug.lua");
    l0 = self.box_NarrativeCS_Cinema_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeCS_Cinema_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2127380232");
    l0:SetConnections({
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2146465651");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_BroadcastMessage_3();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|286496746", "286496746", "Homebase_Lvl2", "In", "box_BroadcastMessage_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanup_Homebase_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_NarrativeSceneCleanup_Homebase_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1443729878", "1443729878", "Homebase_Lvl2", "box_NarrativeSceneCleanup_Homebase_37.Out", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_9();
    l0 = self.box_Music_Quest_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|286848371", "286848371", "Homebase_Lvl2", "box_OutputOrder_v2_11.Out", "box_Music_Quest_v2_9.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_13();
    l0 = self.box_StopMetaSequence_v5_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|306229784", "306229784", "Homebase_Lvl2", "box_OutputOrder_v2_11.Out", "box_StopMetaSequence_v5_13.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_131_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_92();
    l0 = self.box_MultipleAND_v2_131;
    l1 = self.box_Delay_v5_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|58638586", "58638586", "Homebase_Lvl2", "box_MultipleAND_v2_131.Out", "box_Delay_v5_92.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StartMetaSequence_78_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_78_Out();
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = self.box_StartMetaSequence_78;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|606651878", "606651878", "Homebase_Lvl2", "box_StartMetaSequence_78.Out", "box_OutputOrder_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_80_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_76();
    l0 = self.box_Music_Quest_v2_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2105649419", "2105649419", "Homebase_Lvl2", "box_OutputOrder_v2_80.Out", "box_Music_Quest_v2_76.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_80_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|79264855", "79264855", "Homebase_Lvl2", "box_OutputOrder_v2_80.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_80_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_98();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|568872511", "568872511", "Homebase_Lvl2", "box_OutputOrder_v2_80.Out", "box_SoundMixing_98.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_83();
    l0 = self.box_TeleportPawns_25;
    l1 = self.box_Delay_v5_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1850973154", "1850973154", "Homebase_Lvl2", "box_TeleportPawns_25.Out", "box_Delay_v5_83.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StartMetaSequence_2_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_2_Out();
    params = self:OnEnter_box_PlaySequence_v8_14();
    l0 = self.box_StartMetaSequence_2;
    l1 = self.box_PlaySequence_v8_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|436236070", "436236070", "Homebase_Lvl2", "box_StartMetaSequence_2.Out", "box_PlaySequence_v8_14.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_AgentGroupModifier_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|896354508", "896354508", "Homebase_Lvl2", "box_AgentGroupModifier_35.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndStandaloneScript_22();
    l0 = self.box_Delay_v5_43;
    l1 = Boxes[GetPathID("Domino/System/EndStandaloneScript.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|411413545", "411413545", "Homebase_Lvl2", "box_Delay_v5_43.TimeElapsed", "box_EndStandaloneScript_22.End", l0:GetLuaBox(), l1:GetLuaBox());
    -- End
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_51();
    l0 = self.box_ChangeSunOrientation_v4_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|97962283", "97962283", "Homebase_Lvl2", "box_OutputOrder_v2_68.Out", "box_ChangeSunOrientation_v4_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_85();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|517875581", "517875581", "Homebase_Lvl2", "box_OutputOrder_v2_68.Out", "box_SetTimeOfDay_85.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_56();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|373304388", "373304388", "Homebase_Lvl2", "box_OutputOrder_v2_68.Out", "box_CHEAT_SetEnvironmentTimeScale_56.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_68_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_91();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1447760191", "1447760191", "Homebase_Lvl2", "box_OutputOrder_v2_68.Out", "box_MissionBlockLayer_91.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_62();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_PlaySequence_v8_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1694395359", "1694395359", "Homebase_Lvl2", "box_MultipleOR_46.Out", "box_PlaySequence_v8_62.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_BroadcastMessage_3_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_23();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1050101854", "1050101854", "Homebase_Lvl2", "box_BroadcastMessage_3.Out", "box_GetActivityState_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_25();
    l0 = self.box_MultipleAND_v2_75;
    l1 = self.box_TeleportPawns_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|900096292", "900096292", "Homebase_Lvl2", "box_MultipleAND_v2_75.Out", "box_TeleportPawns_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayersVisibilityModifier_18_OnSetAllVisible()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = self.box_PlayersVisibilityModifier_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|684856388", "684856388", "Homebase_Lvl2", "box_PlayersVisibilityModifier_18.OnSetAllVisible", "box_OutputOrder_v2_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_1_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_NarrativeFade_1;
    l1 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1340022685", "1340022685", "Homebase_Lvl2", "box_NarrativeFade_1.FadedIn", "box_Delay_v5_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_TriggerState_v2_127_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_131();
    l0 = self.box_MultipleAND_v2_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1231276016", "1231276016", "Homebase_Lvl2", "box_TriggerState_v2_127.Disabled", "box_MultipleAND_v2_131.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_PlaySequence_v8_62_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_53();
    l0 = self.box_PlaySequence_v8_62;
    l1 = self.box_Gate_v3_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1635346891", "1635346891", "Homebase_Lvl2", "box_PlaySequence_v8_62.Stopped", "box_Gate_v3_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_41;
    l1 = self.box_StartMetaSequence_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|741708906", "741708906", "Homebase_Lvl2", "box_Delay_v5_41.TimeElapsed", "box_StartMetaSequence_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_40();
    l0 = self.box_PlaySequence_v8_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|129177904", "129177904", "Homebase_Lvl2", "box_OutputOrder_v2_87.Out", "box_PlaySequence_v8_40.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_62();
    l0 = self.box_PlaySequence_v8_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2136758607", "2136758607", "Homebase_Lvl2", "box_OutputOrder_v2_87.Out", "box_PlaySequence_v8_62.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_88();
    l0 = self.box_Delay_v5_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|157338535", "157338535", "Homebase_Lvl2", "box_Delay_v5_42.TimeElapsed", "box_OutputOrder_v2_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_64();
    l0 = self.box_Gate_v3_53;
    l1 = self.box_PlaySequence_v8_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1517434424", "1517434424", "Homebase_Lvl2", "box_Gate_v3_53.Out", "box_PlaySequence_v8_64.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_88_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|465797338", "465797338", "Homebase_Lvl2", "box_OutputOrder_v2_88.Out", "box_Delay_v5_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_88_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_89();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|221871373", "221871373", "Homebase_Lvl2", "box_OutputOrder_v2_88.Out", "box_SetTimeOfDay_89.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_74();
    l0 = self.box_ChangeSunOrientation_v4_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|43552579", "43552579", "Homebase_Lvl2", "box_OutputOrder_v2_88.Out", "box_ChangeSunOrientation_v4_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_88_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_66();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1833114532", "1833114532", "Homebase_Lvl2", "box_OutputOrder_v2_88.Out", "box_MissionBlockLayer_66.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_135_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndStandaloneScript_7();
    l0 = self.box_MultipleAND_v2_135;
    l1 = Boxes[GetPathID("Domino/System/EndStandaloneScript.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2046696396", "2046696396", "Homebase_Lvl2", "box_MultipleAND_v2_135.Out", "box_EndStandaloneScript_7.End", l0:GetLuaBox(), l1:GetLuaBox());
    -- End
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_MultipleOR_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1321357129", "1321357129", "Homebase_Lvl2", "box_MultipleOR_52.Out", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_90();
    l0 = self.box_NarrativeFade_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1728382395", "1728382395", "Homebase_Lvl2", "box_OutputOrder_v2_61.Out", "box_NarrativeFade_90.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_93();
    l0 = self.box_PostFx_v3_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1782127025", "1782127025", "Homebase_Lvl2", "box_OutputOrder_v2_61.Out", "box_PostFx_v3_93.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_97();
    l0 = self.box_SoundModifier_v2_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2121748062", "2121748062", "Homebase_Lvl2", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_97.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_82_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1456784550", "1456784550", "Homebase_Lvl2", "box_OutputOrder_v2_82.Out", "box_MultipleOR_84.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_82_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1540698955", "1540698955", "Homebase_Lvl2", "box_OutputOrder_v2_82.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CharacterLoadedIdListener_v2_73_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_75();
    l0 = self.box_CharacterLoadedIdListener_v2_73;
    l1 = self.box_MultipleAND_v2_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2073990774", "2073990774", "Homebase_Lvl2", "box_CharacterLoadedIdListener_v2_73.LoadedIdReceived", "box_MultipleAND_v2_75.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_StopMetaSequence_v5_13_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_16();
    l0 = self.box_StopMetaSequence_v5_13;
    l1 = self.box_TeleportPawns_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1351165930", "1351165930", "Homebase_Lvl2", "box_StopMetaSequence_v5_13.Stopped", "box_TeleportPawns_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_100();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|967779395", "967779395", "Homebase_Lvl2", "box_OutputOrder_v2_79.Out", "box_SoundMixing_100.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1944293935", "1944293935", "Homebase_Lvl2", "box_OutputOrder_v2_79.Out", "box_MultipleOR_47.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_103();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|280888636", "280888636", "Homebase_Lvl2", "box_OutputOrder_v2_45.Out", "box_SoundMixing_103.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_133();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1365453534", "1365453534", "Homebase_Lvl2", "box_OutputOrder_v2_45.Out", "box_TriggerState_v2_133.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_132();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2000076944", "2000076944", "Homebase_Lvl2", "box_OutputOrder_v2_45.Out", "box_TriggerState_v2_132.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_134();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|711841944", "711841944", "Homebase_Lvl2", "box_OutputOrder_v2_45.Out", "box_TriggerState_v2_134.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_109_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_109;
    l1 = self.box_StartMetaSequence_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|27743803", "27743803", "Homebase_Lvl2", "box_EntityStatusListener_109.Loaded", "box_StartMetaSequence_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PlaySequence_v8_81_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_81;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|866921104", "866921104", "Homebase_Lvl2", "box_PlaySequence_v8_81.Finished", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_81_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_PlaySequence_v8_81;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|76480165", "76480165", "Homebase_Lvl2", "box_PlaySequence_v8_81.Skipped", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_81_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_PlaySequence_v8_81;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2050183588", "2050183588", "Homebase_Lvl2", "box_PlaySequence_v8_81.SPOut", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_81_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = self.box_PlaySequence_v8_81;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2142749178", "2142749178", "Homebase_Lvl2", "box_PlaySequence_v8_81.SPOut", "box_OutputOrder_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_81_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_77();
    l0 = self.box_PlaySequence_v8_81;
    l1 = self.box_Music_Quest_v2_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|125618676", "125618676", "Homebase_Lvl2", "box_PlaySequence_v8_81.Started", "box_Music_Quest_v2_77.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_6_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_Homebase_39();
    l0 = self.box_EntityStatusListener_6;
    l1 = self.box_NarrativeSceneSetup_Homebase_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1152363439", "1152363439", "Homebase_Lvl2", "box_EntityStatusListener_6.Loaded", "box_NarrativeSceneSetup_Homebase_39.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_34();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2080456320", "2080456320", "Homebase_Lvl2", "box_OutputOrder_v2_33.Out", "box_SetContextualStrategy_34.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v5_55_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = self.box_StopMetaSequence_v5_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|584791395", "584791395", "Homebase_Lvl2", "box_StopMetaSequence_v5_55.Stopped", "box_OutputOrder_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_9();
    l0 = self.box_Music_Quest_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|206872604", "206872604", "Homebase_Lvl2", "box_OutputOrder_v2_27.Out", "box_Music_Quest_v2_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_MultipleOR_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2124879202", "2124879202", "Homebase_Lvl2", "box_MultipleOR_10.Out", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_95();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|707652556", "707652556", "Homebase_Lvl2", "box_MultipleOR_12.Out", "box_GetLocalPlayer_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_23_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|941173211", "941173211", "Homebase_Lvl2", "box_GetActivityState_v2_23.Active", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_23_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|612051230", "612051230", "Homebase_Lvl2", "box_GetActivityState_v2_23.Canceled", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_23_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|772889637", "772889637", "Homebase_Lvl2", "box_GetActivityState_v2_23.Completed", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_23_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2088984030", "2088984030", "Homebase_Lvl2", "box_GetActivityState_v2_23.Failed", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_23_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2078939826", "2078939826", "Homebase_Lvl2", "box_GetActivityState_v2_23.Inactive", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_23_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2032474254", "2032474254", "Homebase_Lvl2", "box_GetActivityState_v2_23.Unavailable", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_MultipleOR_24;
    l1 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|125590756", "125590756", "Homebase_Lvl2", "box_MultipleOR_24.Out", "box_Delay_v5_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_92_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_Delay_v5_92;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1111650098", "1111650098", "Homebase_Lvl2", "box_Delay_v5_92.Started", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_92_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_109();
    l0 = self.box_Delay_v5_92;
    l1 = self.box_EntityStatusListener_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|505526122", "505526122", "Homebase_Lvl2", "box_Delay_v5_92.TimeElapsed", "box_EntityStatusListener_109.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_54_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_75();
    l0 = self.box_CharacterLoadedIdListener_v2_54;
    l1 = self.box_MultipleAND_v2_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1872705267", "1872705267", "Homebase_Lvl2", "box_CharacterLoadedIdListener_v2_54.LoadedIdReceived", "box_MultipleAND_v2_75.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayersVisibilityModifier_17();
    l0 = self.box_PlayersVisibilityModifier_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1768757131", "1768757131", "Homebase_Lvl2", "box_OutputOrder_v2_36.Out", "box_PlayersVisibilityModifier_17.SetAllInvisible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAllInvisible
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_35();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|955650696", "955650696", "Homebase_Lvl2", "box_OutputOrder_v2_36.Out", "box_AgentGroupModifier_35.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_66_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_66();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|749699132", "749699132", "Homebase_Lvl2", "box_MissionBlockLayer_66.Deactivated", "box_MissionBlockLayer_66.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_66_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_44();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|798447441", "798447441", "Homebase_Lvl2", "box_MissionBlockLayer_66.Disabled", "box_MissionBlockLayer_44.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_40_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1483204523", "1483204523", "Homebase_Lvl2", "box_PlaySequence_v8_40.Finished", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_40_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_80();
    l0 = self.box_PlaySequence_v8_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1246187455", "1246187455", "Homebase_Lvl2", "box_PlaySequence_v8_40.Skipped", "box_OutputOrder_v2_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_40_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_PlaySequence_v8_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1517261427", "1517261427", "Homebase_Lvl2", "box_PlaySequence_v8_40.SPOut", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_40_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_90();
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_NarrativeFade_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1187949763", "1187949763", "Homebase_Lvl2", "box_PlaySequence_v8_40.SPOut", "box_NarrativeFade_90.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_40_SPOut__StartKidTire_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|688774003", "688774003", "Homebase_Lvl2", "box_PlaySequence_v8_40.SPOut", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_40_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = self.box_PlaySequence_v8_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|910035219", "910035219", "Homebase_Lvl2", "box_PlaySequence_v8_40.Started", "box_OutputOrder_v2_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_133_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_135();
    l0 = self.box_MultipleAND_v2_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1144783613", "1144783613", "Homebase_Lvl2", "box_TriggerState_v2_133.Enabled", "box_MultipleAND_v2_135.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = self.box_MultipleOR_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1955792287", "1955792287", "Homebase_Lvl2", "box_MultipleOR_47.Out", "box_OutputOrder_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_134_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_135();
    l0 = self.box_MultipleAND_v2_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1521898391", "1521898391", "Homebase_Lvl2", "box_TriggerState_v2_134.Enabled", "box_MultipleAND_v2_135.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_Delay_v5_83_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ChangeSunOrientation_v4_50();
    l0 = self.box_Delay_v5_83;
    l1 = self.box_ChangeSunOrientation_v4_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|217759107", "217759107", "Homebase_Lvl2", "box_Delay_v5_83.Started", "box_ChangeSunOrientation_v4_50.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_83_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_Delay_v5_83;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|102866519", "102866519", "Homebase_Lvl2", "box_Delay_v5_83.TimeElapsed", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v5_71_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_StopMetaSequence_v5_71;
    l1 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|57423931", "57423931", "Homebase_Lvl2", "box_StopMetaSequence_v5_71.Stopped", "box_Delay_v5_42.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1124504046", "1124504046", "Homebase_Lvl2", "box_OutputOrder_v2_20.Out", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_19();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|725018689", "725018689", "Homebase_Lvl2", "box_OutputOrder_v2_20.Out", "box_OverrideDisabledLogicId_19.HudNotificationsQueueCenterMessage", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotificationsQueueCenterMessage
    l0:Exec(18, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_60_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_60_Out();
    params = self:OnEnter_box_PlaySequence_v8_81();
    l0 = self.box_StartMetaSequence_60;
    l1 = self.box_PlaySequence_v8_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|651262583", "651262583", "Homebase_Lvl2", "box_StartMetaSequence_60.Out", "box_PlaySequence_v8_81.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneSetup_Homebase_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_NarrativeSceneSetup_Homebase_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|979105438", "979105438", "Homebase_Lvl2", "box_NarrativeSceneSetup_Homebase_39.Out", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_48_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeCS_Cinema_59();
    l0 = self.box_NarrativeCS_Cinema_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1102727592", "1102727592", "Homebase_Lvl2", "box_Simple_Node_48.Out", "box_NarrativeCS_Cinema_59.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_96();
    l0 = self.box_MultipleOR_84;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1115361513", "1115361513", "Homebase_Lvl2", "box_MultipleOR_84.Out", "box_SoundMixing_96.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_71();
    l0 = self.box_StopMetaSequence_v5_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|991000452", "991000452", "Homebase_Lvl2", "box_OutputOrder_v2_5.Out", "box_StopMetaSequence_v5_71.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_53();
    l0 = self.box_Gate_v3_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1260158988", "1260158988", "Homebase_Lvl2", "box_OutputOrder_v2_5.Out", "box_Gate_v3_53.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_64();
    l0 = self.box_PlaySequence_v8_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|93469113", "93469113", "Homebase_Lvl2", "box_OutputOrder_v2_5.Out", "box_PlaySequence_v8_64.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|529743974", "529743974", "Homebase_Lvl2", "box_OutputOrder_v2_5.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanup_Homebase_37();
    l0 = self.box_Delay_v5_4;
    l1 = self.box_NarrativeSceneCleanup_Homebase_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|682489950", "682489950", "Homebase_Lvl2", "box_Delay_v5_4.TimeElapsed", "box_NarrativeSceneCleanup_Homebase_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_77();
    l0 = self.box_Music_Quest_v2_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|836194806", "836194806", "Homebase_Lvl2", "box_OutputOrder_v2_94.Out", "box_Music_Quest_v2_77.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeCS_Cinema_59();
    l0 = self.box_NarrativeCS_Cinema_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1502401932", "1502401932", "Homebase_Lvl2", "box_OutputOrder_v2_94.Out", "box_NarrativeCS_Cinema_59.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_94_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_55();
    l0 = self.box_StopMetaSequence_v5_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1929899006", "1929899006", "Homebase_Lvl2", "box_OutputOrder_v2_94.Out", "box_StopMetaSequence_v5_55.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_1();
    l0 = self.box_NarrativeFade_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1862415637", "1862415637", "Homebase_Lvl2", "box_OutputOrder_v2_32.Out", "box_NarrativeFade_1.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_31();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|18090197", "18090197", "Homebase_Lvl2", "box_OutputOrder_v2_32.Out", "box_SoundMixing_31.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_21();
    l0 = self.box_PostFx_v3_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|180887370", "180887370", "Homebase_Lvl2", "box_OutputOrder_v2_32.Out", "box_PostFx_v3_21.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_102();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|341156446", "341156446", "Homebase_Lvl2", "box_OutputOrder_v2_101.Out", "box_SoundMixing_102.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_57();
    l0 = self.box_NarrativeFade_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2121812605", "2121812605", "Homebase_Lvl2", "box_OutputOrder_v2_101.Out", "box_NarrativeFade_57.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_76();
    l0 = self.box_Music_Quest_v2_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2096166544", "2096166544", "Homebase_Lvl2", "box_OutputOrder_v2_70.Out", "box_Music_Quest_v2_76.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_48();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|823481251", "823481251", "Homebase_Lvl2", "box_OutputOrder_v2_70.Out", "box_Simple_Node_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_128_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_131();
    l0 = self.box_MultipleAND_v2_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1377590433", "1377590433", "Homebase_Lvl2", "box_TriggerState_v2_128.Disabled", "box_MultipleAND_v2_131.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_NarrativeFade_8_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_38();
    l0 = self.box_NarrativeFade_8;
    l1 = self.box_PostFx_v3_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1943373176", "1943373176", "Homebase_Lvl2", "box_NarrativeFade_8.FadedIn", "box_PostFx_v3_38.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|999201824", "999201824", "Homebase_Lvl2", "box_OutputOrder_v2_30.Out", "box_Delay_v5_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_29();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1210120003", "1210120003", "Homebase_Lvl2", "box_OutputOrder_v2_30.Out", "box_SoundMixing_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_63();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1020266475", "1020266475", "Homebase_Lvl2", "box_OutputOrder_v2_130.Out", "box_TriggerState_v2_63.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_127();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|91800968", "91800968", "Homebase_Lvl2", "box_OutputOrder_v2_130.Out", "box_TriggerState_v2_127.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_128();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1630411289", "1630411289", "Homebase_Lvl2", "box_OutputOrder_v2_130.Out", "box_TriggerState_v2_128.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_8();
    l0 = self.box_NarrativeFade_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|637194628", "637194628", "Homebase_Lvl2", "box_OutputOrder_v2_28.Out", "box_NarrativeFade_8.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCinematicOverlay_26();
    l0 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1902427449", "1902427449", "Homebase_Lvl2", "box_OutputOrder_v2_28.Out", "box_DisplayCinematicOverlay_26.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|981573501", "981573501", "Homebase_Lvl2", "box_OutputOrder_v2_28.Out", "box_MultipleOR_84.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TriggerState_v2_63_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_131();
    l0 = self.box_MultipleAND_v2_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2083601843", "2083601843", "Homebase_Lvl2", "box_TriggerState_v2_63.Disabled", "box_MultipleAND_v2_131.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_GetLocalPlayer_v2_95_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_95_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_6();
    l0 = self.box_EntityStatusListener_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|87211012", "87211012", "Homebase_Lvl2", "box_GetLocalPlayer_v2_95.Out", "box_EntityStatusListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_57();
    l0 = self.box_NarrativeFade_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|676772122", "676772122", "Homebase_Lvl2", "box_OutputOrder_v2_65.Out", "box_NarrativeFade_57.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_58();
    l0 = self.box_PostFx_v3_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|267788694", "267788694", "Homebase_Lvl2", "box_OutputOrder_v2_65.Out", "box_PostFx_v3_58.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_99();
    l0 = self.box_SoundModifier_v2_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1856523410", "1856523410", "Homebase_Lvl2", "box_OutputOrder_v2_65.Out", "box_SoundModifier_v2_99.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_44_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_49();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1308154052", "1308154052", "Homebase_Lvl2", "box_MissionBlockLayer_44.Activated", "box_MissionBlockLayer_49.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_73();
    l0 = self.box_CharacterLoadedIdListener_v2_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|675475605", "675475605", "Homebase_Lvl2", "box_OutputOrder_v2_67.Out", "box_CharacterLoadedIdListener_v2_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_54();
    l0 = self.box_CharacterLoadedIdListener_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|149125519", "149125519", "Homebase_Lvl2", "box_OutputOrder_v2_67.Out", "box_CharacterLoadedIdListener_v2_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_TriggerState_v2_132_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_135();
    l0 = self.box_MultipleAND_v2_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1198722119", "1198722119", "Homebase_Lvl2", "box_TriggerState_v2_132.Enabled", "box_MultipleAND_v2_135.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_TeleportPawns_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayersVisibilityModifier_18();
    l0 = self.box_TeleportPawns_16;
    l1 = self.box_PlayersVisibilityModifier_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|480988770", "480988770", "Homebase_Lvl2", "box_TeleportPawns_16.Out", "box_PlayersVisibilityModifier_18.SetAllVisible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAllVisible
    l1:Exec(1, params);
end;

function export:f_box_PlayersVisibilityModifier_17_OnSetAllInvisible()
    local l0, l1;
    l0 = self.box_PlayersVisibilityModifier_17;
    l1 = self.box_StartMetaSequence_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1666710074", "1666710074", "Homebase_Lvl2", "box_PlayersVisibilityModifier_17.OnSetAllInvisible", "box_StartMetaSequence_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PlaySequence_v8_14_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_14;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|601472691", "601472691", "Homebase_Lvl2", "box_PlaySequence_v8_14.Finished", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_14_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = self.box_PlaySequence_v8_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1793519811", "1793519811", "Homebase_Lvl2", "box_PlaySequence_v8_14.Skipped", "box_OutputOrder_v2_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_14_SPOut__FadeIN_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_8();
    l0 = self.box_PlaySequence_v8_14;
    l1 = self.box_NarrativeFade_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|356593432", "356593432", "Homebase_Lvl2", "box_PlaySequence_v8_14.SPOut", "box_NarrativeFade_8.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_14_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_PlaySequence_v8_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1555473575", "1555473575", "Homebase_Lvl2", "box_PlaySequence_v8_14.SPOut", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_14_SPOut__Start_UI_()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCinematicOverlay_26();
    l0 = self.box_PlaySequence_v8_14;
    l1 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|583256122", "583256122", "Homebase_Lvl2", "box_PlaySequence_v8_14.SPOut", "box_DisplayCinematicOverlay_26.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_14_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_PlaySequence_v8_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|943008229", "943008229", "Homebase_Lvl2", "box_PlaySequence_v8_14.Started", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_Delay_v5_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|381901175", "381901175", "Homebase_Lvl2", "box_Delay_v5_15.TimeElapsed", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_NarrativeSceneCleanup_Homebase_37()
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
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|84232144");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_51()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 242,
        -- ElevationDegree,
        [1] = 20,
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_131()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_56()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|165108617");
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
                [0] = self.f_box_OutputOrder_v2_80_Out_0,
                [1] = self.f_box_OutputOrder_v2_80_Out_1,
                [2] = self.f_box_OutputOrder_v2_80_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_25()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "2106582970371425072",
        -- Destination,
        [1] = "2106582945394344748",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|216020000");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|255275425");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_35_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#0C573993",
        -- PawnGroup,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_57()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
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

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|289442878");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
                [2] = self.f_box_OutputOrder_v2_68_Out_2,
                [3] = self.f_box_OutputOrder_v2_68_Out_3,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_76()
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
        [6] = "3236068032",
        -- StopEvent,
        [7] = "3335001279",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|421946500");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_3_Out,
    });
    params = {
        -- Message,
        [0] = "homebaseupgradedone",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_75()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_90()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlayersVisibilityModifier_18()
    local params;
    params = {
        -- ExcludeLocalPlayer,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_1()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|548951276");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_127_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109802868178433885",
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_50()
    local params;
    params = {
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_62()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109468150205517713",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m145_tricktreat3/cin_m145_tricktreat3_kidtire_intro.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|684956007");
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
                [1] = self.f_box_OutputOrder_v2_87_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5.5,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_38()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
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

function export:OnEnter_box_OutputOrder_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|909096592");
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
                [0] = self.f_box_OutputOrder_v2_88_Out_0,
                [1] = self.f_box_OutputOrder_v2_88_Out_1,
                [2] = self.f_box_OutputOrder_v2_88_Out_2,
                [3] = self.f_box_OutputOrder_v2_88_Out_3,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_135()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_93()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|974515238");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
                [2] = self.f_box_OutputOrder_v2_61_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|979470736");
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
                [0] = self.f_box_OutputOrder_v2_82_Out_0,
                [1] = self.f_box_OutputOrder_v2_82_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_73()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015218968118442",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_13()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1003435108");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1010827488");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
                [2] = self.f_box_OutputOrder_v2_45_Out_2,
                [3] = self.f_box_OutputOrder_v2_45_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_109()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107932803747306556",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_81()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID_1,
        -- SceneEntity,
        [3] = "2108212926572681107",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m145_meettwins/cin_m145_meettwins.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108320408919889371",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1106990400");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Celebration_Global",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1136250227");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_55()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID_1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1164672286");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1179892878");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 18,
        -- Minute,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1244505850");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 18,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndStandaloneScript_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EndStandaloneScript.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndStandaloneScript_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1269778899");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndStandaloneScript_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EndStandaloneScript.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndStandaloneScript_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1279301071");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1285231794");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1307490924");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_23_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_23_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_23_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_23_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_23_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_23_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015335442188758",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_92()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870620083",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_64()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109468150205517713",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m145_tricktreat3/cin_m145_tricktreat3_kidtire_play.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1349601094");
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

function export:OnEnter_box_MissionBlockLayer_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1363607837");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_66_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_66_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160324489578728",
        -- missionLayerId,
        [1] = "36167523744319721",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1376063859");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "81203499741500658",
        -- missionLayerId,
        [1] = "90210698996241652",
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
        [2] = self.MetaSequenceID2,
        -- SceneEntity,
        [3] = "2107932803747306556",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m145_tricktreat3/cin_m145_tricktreat3.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1410701740");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_133_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107189657207834136",
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_74()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 213,
        -- ElevationDegree,
        [1] = 23,
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_9()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
        -- Priority,
        [3] = 2,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1489618951",
        -- StopEvent,
        [7] = "3553920827",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1454745938");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106594335790222242",
        -- Group,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1465733524");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_134_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109885992767852180",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_58()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_83()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_71()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1578075786");
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

function export:OnEnter_box_OverrideDisabledLogicId_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1630936651");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_Homebase_39()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_97()
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

function export:OnEnter_box_Simple_Node_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1716031646");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_48_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_77()
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
        [6] = "3236068032",
        -- StopEvent,
        [7] = "3335001279",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1745998071");
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

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1767229013");
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
                [0] = self.f_box_OutputOrder_v2_94_Out_0,
                [1] = self.f_box_OutputOrder_v2_94_Out_1,
                [2] = self.f_box_OutputOrder_v2_94_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1856955841");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_99()
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

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1863593011");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
                [2] = self.f_box_OutputOrder_v2_32_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1864427824");
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
                [0] = self.f_box_OutputOrder_v2_101_Out_0,
                [1] = self.f_box_OutputOrder_v2_101_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1905227506");
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
                [0] = self.f_box_OutputOrder_v2_70_Out_0,
                [1] = self.f_box_OutputOrder_v2_70_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1933036704");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_128_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109885992767852180",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1933827605");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160324489578728",
        -- missionLayerId,
        [1] = "36167523744319721",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_8()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1957001506");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DisplayCinematicOverlay_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicOverlay_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1969793890");
    l0:SetConnections({
    });
    params = {
        -- DisplayGameTimeAsButtonDescription,
        [1] = false,
        -- IsInfrastructureUpgrade,
        [2] = true,
        -- TitleId,
        [3] = {
            section = "",
            item = "",
            id = "",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1973348509");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Celebration_Global",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1978066157");
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
                [0] = self.f_box_OutputOrder_v2_130_Out_0,
                [1] = self.f_box_OutputOrder_v2_130_Out_1,
                [2] = self.f_box_OutputOrder_v2_130_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|1985298219");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2014150347");
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

function export:OnEnter_box_TriggerState_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2023727463");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_63_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107189657207834136",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2026794421");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_95_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2042430365");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
                [2] = self.f_box_OutputOrder_v2_65_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2046550799");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_44_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "81203499741500658",
        -- missionLayerId,
        [1] = "99217898251779965",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2052431324");
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

function export:OnEnter_box_TriggerState_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2069448417");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_132_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109802868178433885",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_16()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "2108516060226392802",
        -- Destination,
        [1] = "2108516059400114912",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_21()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlayersVisibilityModifier_17()
    local params;
    params = {
        -- ExcludeLocalPlayer,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Homebase_Lvl2|2121296865");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_14()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2108320408919889371",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_homebase/d1_hero_hb_cin_homebase_lvl2.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_NarrativeCS_Cinema_59()
    local params;
    params = {
        -- CS_Cinema_Animals,
        [0] = "2109098100334271449",
        -- CS_Cinema_NPCs,
        [1] = "2109098103486290961",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_78_Out()
    local l0;
    l0 = self.box_StartMetaSequence_78;
    self.MetaSequenceID2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_2_Out()
    local l0;
    l0 = self.box_StartMetaSequence_2;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_60_Out()
    local l0;
    l0 = self.box_StartMetaSequence_60;
    self.MetaSequenceID_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_95_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
