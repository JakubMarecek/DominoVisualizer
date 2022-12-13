LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_360/mis_360_b60.domino
-- User graph: MIS_360_B60
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DisplayCinematicPrompt.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/Player/PersistentParticlesModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_360/MIS_360_B60.MIS_360_Flashback_Bink.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3851504035.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3202019046.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1159342873.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015334630293318.part]], "CParticlesSystemParamResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_360/MIS_360_B60.MIS_360_B60.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/PhysicsModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
            },
            [2] = {
                name = "StartPhysics",
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/Player/InputPriorityModifier_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Release",
            },
            [1] = {
                name = "Set",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnRelease",
                delayed = false,
            },
            [1] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "InputPriority",
                type = "string",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_360/MIS_360_B60.MIS_360_Flashback_Bink.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_360_B60";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60";
    self.player = nil;
    self.Player = nil;
    self.MetaSequenceID = 0;
    self.IsBranchASelected = false;
    self.MetaSequenceID_1 = 0;
    self.ePlayer = nil;
    self.isLoopPlaying = false;
    self.box_Music_Quest_v2_52 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|3565940");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_39 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|65097083");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_39_Disabled,
    });
    self.box_StartMetaSequence_28 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|88780382");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_28_Out,
    });
    self.box_Delay_v5_5 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|94678277");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_5_TimeElapsed,
    });
    self.box_InputPriorityModifier_v4_21 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|108433945");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_21_OnSet,
    });
    self.box_VisibilityModifier_37 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|125188482");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_37_Disabled,
    });
    self.box_Music_Quest_v2_48 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|154502383");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|159873111");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_VisibilityModifier_25 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|202578302");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_25_Disabled,
    });
    self.box_InputPriorityModifier_v4_22 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|204509882");
    l0:SetConnections({
        -- OnRelease,
        [0] = self.f_box_InputPriorityModifier_v4_22_OnRelease,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|205373962");
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_MultipleOR_102 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|240076885");
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
        [0] = self.f_box_MultipleOR_102_Out,
    });
    self.box_NarrativeFade_60 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|253118358");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_60_FadedIn,
    });
    self.box_NarrativeFade_8 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|270218655");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_36 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|306204409");
    l0:SetConnections({
    });
    self.box_NarrativeFade_42 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|329704286");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_79 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|358341040");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_79_Enabled,
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|401176663");
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
        [0] = self.f_box_MultipleOR_104_Out,
    });
    self.box_Gate_v3_105 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|431033522");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_105_Out,
    });
    self.box_PostFx_v3_10 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|487699813");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_29 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|512403175");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_29_Enabled,
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|540246104");
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
    self.box_VisibilityModifier_101 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|546410213");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_101_Disabled,
    });
    self.box_EntityStatusListener_55 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|552974809");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_55_Loaded,
    });
    self.box_NarrativeSceneSetup_46 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|574692314");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_46_Holstered,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|628387838");
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
    self.box_InputListener_v3_14 = cbox:CreateBox("Domino/System/Player/InputListener_v3.lua");
    l0 = self.box_InputListener_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputListener_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|629104485");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_InputListener_v3_14_Disabled,
        -- Enabled,
        [1] = self.f_box_InputListener_v3_14_Enabled,
        -- SignalReceived,
        [2] = self.f_box_InputListener_v3_14_SignalReceived,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|716176578");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_SpawnAI_99 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|805023055");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_99_Spawned,
    });
    self.box_LookAtTrigger_v2_81 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|864428408");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_81_EnterFOV,
    });
    self.box_VisibilityModifier_70 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1084878957");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_45 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1088443134");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_45_Stopped,
    });
    self.box_PhysicsModifier_108 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1131432854");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_108_Disabled,
    });
    self.box_MIS_360_Flashback_Bink_23 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_360/MIS_360_B60.MIS_360_Flashback_Bink.debug.lua");
    l0 = self.box_MIS_360_Flashback_Bink_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_360_Flashback_Bink_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1135531080");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_360_Flashback_Bink_23_Out,
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1179486080");
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_VisibilityModifier_93 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1234049494");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_93_Disabled,
    });
    self.box_VisibilityModifier_11 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1236268305");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_11_Disabled,
    });
    self.box_NarrativeSceneCleanUp_V2_58 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1240509663");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_58_Out,
    });
    self.box_PostFx_v3_95 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1287036371");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_80 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1348844918");
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
        [4] = self.f_box_PlaySequence_v8_80_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_80_Stopped,
    });
    self.box_PlaySequence_v8_73 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1483509185");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "PauseSeq",
                    value = self.f_box_PlaySequence_v8_73_SPOut__PauseSeq_,
                },
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_90 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1485880338");
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
                [0] = self.f_box_OnceOnly_v3_90_Out_0,
            },
            count = 1,
        },
    });
    self.box_VisibilityModifier_13 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1527145772");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_13_Disabled,
    });
    self.box_StartMetaSequence_47 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1528533232");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_47_Out,
    });
    self.box_PlaySequence_v8_84 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1533629151");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "PauseSeq",
                },
            },
            count = 1,
        },
    });
    self.box_Music_Quest_v2_78 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1535713619");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_17 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1558628759");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_17_Stopped,
    });
    self.box_VisibilityModifier_91 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1565463474");
    l0:SetConnections({
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1636741672");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_Music_Quest_v2_51 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1672076163");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_69 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1694182052");
    l0:SetConnections({
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1695029630");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_Music_Quest_v2_54 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1726017157");
    l0:SetConnections({
    });
    self.box_PersistentParticlesModifier_56 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1749251147");
    l0:SetConnections({
    });
    self.box_InputPriorityModifier_v4_35 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1788648400");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_35_OnSet,
    });
    self.box_PlaySequence_v8_40 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1792860423");
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
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_40_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_40_Started,
    });
    self.box_VisibilityModifier_31 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1825840782");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_66 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1827361121");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_20 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1829645372");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 1,
        },
        controlOut = {
            [3] = 8,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_20_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_20_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_20_SPOut__FadeIn_,
                },
                [1] = {
                    string = "StartFire",
                    value = self.f_box_PlaySequence_v8_20_SPOut__StartFire_,
                },
                [2] = {
                    string = "EnableTrigger",
                    value = self.f_box_PlaySequence_v8_20_SPOut__EnableTrigger_,
                },
                [3] = {
                    string = "StartQTE",
                    value = self.f_box_PlaySequence_v8_20_SPOut__StartQTE_,
                },
                [4] = {
                    string = "EndQTE",
                    value = self.f_box_PlaySequence_v8_20_SPOut__EndQTE_,
                },
                [5] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_20_SPOut__FadeOut_,
                },
                [6] = {
                    string = "EndCin",
                    value = self.f_box_PlaySequence_v8_20_SPOut__EndCin_,
                },
                [7] = {
                    string = "FadeOutKill",
                    value = self.f_box_PlaySequence_v8_20_SPOut__FadeOutKill_,
                },
            },
            count = 8,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_20_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_20_Stopped,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1843377968");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_VisibilityModifier_92 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1856498798");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_92_Enabled,
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1884396485");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_PostFx_v3_19 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1888281183");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_19_Disabled,
    });
    self.box_NarrativeFade_44 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1897559636");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_44_FadedOut,
    });
    self.box_RemoveEntity_v2_67 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1915270366");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_12 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1995564925");
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
    self.box_Gate_v3_86 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|2007784107");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_86_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_86_Out,
    });
    self.box_VisibilityModifier_26 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|2109674638");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_26_Enabled,
    });
    self.box_GunsForHireSystemModifier_76 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|2133061459");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1178702232", "1178702232", "MIS_360_B60", "In", "box_ActivityAcknowledgeGate_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_VisibilityModifier_39_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_31();
    l0 = self.box_VisibilityModifier_39;
    l1 = self.box_VisibilityModifier_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1029202345", "1029202345", "MIS_360_B60", "box_VisibilityModifier_39.Disabled", "box_VisibilityModifier_31.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_StartMetaSequence_28_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_28_Out();
    params = self:OnEnter_box_PlaySequence_v8_20();
    l0 = self.box_StartMetaSequence_28;
    l1 = self.box_PlaySequence_v8_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|238461429", "238461429", "MIS_360_B60", "box_StartMetaSequence_28.Out", "box_PlaySequence_v8_20.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_5_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_5;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|311843924", "311843924", "MIS_360_B60", "box_Delay_v5_5.TimeElapsed", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_InputPriorityModifier_v4_21_OnSet()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCinematicPrompt_30();
    l0 = self.box_InputPriorityModifier_v4_21;
    l1 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1447581417", "1447581417", "MIS_360_B60", "box_InputPriorityModifier_v4_21.OnSet", "box_DisplayCinematicPrompt_30.HidePrompt", l0:GetLuaBox(), l1:GetLuaBox());
    -- HidePrompt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_100_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_99();
    l0 = self.box_SpawnAI_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1410178523", "1410178523", "MIS_360_B60", "box_Compare_Boolean_100.A_is_False", "box_SpawnAI_99.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_100_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_26();
    l0 = self.box_VisibilityModifier_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1744349806", "1744349806", "MIS_360_B60", "box_Compare_Boolean_100.A_is_True", "box_VisibilityModifier_26.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_VisibilityModifier_37_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_39();
    l0 = self.box_VisibilityModifier_37;
    l1 = self.box_VisibilityModifier_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|37936278", "37936278", "MIS_360_B60", "box_VisibilityModifier_37.Disabled", "box_VisibilityModifier_39.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_62();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|901504348", "901504348", "MIS_360_B60", "box_OutputOrder_v2_77.Out", "box_GetLocalPlayer_v2_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_76();
    l0 = self.box_GunsForHireSystemModifier_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1339299493", "1339299493", "MIS_360_B60", "box_OutputOrder_v2_77.Out", "box_GunsForHireSystemModifier_76.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_ActivityInitialized_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1530678852", "1530678852", "MIS_360_B60", "box_ActivityInitialized_1.Out", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_83();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1544321507", "1544321507", "MIS_360_B60", "box_OutputOrder_v2_7.Out", "box_SetBoolean_v2_83.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_81();
    l0 = self.box_LookAtTrigger_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1967488469", "1967488469", "MIS_360_B60", "box_OutputOrder_v2_7.Out", "box_LookAtTrigger_v2_81.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VisibilityModifier_25_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_VisibilityModifier_25;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|217930580", "217930580", "MIS_360_B60", "box_VisibilityModifier_25.Disabled", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_InputPriorityModifier_v4_22_OnRelease()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCinematicPrompt_30();
    l0 = self.box_InputPriorityModifier_v4_22;
    l1 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|61939297", "61939297", "MIS_360_B60", "box_InputPriorityModifier_v4_22.OnRelease", "box_DisplayCinematicPrompt_30.DisplayPrompt", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisplayPrompt
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_24_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_24;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1727671962", "1727671962", "MIS_360_B60", "box_MultipleOR_24.Out", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_102_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_74();
    l0 = self.box_MultipleOR_102;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|987772482", "987772482", "MIS_360_B60", "box_MultipleOR_102.Out", "box_MissionBlockLayer_74.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_60_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_19();
    l0 = self.box_NarrativeFade_60;
    l1 = self.box_PostFx_v3_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1119701648", "1119701648", "MIS_360_B60", "box_NarrativeFade_60.FadedIn", "box_PostFx_v3_19.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_51();
    l0 = self.box_Music_Quest_v2_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|2122117627", "2122117627", "MIS_360_B60", "box_OutputOrder_v2_50.Out", "box_Music_Quest_v2_51.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1594732500", "1594732500", "MIS_360_B60", "box_OutputOrder_v2_50.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GunsForHireSystemModifier_79_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = self.box_GunsForHireSystemModifier_79;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|194084543", "194084543", "MIS_360_B60", "box_GunsForHireSystemModifier_79.Enabled", "box_OutputOrder_v2_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_8();
    l0 = self.box_MultipleOR_104;
    l1 = self.box_NarrativeFade_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|94919147", "94919147", "MIS_360_B60", "box_MultipleOR_104.Out", "box_NarrativeFade_8.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_69();
    l0 = self.box_VisibilityModifier_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1974863226", "1974863226", "MIS_360_B60", "box_OutputOrder_v2_71.Out", "box_VisibilityModifier_69.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_70();
    l0 = self.box_VisibilityModifier_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1429296761", "1429296761", "MIS_360_B60", "box_OutputOrder_v2_71.Out", "box_VisibilityModifier_70.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_54();
    l0 = self.box_Gate_v3_105;
    l1 = self.box_Music_Quest_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1904423770", "1904423770", "MIS_360_B60", "box_Gate_v3_105.Out", "box_Music_Quest_v2_54.CIN_Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- CIN_Skip
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_44();
    l0 = self.box_NarrativeFade_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1217974576", "1217974576", "MIS_360_B60", "box_OutputOrder_v2_63.Out", "box_NarrativeFade_44.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_55();
    l0 = self.box_EntityStatusListener_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1036193933", "1036193933", "MIS_360_B60", "box_OutputOrder_v2_63.Out", "box_EntityStatusListener_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_48();
    l0 = self.box_Music_Quest_v2_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1228802415", "1228802415", "MIS_360_B60", "box_OutputOrder_v2_49.Out", "box_Music_Quest_v2_48.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1659148611", "1659148611", "MIS_360_B60", "box_OutputOrder_v2_49.Out", "box_Gate_v3_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_52();
    l0 = self.box_Music_Quest_v2_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1670514916", "1670514916", "MIS_360_B60", "box_OutputOrder_v2_49.Out", "box_Music_Quest_v2_52.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_49_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1667766992", "1667766992", "MIS_360_B60", "box_OutputOrder_v2_49.Out", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VisibilityModifier_29_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_93();
    l0 = self.box_VisibilityModifier_29;
    l1 = self.box_VisibilityModifier_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|353255088", "353255088", "MIS_360_B60", "box_VisibilityModifier_29.Enabled", "box_VisibilityModifier_93.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_62_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_62_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_46();
    l0 = self.box_NarrativeSceneSetup_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1092604264", "1092604264", "MIS_360_B60", "box_GetLocalPlayer_v2_62.Out", "box_NarrativeSceneSetup_46.HolsterWeapon", clone:GetLuaBox(), l0:GetLuaBox());
    -- HolsterWeapon
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_106_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_106;
    l1 = self.box_OnceOnly_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1110237165", "1110237165", "MIS_360_B60", "box_MultipleOR_106.Out", "box_OnceOnly_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_101_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_108();
    l0 = self.box_VisibilityModifier_101;
    l1 = self.box_PhysicsModifier_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|211180535", "211180535", "MIS_360_B60", "box_VisibilityModifier_101.Disabled", "box_PhysicsModifier_108.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_55_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_91();
    l0 = self.box_EntityStatusListener_55;
    l1 = self.box_VisibilityModifier_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1131577368", "1131577368", "MIS_360_B60", "box_EntityStatusListener_55.Loaded", "box_VisibilityModifier_91.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_NarrativeSceneSetup_46_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_NarrativeSceneSetup_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|912909323", "912909323", "MIS_360_B60", "box_NarrativeSceneSetup_46.Holstered", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_21();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_InputPriorityModifier_v4_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1435775751", "1435775751", "MIS_360_B60", "box_MultipleOR_4.Out", "box_InputPriorityModifier_v4_21.Set", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set
    l1:Exec(1, params);
