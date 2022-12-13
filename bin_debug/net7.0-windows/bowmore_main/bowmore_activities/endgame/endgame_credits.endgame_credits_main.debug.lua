LUACϳ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/endgame/endgame_credits.domino
-- User graph: EndGame_Credits_Main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEndGame.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/ChangeSunOrientation_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayActBreakUI.lua");
        cboxRes:RegisterBox("Domino/System/UI/EndGame_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2957740576.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1946321461.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/EndGame/EndGame_Credits.EndGame_Credits_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityEndGame.lua")] = {
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
            [0] = {
                name = "Destination",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/UI/EndGame_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Skipped",
                delayed = true,
            },
        },
        controlOutCount = 3,
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
    self._name = "EndGame_Credits_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main";
    self.player = nil;
    self.MetaSequenceID = 0;
    self.isLoopPlaying = false;
    self.DidPlayerLook = false;
    self.box_PlaySequence_v8_48 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|40189476");
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
    self.box_PostFx_v3_25 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|76396696");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_13 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|87161886");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_13_Out,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|98982252");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|155048723");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_NarrativeFade_33 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|204162342");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_39 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|217822600");
    l0:SetConnections({
    });
    self.box_StartMetaSequence_27 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|362217182");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_27_Out,
    });
    self.box_Music_Quest_v2_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|406202492");
    l0:SetConnections({
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|416117452");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_StopMetaSequence_v5_29 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|684603213");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_29_Stopped,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|687072047");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_EndGame_v2_62 = cbox:CreateBox("Domino/System/UI/EndGame_v2.lua");
    l0 = self.box_EndGame_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndGame_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|710426584");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_EndGame_v2_62_Ended,
        -- Skipped,
        [2] = self.f_box_EndGame_v2_62_Skipped,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|774039195");
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
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|785891683");
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
    self.box_NarrativeCS_Cinema_37 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeCS_Cinema.debug.lua");
    l0 = self.box_NarrativeCS_Cinema_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeCS_Cinema_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|807988842");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|940445945");
    l0:SetConnections({
    });
    self.box_ChangeSunOrientation_v4_26 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1014736702");
    l0:SetConnections({
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1057732367");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_34_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_PlaySequence_v8_14 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1069913128");
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
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_14_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_14_Skipped,
    });
    self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1086213431");
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
        [0] = self.f_box_MultipleOR_65_Out,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1119415062");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_NarrativeSceneCleanUp_V2_5 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1152713476");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_5_Out,
    });
    self.box_NarrativeFade_43 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1337380633");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_43_FadedOut,
    });
    self.box_PlaySequence_v8_45 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1369510321");
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
        [4] = self.f_box_PlaySequence_v8_45_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_45_Stopped,
    });
    self.box_NarrativeFade_24 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1370178444");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_24_FadedIn,
    });
    self.box_LookAtTrigger_v2_44 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1386076019");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LookAtTrigger_v2_44_Disabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_44_EnterFOV,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1404193447");
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
    self.box_CHEAT_SetEnvironmentTimeScale_52 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1415188006");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_55 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1422807642");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_42 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1427694453");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_42_Holstered,
    });
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1480507031");
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
    self.box_InputPriorityModifier_v4_64 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1498234886");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_64_OnSet,
    });
    self.box_PlaySequence_v8_49 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1500360709");
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
    self.box_Music_Quest_v2_67 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1598223357");
    l0:SetConnections({
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1611142124");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_30_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1622717381");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_InputPriorityModifier_v4_63 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1687797560");
    l0:SetConnections({
        -- OnRelease,
        [0] = self.f_box_InputPriorityModifier_v4_63_OnRelease,
    });
    self.box_ChangeSunOrientation_v4_32 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1733145180");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_28 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1983132511");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 4,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_28_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_28_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_28_SPOut__FadeIn_,
                },
                [1] = {
                    string = "Rabbit",
                    value = self.f_box_PlaySequence_v8_28_SPOut__Rabbit_,
                },
                [2] = {
                    string = "Rabbit_run",
                    value = self.f_box_PlaySequence_v8_28_SPOut__Rabbit_run_,
                },
                [3] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_28_SPOut__FadeOut_,
                },
            },
            count = 4,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_28_Started,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1985316959");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_DisplayActBreakUI_59 = cbox:CreateBox("Domino/System/UI/DisplayActBreakUI.lua");
    l0 = self.box_DisplayActBreakUI_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayActBreakUI_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1987900728");
    l0:SetConnections({
        -- Hidden,
        [1] = self.f_box_DisplayActBreakUI_59_Hidden,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|865393173", "865393173", "EndGame_Credits_Main", "In", "box_ActivityAcknowledgeGate_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1983943459", "1983943459", "EndGame_Credits_Main", "OnLeaveZone", "box_ActivityRetry_v2_9.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_7();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1014072555", "1014072555", "EndGame_Credits_Main", "box_Simple_Node_21.Out", "box_SoundMixing_7.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_ActivityInitialized_13;
    l1 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1503090012", "1503090012", "EndGame_Credits_Main", "box_ActivityInitialized_13.Out", "box_Delay_v5_58.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_5();
    l0 = self.box_Delay_v5_8;
    l1 = self.box_NarrativeSceneCleanUp_V2_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1064873935", "1064873935", "EndGame_Credits_Main", "box_Delay_v5_8.TimeElapsed", "box_NarrativeSceneCleanUp_V2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_58;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|254947878", "254947878", "EndGame_Credits_Main", "box_Delay_v5_58.TimeElapsed", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StartMetaSequence_27_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_27_Out();
    params = self:OnEnter_box_PlaySequence_v8_28();
    l0 = self.box_StartMetaSequence_27;
    l1 = self.box_PlaySequence_v8_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1980536277", "1980536277", "EndGame_Credits_Main", "box_StartMetaSequence_27.Out", "box_PlaySequence_v8_28.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_42();
    l0 = self.box_MultipleOR_2;
    l1 = self.box_NarrativeSceneSetup_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|640104982", "640104982", "EndGame_Credits_Main", "box_MultipleOR_2.Out", "box_NarrativeSceneSetup_42.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InputPriorityModifier_v4_63();
    l0 = self.box_InputPriorityModifier_v4_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|872785972", "872785972", "EndGame_Credits_Main", "box_OutputOrder_v2_18.Out", "box_InputPriorityModifier_v4_63.Release", clone:GetLuaBox(), l0:GetLuaBox());
    -- Release
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1309558762", "1309558762", "EndGame_Credits_Main", "box_OutputOrder_v2_18.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|90174539", "90174539", "EndGame_Credits_Main", "box_OutputOrder_v2_3.Out", "box_Simple_Node_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_24();
    l0 = self.box_NarrativeFade_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|308045069", "308045069", "EndGame_Credits_Main", "box_OutputOrder_v2_3.Out", "box_NarrativeFade_24.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_26();
    l0 = self.box_ChangeSunOrientation_v4_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|213606794", "213606794", "EndGame_Credits_Main", "box_OutputOrder_v2_54.Out", "box_ChangeSunOrientation_v4_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_52();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1262102477", "1262102477", "EndGame_Credits_Main", "box_OutputOrder_v2_54.Out", "box_CHEAT_SetEnvironmentTimeScale_52.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_54_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_53();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|264974030", "264974030", "EndGame_Credits_Main", "box_OutputOrder_v2_54.Out", "box_SetTimeOfDay_53.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v5_29_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_StopMetaSequence_v5_29;
    l1 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1246858295", "1246858295", "EndGame_Credits_Main", "box_StopMetaSequence_v5_29.Stopped", "box_Delay_v5_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayActBreakUI_59();
    l0 = self.box_Delay_v5_51;
    l1 = self.box_DisplayActBreakUI_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1875495285", "1875495285", "EndGame_Credits_Main", "box_Delay_v5_51.TimeElapsed", "box_DisplayActBreakUI_59.Show", l0:GetLuaBox(), l1:GetLuaBox());
    -- Show
    l1:Exec(0, params);
end;

function export:f_box_EndGame_v2_62_Ended()
    local l0, l1;
    l0 = self.box_EndGame_v2_62;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1162960311", "1162960311", "EndGame_Credits_Main", "box_EndGame_v2_62.Ended", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndGame_v2_62_Skipped()
    local l0, l1;
    l0 = self.box_EndGame_v2_62;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|2081654980", "2081654980", "EndGame_Credits_Main", "box_EndGame_v2_62.Skipped", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1491480377", "1491480377", "EndGame_Credits_Main", "box_MultipleOR_12.Out", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_7();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1794743094", "1794743094", "EndGame_Credits_Main", "box_MultipleOR_1.Out", "box_SoundMixing_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|2137359704", "2137359704", "EndGame_Credits_Main", "box_OutputOrder_v2_15.Out", "box_Delay_v5_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_19();
    l0 = self.box_Music_Quest_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1369096072", "1369096072", "EndGame_Credits_Main", "box_OutputOrder_v2_15.Out", "box_Music_Quest_v2_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_34_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|167591451", "167591451", "EndGame_Credits_Main", "box_Delay_v5_34.Started", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1506801193", "1506801193", "EndGame_Credits_Main", "box_Delay_v5_34.TimeElapsed", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_14_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_14;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1052821556", "1052821556", "EndGame_Credits_Main", "box_PlaySequence_v8_14.Finished", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_14_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_14;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1667703587", "1667703587", "EndGame_Credits_Main", "box_PlaySequence_v8_14.Skipped", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_MultipleOR_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|706940496", "706940496", "EndGame_Credits_Main", "box_MultipleOR_65.Out", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_31;
    l1 = self.box_StartMetaSequence_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|18376559", "18376559", "EndGame_Credits_Main", "box_Delay_v5_31.TimeElapsed", "box_StartMetaSequence_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Compare_Boolean_47_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_49();
    l0 = self.box_PlaySequence_v8_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1612092490", "1612092490", "EndGame_Credits_Main", "box_Compare_Boolean_47.A_is_False", "box_PlaySequence_v8_49.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_47_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_48();
    l0 = self.box_PlaySequence_v8_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|982156856", "982156856", "EndGame_Credits_Main", "box_Compare_Boolean_47.A_is_True", "box_PlaySequence_v8_48.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_NarrativeSceneCleanUp_V2_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEndGame_10();
    l0 = self.box_NarrativeSceneCleanUp_V2_5;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEndGame.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|203516024", "203516024", "EndGame_Credits_Main", "box_NarrativeSceneCleanUp_V2_5.Out", "box_ActivityEndGame_10.End", l0:GetLuaBox(), l1:GetLuaBox());
    -- End
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_29();
    l0 = self.box_StopMetaSequence_v5_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|566359441", "566359441", "EndGame_Credits_Main", "box_OutputOrder_v2_40.Out", "box_StopMetaSequence_v5_29.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeCS_Cinema_37();
    l0 = self.box_NarrativeCS_Cinema_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1252099185", "1252099185", "EndGame_Credits_Main", "box_OutputOrder_v2_40.Out", "box_NarrativeCS_Cinema_37.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_NarrativeFade_43_FadedOut()
    local l0, l1;
    l0 = self.box_NarrativeFade_43;
    l1 = self.box_ActivityInitialized_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1321744078", "1321744078", "EndGame_Credits_Main", "box_NarrativeFade_43.FadedOut", "box_ActivityInitialized_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PlaySequence_v8_45_Started()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_44();
    l0 = self.box_PlaySequence_v8_45;
    l1 = self.box_LookAtTrigger_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1280860587", "1280860587", "EndGame_Credits_Main", "box_PlaySequence_v8_45.Started", "box_LookAtTrigger_v2_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_45_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_47();
    l0 = self.box_PlaySequence_v8_45;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|183224210", "183224210", "EndGame_Credits_Main", "box_PlaySequence_v8_45.Stopped", "box_Compare_Boolean_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_24_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_NarrativeFade_24;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|659361430", "659361430", "EndGame_Credits_Main", "box_NarrativeFade_24.FadedIn", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_LookAtTrigger_v2_44_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_50();
    l0 = self.box_LookAtTrigger_v2_44;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|100141781", "100141781", "EndGame_Credits_Main", "box_LookAtTrigger_v2_44.Disabled", "box_SetBoolean_v2_50.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_44_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_50();
    l0 = self.box_LookAtTrigger_v2_44;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1746087391", "1746087391", "EndGame_Credits_Main", "box_LookAtTrigger_v2_44.EnterFOV", "box_SetBoolean_v2_50.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_45();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_PlaySequence_v8_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|264030970", "264030970", "EndGame_Credits_Main", "box_MultipleOR_46.Out", "box_PlaySequence_v8_45.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneSetup_42_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_43();
    l0 = self.box_NarrativeSceneSetup_42;
    l1 = self.box_NarrativeFade_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|630344646", "630344646", "EndGame_Credits_Main", "box_NarrativeSceneSetup_42.Holstered", "box_NarrativeFade_43.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_33();
    l0 = self.box_NarrativeFade_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1894067902", "1894067902", "EndGame_Credits_Main", "box_OutputOrder_v2_6.Out", "box_NarrativeFade_33.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_25();
    l0 = self.box_PostFx_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1631639829", "1631639829", "EndGame_Credits_Main", "box_OutputOrder_v2_6.Out", "box_PostFx_v3_25.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_MultipleOR_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|596442128", "596442128", "EndGame_Credits_Main", "box_MultipleOR_35.Out", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InputPriorityModifier_v4_64();
    l0 = self.box_InputPriorityModifier_v4_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|113227618", "113227618", "EndGame_Credits_Main", "box_OutputOrder_v2_57.Out", "box_InputPriorityModifier_v4_64.Set", clone:GetLuaBox(), l0:GetLuaBox());
    -- Set
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_20();
    l0 = self.box_Music_Quest_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|171565000", "171565000", "EndGame_Credits_Main", "box_OutputOrder_v2_57.Out", "box_Music_Quest_v2_20.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_67();
    l0 = self.box_Music_Quest_v2_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|121098993", "121098993", "EndGame_Credits_Main", "box_OutputOrder_v2_66.Out", "box_Music_Quest_v2_67.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_EndGame_v2_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1095654036", "1095654036", "EndGame_Credits_Main", "box_OutputOrder_v2_66.Out", "box_EndGame_v2_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_InputPriorityModifier_v4_64_OnSet()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_InputPriorityModifier_v4_64;
    l1 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1968893329", "1968893329", "EndGame_Credits_Main", "box_InputPriorityModifier_v4_64.OnSet", "box_Delay_v5_51.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_30_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_Delay_v5_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1536169625", "1536169625", "EndGame_Credits_Main", "box_Delay_v5_30.Started", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|2060649977", "2060649977", "EndGame_Credits_Main", "box_Delay_v5_30.TimeElapsed", "box_Delay_v5_36.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_Delay_v5_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|581593521", "581593521", "EndGame_Credits_Main", "box_Delay_v5_36.TimeElapsed", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InputPriorityModifier_v4_63_OnRelease()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = self.box_InputPriorityModifier_v4_63;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1525854467", "1525854467", "EndGame_Credits_Main", "box_InputPriorityModifier_v4_63.OnRelease", "box_OutputOrder_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_39();
    l0 = self.box_Music_Quest_v2_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1636683", "1636683", "EndGame_Credits_Main", "box_OutputOrder_v2_38.Out", "box_Music_Quest_v2_39.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|671560787", "671560787", "EndGame_Credits_Main", "box_OutputOrder_v2_38.Out", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_39();
    l0 = self.box_Music_Quest_v2_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|552345688", "552345688", "EndGame_Credits_Main", "box_OutputOrder_v2_41.Out", "box_Music_Quest_v2_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeCS_Cinema_37();
    l0 = self.box_NarrativeCS_Cinema_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|2045020917", "2045020917", "EndGame_Credits_Main", "box_OutputOrder_v2_41.Out", "box_NarrativeCS_Cinema_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_28_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|679373195", "679373195", "EndGame_Credits_Main", "box_PlaySequence_v8_28.Finished", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_28_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_PlaySequence_v8_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|498505806", "498505806", "EndGame_Credits_Main", "box_PlaySequence_v8_28.Skipped", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_28_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_PlaySequence_v8_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|450405962", "450405962", "EndGame_Credits_Main", "box_PlaySequence_v8_28.SPOut", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_28_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_33();
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_NarrativeFade_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|249988684", "249988684", "EndGame_Credits_Main", "box_PlaySequence_v8_28.SPOut", "box_NarrativeFade_33.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_28_SPOut__Rabbit_()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_14();
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_PlaySequence_v8_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|85124554", "85124554", "EndGame_Credits_Main", "box_PlaySequence_v8_28.SPOut", "box_PlaySequence_v8_14.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_28_SPOut__Rabbit_run_()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_44();
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_LookAtTrigger_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1481162399", "1481162399", "EndGame_Credits_Main", "box_PlaySequence_v8_28.SPOut", "box_LookAtTrigger_v2_44.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_28_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_PlaySequence_v8_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|59671274", "59671274", "EndGame_Credits_Main", "box_PlaySequence_v8_28.Started", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1010010289", "1010010289", "EndGame_Credits_Main", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1881598189", "1881598189", "EndGame_Credits_Main", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisplayActBreakUI_59_Hidden()
    local l0, l1;
    l0 = self.box_DisplayActBreakUI_59;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1053600121", "1053600121", "EndGame_Credits_Main", "box_DisplayActBreakUI_59.Hidden", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_32();
    l0 = self.box_ChangeSunOrientation_v4_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|551212807", "551212807", "EndGame_Credits_Main", "box_OutputOrder_v2_56.Out", "box_ChangeSunOrientation_v4_32.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_55();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1560376007", "1560376007", "EndGame_Credits_Main", "box_OutputOrder_v2_56.Out", "box_CHEAT_SetEnvironmentTimeScale_55.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_50_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_50_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_45();
    l0 = self.box_PlaySequence_v8_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1880498280", "1880498280", "EndGame_Credits_Main", "box_SetBoolean_v2_50.Out", "box_PlaySequence_v8_45.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|@RemoveMixPresetMuteNonCinNoAmb");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_48()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109679833649790529",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_epilogue_kim/cin_epilogue_kim_rabbit2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_25()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_58()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.6,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_33()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
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
        [2] = 31,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2957740576",
        -- StopEvent,
        [7] = "1946321461",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_20()
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
        [6] = "2957740576",
        -- StopEvent,
        [7] = "1946321461",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|512295994");
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

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|605485412");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|632762831");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
                [2] = self.f_box_OutputOrder_v2_54_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_29()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_ActivityEndGame_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEndGame.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEndGame_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|701839283");
    l0:SetConnections({
    });
    params = {
        -- Destination,
        [0] = "2106582945394344748",
    };
    return params;
end;

function export:OnEnter_box_NarrativeCS_Cinema_37()
    local params;
    params = {
        -- CS_Cinema_Animals,
        [0] = "2109108660205546580",
        -- CS_Cinema_NPCs,
        [1] = "2109108661690330198",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_19()
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
        [6] = "2957740576",
        -- StopEvent,
        [7] = "1946321461",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|979561665");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_26()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 316,
        -- ElevationDegree,
        [1] = 18,
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.4,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_14()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109679833649790529",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_epilogue_kim/cin_epilogue_kim_rabbit.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
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

function export:OnEnter_box_Compare_Boolean_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1138504407");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_47_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_47_A_is_True,
    });
    params = {
        -- A,
        [0] = self.DidPlayerLook,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_5()
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

function export:OnEnter_box_ActivityRetry_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1164460959");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1172787232");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_43()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_45()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109679833649790529",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_epilogue_kim/cin_epilogue_kim_rabbit_loop.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_24()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109680058818903625",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_52()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_55()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_42()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1474911865");
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

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1490183337");
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

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1498054712");
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
                [0] = self.f_box_OutputOrder_v2_66_Out_0,
                [1] = self.f_box_OutputOrder_v2_66_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_64()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
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
        [3] = "2109679833649790529",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/cin_epilogue_kim/cin_epilogue_kim_rabbit_run.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_67()
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
        [6] = "2957740576",
        -- StopEvent,
        [7] = "1946321461",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_63()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1729964293");
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

function export:OnEnter_box_ChangeSunOrientation_v4_32()
    local params;
    params = {
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1929301407");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_28()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2108696843245346783",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_epilogue_kim/cin_epilogue_kim.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_DisplayActBreakUI_59()
    local params;
    params = {
        -- Act,
        [0] = 9,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|1988781977");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 17,
        -- Minute,
        [1] = 45,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|2036291517");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_EndGame_Credits",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|2092268663");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EndGame\\EndGame_Credits.domino|@EndGame_Credits_Main|2123331506");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_50_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_27_Out()
    local l0;
    l0 = self.box_StartMetaSequence_27;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_50_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.DidPlayerLook = l0:GetDataOutValue(0);
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