end;

function export:f_box_InputListener_v3_14_Disabled()
    local l0, l1;
    l0 = self.box_InputListener_v3_14;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|21960047", "21960047", "MIS_360_B60", "box_InputListener_v3_14.Disabled", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InputListener_v3_14_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_22();
    l0 = self.box_InputListener_v3_14;
    l1 = self.box_InputPriorityModifier_v4_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1722146535", "1722146535", "MIS_360_B60", "box_InputListener_v3_14.Enabled", "box_InputPriorityModifier_v4_22.Release", l0:GetLuaBox(), l1:GetLuaBox());
    -- Release
    l1:Exec(0, params);
end;

function export:f_box_InputListener_v3_14_SignalReceived()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_InputListener_v3_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1794254544", "1794254544", "MIS_360_B60", "box_InputListener_v3_14.SignalReceived", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_88_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1790523194", "1790523194", "MIS_360_B60", "box_Compare_Boolean_88.A_is_True", "box_OnceOnly_v3_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_13();
    l0 = self.box_VisibilityModifier_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|291401647", "291401647", "MIS_360_B60", "box_OutputOrder_v2_38.Out", "box_VisibilityModifier_13.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_36();
    l0 = self.box_SoundModifier_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|715404684", "715404684", "MIS_360_B60", "box_OutputOrder_v2_38.Out", "box_SoundModifier_v2_36.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_82();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|487946509", "487946509", "MIS_360_B60", "box_OutputOrder_v2_38.Out", "box_OverrideEnvironment_v3_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_60();
    l0 = self.box_Delay_v5_18;
    l1 = self.box_NarrativeFade_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|753148513", "753148513", "MIS_360_B60", "box_Delay_v5_18.TimeElapsed", "box_NarrativeFade_60.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_AgentGroupModifier_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|609073563", "609073563", "MIS_360_B60", "box_AgentGroupModifier_64.Out", "box_OutputOrder_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DisplayCinematicPrompt_30_PromptDisplayed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_52();
    l0 = self.box_Music_Quest_v2_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1027358729", "1027358729", "MIS_360_B60", "box_DisplayCinematicPrompt_30.PromptDisplayed", "box_Music_Quest_v2_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_DisplayCinematicPrompt_30_PromptHidden()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1254320655", "1254320655", "MIS_360_B60", "box_DisplayCinematicPrompt_30.PromptHidden", "box_OutputOrder_v2_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_99_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_101();
    l0 = self.box_SpawnAI_99;
    l1 = self.box_VisibilityModifier_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1957739449", "1957739449", "MIS_360_B60", "box_SpawnAI_99.Spawned", "box_VisibilityModifier_101.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_LookAtTrigger_v2_81_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_80();
    l0 = self.box_LookAtTrigger_v2_81;
    l1 = self.box_PlaySequence_v8_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1014294894", "1014294894", "MIS_360_B60", "box_LookAtTrigger_v2_81.EnterFOV", "box_PlaySequence_v8_80.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_66();
    l0 = self.box_VisibilityModifier_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1355292434", "1355292434", "MIS_360_B60", "box_OutputOrder_v2_68.Out", "box_VisibilityModifier_66.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_67();
    l0 = self.box_RemoveEntity_v2_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1041839853", "1041839853", "MIS_360_B60", "box_OutputOrder_v2_68.Out", "box_RemoveEntity_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|609880954", "609880954", "MIS_360_B60", "box_OutputOrder_v2_32.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_61();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|325925406", "325925406", "MIS_360_B60", "box_OutputOrder_v2_32.Out", "box_SoundMixing_61.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1460611185", "1460611185", "MIS_360_B60", "box_OutputOrder_v2_65.Out", "box_StartMetaSequence_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_64();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|15235434", "15235434", "MIS_360_B60", "box_OutputOrder_v2_65.Out", "box_AgentGroupModifier_64.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v5_45_Stopped()
    local l0, l1;
    l0 = self.box_StopMetaSequence_v5_45;
    l1 = self.box_MIS_360_Flashback_Bink_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1795843131", "1795843131", "MIS_360_B60", "box_StopMetaSequence_v5_45.Stopped", "box_MIS_360_Flashback_Bink_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PhysicsModifier_108_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_PhysicsModifier_108;
    l1 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|429051065", "429051065", "MIS_360_B60", "box_PhysicsModifier_108.Disabled", "box_Delay_v5_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MIS_360_Flashback_Bink_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_MIS_360_Flashback_Bink_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1201080936", "1201080936", "MIS_360_B60", "box_MIS_360_Flashback_Bink_23.Out", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_45();
    l0 = self.box_MultipleOR_41;
    l1 = self.box_StopMetaSequence_v5_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|221336119", "221336119", "MIS_360_B60", "box_MultipleOR_41.Out", "box_StopMetaSequence_v5_45.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_8();
    l0 = self.box_NarrativeFade_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|860917805", "860917805", "MIS_360_B60", "box_OutputOrder_v2_9.Out", "box_NarrativeFade_8.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_10();
    l0 = self.box_PostFx_v3_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|794586686", "794586686", "MIS_360_B60", "box_OutputOrder_v2_9.Out", "box_PostFx_v3_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_95();
    l0 = self.box_PostFx_v3_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|398340275", "398340275", "MIS_360_B60", "box_OutputOrder_v2_9.Out", "box_PostFx_v3_95.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_17();
    l0 = self.box_StopMetaSequence_v5_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|900681809", "900681809", "MIS_360_B60", "box_OutputOrder_v2_87.Out", "box_StopMetaSequence_v5_17.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_88();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1007627534", "1007627534", "MIS_360_B60", "box_OutputOrder_v2_87.Out", "box_Compare_Boolean_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_93_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_92();
    l0 = self.box_VisibilityModifier_93;
    l1 = self.box_VisibilityModifier_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|646000697", "646000697", "MIS_360_B60", "box_VisibilityModifier_93.Disabled", "box_VisibilityModifier_92.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_11_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_37();
    l0 = self.box_VisibilityModifier_11;
    l1 = self.box_VisibilityModifier_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1399837971", "1399837971", "MIS_360_B60", "box_VisibilityModifier_11.Disabled", "box_VisibilityModifier_37.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_NarrativeSceneCleanUp_V2_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_79();
    l0 = self.box_NarrativeSceneCleanUp_V2_58;
    l1 = self.box_GunsForHireSystemModifier_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1169615045", "1169615045", "MIS_360_B60", "box_NarrativeSceneCleanUp_V2_58.Out", "box_GunsForHireSystemModifier_79.EnableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableGFHSystem
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_80_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_PlaySequence_v8_80;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1206199601", "1206199601", "MIS_360_B60", "box_PlaySequence_v8_80.Started", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_80_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_85();
    l0 = self.box_PlaySequence_v8_80;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|729663118", "729663118", "MIS_360_B60", "box_PlaySequence_v8_80.Stopped", "box_OutputOrder_v2_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_74_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|190997025", "190997025", "MIS_360_B60", "box_MissionBlockLayer_74.Activated", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_48();
    l0 = self.box_Music_Quest_v2_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|201638564", "201638564", "MIS_360_B60", "box_OutputOrder_v2_59.Out", "box_Music_Quest_v2_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_56();
    l0 = self.box_PersistentParticlesModifier_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1254234605", "1254234605", "MIS_360_B60", "box_OutputOrder_v2_59.Out", "box_PersistentParticlesModifier_56.StopParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopParticles
    l0:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_73_SPOut__PauseSeq_()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_73();
    l0 = self.box_PlaySequence_v8_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1436933642", "1436933642", "MIS_360_B60", "box_PlaySequence_v8_73.SPOut", "box_PlaySequence_v8_73.Pause", l0:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_90_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_86();
    l0 = self.box_OnceOnly_v3_90;
    l1 = self.box_Gate_v3_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|856231355", "856231355", "MIS_360_B60", "box_OnceOnly_v3_90.Out", "box_Gate_v3_86.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_13_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_25();
    l0 = self.box_VisibilityModifier_13;
    l1 = self.box_VisibilityModifier_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|550301282", "550301282", "MIS_360_B60", "box_VisibilityModifier_13.Disabled", "box_VisibilityModifier_25.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_StartMetaSequence_47_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_47_Out();
    params = self:OnEnter_box_PlaySequence_v8_40();
    l0 = self.box_StartMetaSequence_47;
    l1 = self.box_PlaySequence_v8_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|818772337", "818772337", "MIS_360_B60", "box_StartMetaSequence_47.Out", "box_PlaySequence_v8_40.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_27_Out()
    self:OnExit_box_SetBoolean_v2_27_Out();
end;

function export:f_box_StopMetaSequence_v5_17_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_StopMetaSequence_v5_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1991515702", "1991515702", "MIS_360_B60", "box_StopMetaSequence_v5_17.Stopped", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|468063117", "468063117", "MIS_360_B60", "box_MultipleOR_3.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_Delay_v5_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1346823455", "1346823455", "MIS_360_B60", "box_Delay_v5_43.TimeElapsed", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_83_Out()
    self:OnExit_box_SetBoolean_v2_83_Out();
end;

function export:f_box_AgentGroupModifier_72_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|62616505", "62616505", "MIS_360_B60", "box_AgentGroupModifier_72.Out", "box_OutputOrder_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InputPriorityModifier_v4_35_OnSet()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_InputPriorityModifier_v4_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1927157902", "1927157902", "MIS_360_B60", "box_InputPriorityModifier_v4_35.OnSet", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_40_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_PlaySequence_v8_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1988327445", "1988327445", "MIS_360_B60", "box_PlaySequence_v8_40.Finished", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_40_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_PlaySequence_v8_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|2102142642", "2102142642", "MIS_360_B60", "box_PlaySequence_v8_40.Skipped", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_40_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_42();
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_NarrativeFade_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|15402195", "15402195", "MIS_360_B60", "box_PlaySequence_v8_40.SPOut", "box_NarrativeFade_42.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_40_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_42();
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_NarrativeFade_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|106355748", "106355748", "MIS_360_B60", "box_PlaySequence_v8_40.SPOut", "box_NarrativeFade_42.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_40_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_51();
    l0 = self.box_PlaySequence_v8_40;
    l1 = self.box_Music_Quest_v2_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1953211176", "1953211176", "MIS_360_B60", "box_PlaySequence_v8_40.Started", "box_Music_Quest_v2_51.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_20();
    l0 = self.box_PlaySequence_v8_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1219605697", "1219605697", "MIS_360_B60", "box_OutputOrder_v2_15.Out", "box_PlaySequence_v8_20.SPIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- SPIn
    l0:ExecDynString(4, params, "KillFather");
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1730734704", "1730734704", "MIS_360_B60", "box_OutputOrder_v2_15.Out", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_27();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1503244725", "1503244725", "MIS_360_B60", "box_OutputOrder_v2_15.Out", "box_SetBoolean_v2_27.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_20_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_20;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|340570384", "340570384", "MIS_360_B60", "box_PlaySequence_v8_20.Finished", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_20_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_35();
    l0 = self.box_PlaySequence_v8_20;
    l1 = self.box_InputPriorityModifier_v4_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1079489814", "1079489814", "MIS_360_B60", "box_PlaySequence_v8_20.Skipped", "box_InputPriorityModifier_v4_35.Set", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_20_SPOut__EnableTrigger_()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_80();
    l0 = self.box_PlaySequence_v8_20;
    l1 = self.box_PlaySequence_v8_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1294071921", "1294071921", "MIS_360_B60", "box_PlaySequence_v8_20.SPOut", "box_PlaySequence_v8_80.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_20_SPOut__EndCin_()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_20();
    l0 = self.box_PlaySequence_v8_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1639392747", "1639392747", "MIS_360_B60", "box_PlaySequence_v8_20.SPOut", "box_PlaySequence_v8_20.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_PlaySequence_v8_20_SPOut__EndQTE_()
    local params, l0, l1;
    params = self:OnEnter_box_InputListener_v3_14();
    l0 = self.box_PlaySequence_v8_20;
    l1 = self.box_InputListener_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|816282469", "816282469", "MIS_360_B60", "box_PlaySequence_v8_20.SPOut", "box_InputListener_v3_14.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_20_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_PlaySequence_v8_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1567903319", "1567903319", "MIS_360_B60", "box_PlaySequence_v8_20.SPOut", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_20_SPOut__FadeOut_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_20;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|820332700", "820332700", "MIS_360_B60", "box_PlaySequence_v8_20.SPOut", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_20_SPOut__FadeOutKill_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_20;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1496785949", "1496785949", "MIS_360_B60", "box_PlaySequence_v8_20.SPOut", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_20_SPOut__StartFire_()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_73();
    l0 = self.box_PlaySequence_v8_20;
    l1 = self.box_PlaySequence_v8_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|671108111", "671108111", "MIS_360_B60", "box_PlaySequence_v8_20.SPOut", "box_PlaySequence_v8_73.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_20_SPOut__StartQTE_()
    local params, l0, l1;
    params = self:OnEnter_box_InputListener_v3_14();
    l0 = self.box_PlaySequence_v8_20;
    l1 = self.box_InputListener_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1620447429", "1620447429", "MIS_360_B60", "box_PlaySequence_v8_20.SPOut", "box_InputListener_v3_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_20_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_PlaySequence_v8_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|41206099", "41206099", "MIS_360_B60", "box_PlaySequence_v8_20.Started", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_20_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_20;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1591938018", "1591938018", "MIS_360_B60", "box_PlaySequence_v8_20.Stopped", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1306721276", "1306721276", "MIS_360_B60", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|834626426", "834626426", "MIS_360_B60", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VisibilityModifier_92_Enabled()
    local l0, l1;
    l0 = self.box_VisibilityModifier_92;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|320253155", "320253155", "MIS_360_B60", "box_VisibilityModifier_92.Enabled", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_16;
    l1 = self.box_StartMetaSequence_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1838777364", "1838777364", "MIS_360_B60", "box_Delay_v5_16.TimeElapsed", "box_StartMetaSequence_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PostFx_v3_19_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_PostFx_v3_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|2066671636", "2066671636", "MIS_360_B60", "box_PostFx_v3_19.Disabled", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_78();
    l0 = self.box_Music_Quest_v2_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1545636980", "1545636980", "MIS_360_B60", "box_OutputOrder_v2_75.Out", "box_Music_Quest_v2_78.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|468888697", "468888697", "MIS_360_B60", "box_OutputOrder_v2_75.Out", "box_ActivityEnd_6.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_44_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_NarrativeFade_44;
    l1 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|612632763", "612632763", "MIS_360_B60", "box_NarrativeFade_44.FadedOut", "box_Delay_v5_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_85_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_83();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|536303476", "536303476", "MIS_360_B60", "box_OutputOrder_v2_85.Out", "box_SetBoolean_v2_83.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_86();
    l0 = self.box_Gate_v3_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1403591360", "1403591360", "MIS_360_B60", "box_OutputOrder_v2_85.Out", "box_Gate_v3_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_54();
    l0 = self.box_Music_Quest_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1918976599", "1918976599", "MIS_360_B60", "box_OutputOrder_v2_103.Out", "box_Music_Quest_v2_54.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1214991102", "1214991102", "MIS_360_B60", "box_OutputOrder_v2_103.Out", "box_Gate_v3_105.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_12_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = self.box_OnceOnly_v3_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|817491556", "817491556", "MIS_360_B60", "box_OnceOnly_v3_12.Out", "box_OutputOrder_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_86_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_81();
    l0 = self.box_Gate_v3_86;
    l1 = self.box_LookAtTrigger_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|2014161602", "2014161602", "MIS_360_B60", "box_Gate_v3_86.Closed", "box_LookAtTrigger_v2_81.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_84();
    l0 = self.box_Gate_v3_86;
    l1 = self.box_PlaySequence_v8_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|731614467", "731614467", "MIS_360_B60", "box_Gate_v3_86.Out", "box_PlaySequence_v8_84.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_26_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_29();
    l0 = self.box_VisibilityModifier_26;
    l1 = self.box_VisibilityModifier_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1833238638", "1833238638", "MIS_360_B60", "box_VisibilityModifier_26.Enabled", "box_VisibilityModifier_29.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_100();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|860720612", "860720612", "MIS_360_B60", "box_OutputOrder_v2_33.Out", "box_Compare_Boolean_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_11();
    l0 = self.box_VisibilityModifier_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1256686432", "1256686432", "MIS_360_B60", "box_OutputOrder_v2_33.Out", "box_VisibilityModifier_11.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_72();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|520461158", "520461158", "MIS_360_B60", "box_OutputOrder_v2_33.Out", "box_AgentGroupModifier_72.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_89();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1264774380", "1264774380", "MIS_360_B60", "box_OutputOrder_v2_33.Out", "box_OverrideEnvironment_v3_89.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_94();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|890223108", "890223108", "MIS_360_B60", "box_OutputOrder_v2_33.Out", "box_MissionBlockLayer_94.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_58();
    l0 = self.box_NarrativeSceneCleanUp_V2_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|756516072", "756516072", "MIS_360_B60", "box_OutputOrder_v2_57.Out", "box_NarrativeSceneCleanUp_V2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_34();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|990459921", "990459921", "MIS_360_B60", "box_OutputOrder_v2_57.Out", "box_SoundMixing_34.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Music_Quest_v2_52()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 37,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1159342873",
        -- StopEvent,
        [7] = "3851504035",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_39()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109095834573361854",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_5()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_21()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|115150040");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_100_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_100_A_is_True,
    });
    params = {
        -- A,
        [0] = self.IsBranchASelected,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_37()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109093670226514611",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|130976420");
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

function export:OnEnter_box_Music_Quest_v2_48()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 36,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1159342873",
        -- StopEvent,
        [7] = "3851504035",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|167365788");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_25()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109773273332984129",
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_22()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
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

function export:OnEnter_box_NarrativeFade_8()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_36()
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

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|326005871");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_42()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|335380720");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_79()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|406176092");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_105()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|431142318");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "171275489178495693",
        -- missionLayerId,
        [1] = "27160326903388619",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|439074938");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|447446648");
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
                [0] = self.f_box_OutputOrder_v2_63_Out_0,
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|458274487");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
                [2] = self.f_box_OutputOrder_v2_49_Out_2,
                [3] = self.f_box_OutputOrder_v2_49_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_10()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_29()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109773273332984129",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|514205230");
    l0:SetConnections({
    });
    params = {
        -- fog,
        [6] = "9015359210460827",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|519010293");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_101()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109083280956483979",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2110244990700504504",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_46()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_InputListener_v3_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- signal,
        [2] = "qte_press_rt",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|640647905");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_88_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isLoopPlaying,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|642773538");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
                [2] = self.f_box_OutputOrder_v2_38_Out_2,
            },
            count = 3,
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
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|773711011");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_64_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#EBBC76DF",
        -- PawnGroup,
        [1] = "#E6950095",
    };
    return params;
end;

function export:OnEnter_box_DisplayCinematicPrompt_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicPrompt_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|804074163");
    l0:SetConnections({
        -- PromptDisplayed,
        [0] = self.f_box_DisplayCinematicPrompt_30_PromptDisplayed,
        -- PromptHidden,
        [1] = self.f_box_DisplayCinematicPrompt_30_PromptHidden,
    });
    params = {
        -- textId1,
        [0] = {
            section = "Objectives",
            item = "MIS_360_B60_Kill_Joseph",
            id = "1030553",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_99()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109692022645335796",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_81()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109675030043436812",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|936136397");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|961252845");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 2,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1041455148");
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

function export:OnEnter_box_VisibilityModifier_70()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#EBBC76DF",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_45()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID_1,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1123338405");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_108()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2110244990700504504",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1212289696");
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

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1222203561");
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

function export:OnEnter_box_VisibilityModifier_93()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109083280956483979",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_11()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109093673839907509",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_58()
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

function export:OnEnter_box_PostFx_v3_95()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frameswhite",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_80()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109674889324537608",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_m360_death/cin_m360_death_part2_imm_branch_loop.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1379965896");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_74_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "81203517176707298",
        -- missionLayerId,
        [1] = "90210716431448291",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1391322529");
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

function export:OnEnter_box_PlaySequence_v8_73()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109083189659068802",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_m360_death/cin_m360_death_part2_tree.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_13()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109773265961494847",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_84()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109674889324537608",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_m360_death/cin_m360_death_part2_imm_branch.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_78()
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
        [6] = "1159342873",
        -- StopEvent,
        [7] = "3851504035",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1555990618");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_17()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_91()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2110244990700504504",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_51()
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
        [6] = "1159342873",
        -- StopEvent,
        [7] = "3851504035",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_69()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#E6950095",
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

function export:OnEnter_box_Music_Quest_v2_54()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 38,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1159342873",
        -- StopEvent,
        [7] = "3851504035",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1745352833");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_83_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_56()
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

function export:OnEnter_box_AgentGroupModifier_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1782901166");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_72_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#EBBC76DF",
        -- PawnGroup,
        [1] = "#E6950095",
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_35()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
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
        [2] = self.MetaSequenceID_1,
        -- SceneEntity,
        [3] = "2109107440178975377",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m360_death/cin_m360_death_part1.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_31()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109675718293067412",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1826033488");
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

function export:OnEnter_box_VisibilityModifier_66()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#E6950095",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_20()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109083189659068802",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m360_death/cin_m360_death_part2.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_92()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2110244990700504504",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_19()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1897008871");
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

function export:OnEnter_box_NarrativeFade_44()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1913259195");
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

function export:OnEnter_box_RemoveEntity_v2_67()
    local params;
    params = {
        -- Group,
        [0] = "#EBBC76DF",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1925492392");
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
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
                [2] = self.f_box_OutputOrder_v2_103_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|1926380839");
    l0:SetConnections({
    });
    params = {
        -- fog,
        [6] = "9015359210460827",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_86()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_26()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109773265961494847",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_76()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|2133341317");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
                [3] = self.f_box_OutputOrder_v2_33_Out_3,
                [4] = self.f_box_OutputOrder_v2_33_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_B60|2133471791");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_28_Out()
    local l0;
    l0 = self.box_StartMetaSequence_28;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_62_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_47_Out()
    local l0;
    l0 = self.box_StartMetaSequence_47;
    self.MetaSequenceID_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.IsBranchASelected = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isLoopPlaying = l0:GetDataOutValue(0);
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
