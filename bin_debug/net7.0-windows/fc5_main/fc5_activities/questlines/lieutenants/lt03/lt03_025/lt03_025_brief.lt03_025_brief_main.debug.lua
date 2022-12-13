LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_025/lt03_025_brief.domino
-- User graph: LT03_025_BRIEF_Main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_PlayerGetsCaptured.Brick_PlayerGetsCaptured_V4.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1795852615.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1849334431.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2957050381.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_025/LT03_025_BRIEF.LT03_025_BRIEF_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_PlayerGetsCaptured.Brick_PlayerGetsCaptured_V4.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "PlayerCaptured_OnCritical",
                delayed = false,
            },
            [1] = {
                name = "PlayerCaptured_OnEncounter",
                delayed = false,
            },
            [2] = {
                name = "PlayerCaptured_OnPrecondition",
                delayed = false,
            },
            [3] = {
                name = "Start_Mix_Transition",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "b_CaptureOnCritical",
                type = "bool",
            },
            [1] = {
                name = "b_CaptureOnEncounter",
                type = "bool",
            },
            [2] = {
                name = "bUseWarningSound",
                type = "bool",
            },
            [3] = {
                name = "CenterScene_HardCapture",
                type = "entity",
            },
            [4] = {
                name = "CenterScene_SoftCapture",
                type = "entity",
            },
            [5] = {
                name = "eWarningSound",
                type = "Sound",
            },
            [6] = {
                name = "ForcedCapturePreconditionID",
                type = "string",
            },
            [7] = {
                name = "fTimer",
                type = "float",
            },
            [8] = {
                name = "FX",
                type = "string",
            },
            [9] = {
                name = "NarrativeFade_PostFX",
                type = "string",
            },
        },
        dataInCount = 10,
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
        },
        dataInCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT03_025_BRIEF_Main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main";
    self.MetaSequenceID = 0;
    self.box_NarrativeFade_25 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|89573734");
    l0:SetConnections({
    });
    self.box_PostFx_v3_33 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|155093860");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_33_Enabled,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_84 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|162262971");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_84_Out,
    });
    self.box_NarrativeSceneSetup_31 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|178272399");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_31_Holstered,
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|182160053");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_Delay_v5_81 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|193028305");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_81_TimeElapsed,
    });
    self.box_MultipleAND_v2_89 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|198710263");
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
        [0] = self.f_box_MultipleAND_v2_89_Out,
    });
    self.box_Music_Quest_v2_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|214531437");
    l0:SetConnections({
    });
    self.box_PostFx_v3_32 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|363470300");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_32_Enabled,
    });
    self.box_PostFx_v3_39 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|415757739");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_39_Disabled,
    });
    self.box_NarrativeSceneSetup_9 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|464251204");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_9_Holstered,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_83 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|483036086");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_83_Out,
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|551323016");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_PostFx_v3_38 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|635636355");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_38_Disabled,
    });
    self.box_StartMetaSequence_24 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|657533836");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_24_Out,
    });
    self.box_StartMetaSequence_2 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|660553381");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_2_Out,
    });
    self.box_PlaySequence_v8_13 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|752929029");
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
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_13_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_13_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Start_Postfx",
                    value = self.f_box_PlaySequence_v8_13_SPOut__Start_Postfx_,
                },
            },
            count = 1,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_13_Started,
    });
    self.box_Brick_PlayerGetsCaptured_V4_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayerGetsCaptured.Brick_PlayerGetsCaptured_V4.debug.lua");
    l0 = self.box_Brick_PlayerGetsCaptured_V4_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayerGetsCaptured_V4_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|753553534");
    l0:SetConnections({
        -- PlayerCaptured_OnCritical,
        [0] = self.f_box_Brick_PlayerGetsCaptured_V4_4_PlayerCaptured_OnCritical,
        -- PlayerCaptured_OnEncounter,
        [1] = self.f_box_Brick_PlayerGetsCaptured_V4_4_PlayerCaptured_OnEncounter,
        -- PlayerCaptured_OnPrecondition,
        [2] = self.f_box_Brick_PlayerGetsCaptured_V4_4_PlayerCaptured_OnPrecondition,
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|768371971");
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
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|905891104");
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
    self.box_CHEAT_SetEnvironmentTimeScale_76 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|921342072");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_76_Out,
    });
    self.box_PositionModifier_v2_86 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|994474334");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_86_Done,
    });
    self.box_GunsForHireSystemModifier_44 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1000906610");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_44_Disabled,
    });
    self.box_MultipleAND_v2_47 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1032281378");
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
        [0] = self.f_box_MultipleAND_v2_47_Out,
    });
    self.box_MultipleAND_v2_97 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1049178437");
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
        [0] = self.f_box_MultipleAND_v2_97_Out,
    });
    self.box_PlaySequence_v8_28 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1063335124");
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
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_28_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_28_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Start_Postfx",
                    value = self.f_box_PlaySequence_v8_28_SPOut__Start_Postfx_,
                },
            },
            count = 1,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_28_Started,
    });
    self.box_PostFx_v3_40 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1159712198");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_40_Disabled,
    });
    self.box_MultipleAND_v2_70 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1209686727");
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
        [0] = self.f_box_MultipleAND_v2_70_Out,
    });
    self.box_GunsForHireSystemModifier_41 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1244911832");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_41_Disabled,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1305890412");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
    self.box_MultipleAND_v2_73 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1309185579");
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
        [0] = self.f_box_MultipleAND_v2_73_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_85 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1337933183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_85_Out,
    });
    self.box_MultipleAND_v2_54 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1353265628");
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
        [0] = self.f_box_MultipleAND_v2_54_Out,
    });
    self.box_NarrativeFade_16 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1362500262");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_93 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1375763130");
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
        [0] = self.f_box_MultipleAND_v2_93_Out,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1461118582");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_PostFx_v3_34 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1525126759");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_34_Enabled,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1539672828");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_MultipleAND_v2_71 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1545182041");
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
        [0] = self.f_box_MultipleAND_v2_71_Out,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1552024839");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_NarrativeSceneSetup_15 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1559243962");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_15_Holstered,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_78 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1622387039");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_78_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_74 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1634737023");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_74_Out,
    });
    self.box_NarrativeFade_26 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1730697682");
    l0:SetConnections({
    });
    self.box_Delay_v5_79 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1747929801");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_79_TimeElapsed,
    });
    self.box_PositionModifier_v2_91 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1751078430");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_91_Done,
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1870838031");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_GunsForHireSystemModifier_46 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1912713725");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_46_Disabled,
    });
    self.box_PositionModifier_v2_92 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1948642737");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_92_Done,
    });
    self.box_ActivityAcknowledgeGate_8 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1961318693");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_8_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_8_Reloaded,
    });
    self.box_GunsForHireSystemModifier_45 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1999590267");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_45_Disabled,
    });
    self.box_StartMetaSequence_11 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2047233518");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_11_Out,
    });
    self.box_PositionModifier_v2_95 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2064253302");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_95_Done,
    });
    self.box_PlaySequence_v8_18 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2081012963");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 6,
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
                    string = "QuestGiver_Diag_1",
                },
                [1] = {
                    string = "HarCapture_Diag_1",
                },
                [2] = {
                    string = "QuestGiver_Diag_2",
                },
                [3] = {
                    string = "HardCapture_Diag_2",
                },
                [4] = {
                    string = "QuestGiver_Diag_3",
                },
                [5] = {
                    string = "Start_Postfx",
                    value = self.f_box_PlaySequence_v8_18_SPOut__Start_Postfx_,
                },
            },
            count = 6,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_18_Started,
    });
    self.box_PositionModifier_v2_96 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2086452632");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_96_Done,
    });
    self.box_PositionModifier_v2_88 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2093730418");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_88_Done,
    });
    self.box_MultipleAND_v2_59 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2096672023");
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
        [0] = self.f_box_MultipleAND_v2_59_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_41();
    l0 = self.box_GunsForHireSystemModifier_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2139068403", "2139068403", "LT03_025_BRIEF_Main", "In", "box_GunsForHireSystemModifier_41.DisableGFHSystem", self, l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_21();
    l0 = self.box_Music_Quest_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|295603553", "295603553", "LT03_025_BRIEF_Main", "box_Simple_Node_43.Out", "box_Music_Quest_v2_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_21();
    l0 = self.box_Music_Quest_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|327104258", "327104258", "LT03_025_BRIEF_Main", "box_Simple_Node_42.Out", "box_Music_Quest_v2_21.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_AgentGroupModifier_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1436217036", "1436217036", "LT03_025_BRIEF_Main", "box_AgentGroupModifier_52.Out", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|911490888", "911490888", "LT03_025_BRIEF_Main", "box_SetContextualStrategy_50.Out", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_StopMetaSequence_v4_17_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1205826528", "1205826528", "LT03_025_BRIEF_Main", "box_StopMetaSequence_v4_17.Stopped", "box_OutputOrder_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OverrideEnvironment_v3_102_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_103();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|884617592", "884617592", "LT03_025_BRIEF_Main", "box_OverrideEnvironment_v3_102.Enabled", "box_OverrideEnvironment_v3_103.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2051345658", "2051345658", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_14.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1173701257", "1173701257", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_14.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|329908483", "329908483", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_7.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1368514708", "1368514708", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_7.Out", "box_ActivityAcknowledgeGate_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_PostFx_v3_33_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = self.box_PostFx_v3_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1639046649", "1639046649", "LT03_025_BRIEF_Main", "box_PostFx_v3_33.Enabled", "box_OutputOrder_v2_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_84;
    l1 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2120658850", "2120658850", "LT03_025_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_84.Out", "box_Delay_v5_80.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NarrativeSceneSetup_31_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_32();
    l0 = self.box_NarrativeSceneSetup_31;
    l1 = self.box_PostFx_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2134774464", "2134774464", "LT03_025_BRIEF_Main", "box_NarrativeSceneSetup_31.Holstered", "box_PostFx_v3_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_76();
    l0 = self.box_Delay_v5_36;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1293788427", "1293788427", "LT03_025_BRIEF_Main", "box_Delay_v5_36.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_76.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_81_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_102();
    l0 = self.box_Delay_v5_81;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1819951556", "1819951556", "LT03_025_BRIEF_Main", "box_Delay_v5_81.TimeElapsed", "box_OverrideEnvironment_v3_102.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_55();
    l0 = self.box_MultipleAND_v2_89;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|119723262", "119723262", "LT03_025_BRIEF_Main", "box_MultipleAND_v2_89.Out", "box_AgentGroupModifier_55.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_62();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1412103762", "1412103762", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_64.Out", "box_SetContextualStrategy_62.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_65();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1936285149", "1936285149", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_64.Out", "box_SetContextualStrategy_65.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = self.box_PostFx_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1748293932", "1748293932", "LT03_025_BRIEF_Main", "box_PostFx_v3_32.Enabled", "box_OutputOrder_v2_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_39_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_PostFx_v3_39;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|776222824", "776222824", "LT03_025_BRIEF_Main", "box_PostFx_v3_39.Disabled", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_72_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_71();
    l0 = self.box_MultipleAND_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1184356227", "1184356227", "LT03_025_BRIEF_Main", "box_SetContextualStrategy_72.Out", "box_MultipleAND_v2_71.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_NarrativeSceneSetup_9_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_34();
    l0 = self.box_NarrativeSceneSetup_9;
    l1 = self.box_PostFx_v3_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|647825227", "647825227", "LT03_025_BRIEF_Main", "box_NarrativeSceneSetup_9.Holstered", "box_PostFx_v3_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_83;
    l1 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|681596051", "681596051", "LT03_025_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_83.Out", "box_Delay_v5_79.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_58();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1282659265", "1282659265", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_56.Out", "box_SetContextualStrategy_58.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_50();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|386707532", "386707532", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_56.Out", "box_SetContextualStrategy_50.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_98();
    l0 = self.box_Delay_v5_80;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|359952184", "359952184", "LT03_025_BRIEF_Main", "box_Delay_v5_80.TimeElapsed", "box_OverrideEnvironment_v3_98.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_73();
    l0 = self.box_MultipleAND_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1313709191", "1313709191", "LT03_025_BRIEF_Main", "box_SetContextualStrategy_63.Out", "box_MultipleAND_v2_73.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_66_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_71();
    l0 = self.box_MultipleAND_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1546746602", "1546746602", "LT03_025_BRIEF_Main", "box_SetContextualStrategy_66.Out", "box_MultipleAND_v2_71.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_49_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_59();
    l0 = self.box_MultipleAND_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|385268199", "385268199", "LT03_025_BRIEF_Main", "box_SetContextualStrategy_49.Out", "box_MultipleAND_v2_59.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_PostFx_v3_38_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_PostFx_v3_38;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1375273031", "1375273031", "LT03_025_BRIEF_Main", "box_PostFx_v3_38.Disabled", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_24_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_24_Out();
    params = self:OnEnter_box_PlaySequence_v8_18();
    l0 = self.box_StartMetaSequence_24;
    l1 = self.box_PlaySequence_v8_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|701205926", "701205926", "LT03_025_BRIEF_Main", "box_StartMetaSequence_24.Out", "box_PlaySequence_v8_18.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_StartMetaSequence_2_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_2_Out();
    params = self:OnEnter_box_PlaySequence_v8_28();
    l0 = self.box_StartMetaSequence_2;
    l1 = self.box_PlaySequence_v8_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|43292750", "43292750", "LT03_025_BRIEF_Main", "box_StartMetaSequence_2.Out", "box_PlaySequence_v8_28.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OverrideEnvironment_v3_98_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_99();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1786523497", "1786523497", "LT03_025_BRIEF_Main", "box_OverrideEnvironment_v3_98.Enabled", "box_OverrideEnvironment_v3_99.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_13_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_13;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1556529588", "1556529588", "LT03_025_BRIEF_Main", "box_PlaySequence_v8_13.Finished", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_13_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_PlaySequence_v8_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|320253983", "320253983", "LT03_025_BRIEF_Main", "box_PlaySequence_v8_13.Skipped", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_13_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_25();
    l0 = self.box_PlaySequence_v8_13;
    l1 = self.box_NarrativeFade_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1827121918", "1827121918", "LT03_025_BRIEF_Main", "box_PlaySequence_v8_13.SPOut", "box_NarrativeFade_25.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_13_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_40();
    l0 = self.box_PlaySequence_v8_13;
    l1 = self.box_PostFx_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1982323699", "1982323699", "LT03_025_BRIEF_Main", "box_PlaySequence_v8_13.Started", "box_PostFx_v3_40.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_96();
    l0 = self.box_PositionModifier_v2_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|199721873", "199721873", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_94.Out", "box_PositionModifier_v2_96.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_95();
    l0 = self.box_PositionModifier_v2_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|572554966", "572554966", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_94.Out", "box_PositionModifier_v2_95.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_4_PlayerCaptured_OnCritical()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|716825076", "716825076", "LT03_025_BRIEF_Main", "box_Brick_PlayerGetsCaptured_V4_4.PlayerCaptured_OnCritical", "box_OutputOrder_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_4_PlayerCaptured_OnEncounter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|379921702", "379921702", "LT03_025_BRIEF_Main", "box_Brick_PlayerGetsCaptured_V4_4.PlayerCaptured_OnEncounter", "box_OutputOrder_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_4_PlayerCaptured_OnPrecondition()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2090338773", "2090338773", "LT03_025_BRIEF_Main", "box_Brick_PlayerGetsCaptured_V4_4.PlayerCaptured_OnPrecondition", "box_OutputOrder_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_17();
    l0 = self.box_MultipleOR_22;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|521848121", "521848121", "LT03_025_BRIEF_Main", "box_MultipleOR_22.Out", "box_StopMetaSequence_v4_17.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_59();
    l0 = self.box_MultipleAND_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|38654420", "38654420", "LT03_025_BRIEF_Main", "box_SetContextualStrategy_57.Out", "box_MultipleAND_v2_59.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_73();
    l0 = self.box_MultipleAND_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|661897081", "661897081", "LT03_025_BRIEF_Main", "box_SetContextualStrategy_69.Out", "box_MultipleAND_v2_73.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|588341146", "588341146", "LT03_025_BRIEF_Main", "box_MultipleOR_3.Out", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_77();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_76;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1265708094", "1265708094", "LT03_025_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_76.Out", "box_SetTimeOfDay_77.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_51();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|489520049", "489520049", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_60.Out", "box_SetContextualStrategy_51.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_61();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2111242367", "2111242367", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_60.Out", "box_SetContextualStrategy_61.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|334477828", "334477828", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_108.Out", "box_Delay_v5_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_109();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1808121079", "1808121079", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_108.Out", "box_SoundMixing_109.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1406622578", "1406622578", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_104.Out", "box_Delay_v5_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_105();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1545810257", "1545810257", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_104.Out", "box_SoundMixing_105.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_86_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_89();
    l0 = self.box_PositionModifier_v2_86;
    l1 = self.box_MultipleAND_v2_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|79825225", "79825225", "LT03_025_BRIEF_Main", "box_PositionModifier_v2_86.Done", "box_MultipleAND_v2_89.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_GunsForHireSystemModifier_44_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_83();
    l0 = self.box_GunsForHireSystemModifier_44;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|703932650", "703932650", "LT03_025_BRIEF_Main", "box_GunsForHireSystemModifier_44.Disabled", "box_CHEAT_SetEnvironmentTimeScale_83.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_OverrideEnvironment_v3_103_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_23();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1454734025", "1454734025", "LT03_025_BRIEF_Main", "box_OverrideEnvironment_v3_103.Enabled", "box_ActivityEnd_23.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_15();
    l0 = self.box_MultipleAND_v2_47;
    l1 = self.box_NarrativeSceneSetup_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1869971073", "1869971073", "LT03_025_BRIEF_Main", "box_MultipleAND_v2_47.Out", "box_NarrativeSceneSetup_15.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v4_12_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1693102937", "1693102937", "LT03_025_BRIEF_Main", "box_StopMetaSequence_v4_12.Stopped", "box_OutputOrder_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_52();
    l0 = self.box_MultipleAND_v2_97;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|568271097", "568271097", "LT03_025_BRIEF_Main", "box_MultipleAND_v2_97.Out", "box_AgentGroupModifier_52.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1849805826", "1849805826", "LT03_025_BRIEF_Main", "box_AgentGroupModifier_55.Out", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_75_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1016550200", "1016550200", "LT03_025_BRIEF_Main", "box_SetTimeOfDay_75.Out", "box_StartMetaSequence_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_PlaySequence_v8_28_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|684881962", "684881962", "LT03_025_BRIEF_Main", "box_PlaySequence_v8_28.Finished", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_28_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_PlaySequence_v8_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1237010950", "1237010950", "LT03_025_BRIEF_Main", "box_PlaySequence_v8_28.Skipped", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_28_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_16();
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_NarrativeFade_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1972605791", "1972605791", "LT03_025_BRIEF_Main", "box_PlaySequence_v8_28.SPOut", "box_NarrativeFade_16.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_28_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_38();
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_PostFx_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1194924097", "1194924097", "LT03_025_BRIEF_Main", "box_PlaySequence_v8_28.Started", "box_PostFx_v3_38.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OverrideEnvironment_v3_101_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_27();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1750012128", "1750012128", "LT03_025_BRIEF_Main", "box_OverrideEnvironment_v3_101.Enabled", "box_ActivityEnd_27.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_40_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_PostFx_v3_40;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|823238510", "823238510", "LT03_025_BRIEF_Main", "box_PostFx_v3_40.Disabled", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_53_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|764797261", "764797261", "LT03_025_BRIEF_Main", "box_AgentGroupModifier_53.Out", "box_OutputOrder_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_45();
    l0 = self.box_MultipleAND_v2_70;
    l1 = self.box_GunsForHireSystemModifier_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|373398409", "373398409", "LT03_025_BRIEF_Main", "box_MultipleAND_v2_70.Out", "box_GunsForHireSystemModifier_45.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_GunsForHireSystemModifier_41_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_GunsForHireSystemModifier_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2094623987", "2094623987", "LT03_025_BRIEF_Main", "box_GunsForHireSystemModifier_41.Disabled", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_30();
    l0 = self.box_MultipleOR_19;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2006696656", "2006696656", "LT03_025_BRIEF_Main", "box_MultipleOR_19.Out", "box_StopMetaSequence_v4_30.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_44();
    l0 = self.box_MultipleAND_v2_73;
    l1 = self.box_GunsForHireSystemModifier_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1553588284", "1553588284", "LT03_025_BRIEF_Main", "box_MultipleAND_v2_73.Out", "box_GunsForHireSystemModifier_44.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_81();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_85;
    l1 = self.box_Delay_v5_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|719894796", "719894796", "LT03_025_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_85.Out", "box_Delay_v5_81.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_9();
    l0 = self.box_MultipleAND_v2_54;
    l1 = self.box_NarrativeSceneSetup_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1998784658", "1998784658", "LT03_025_BRIEF_Main", "box_MultipleAND_v2_54.Out", "box_NarrativeSceneSetup_9.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_53();
    l0 = self.box_MultipleAND_v2_93;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1129513057", "1129513057", "LT03_025_BRIEF_Main", "box_MultipleAND_v2_93.Out", "box_AgentGroupModifier_53.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|613395085", "613395085", "LT03_025_BRIEF_Main", "box_SetTimeOfDay_82.Out", "box_StartMetaSequence_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_SetContextualStrategy_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_70();
    l0 = self.box_MultipleAND_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1690076134", "1690076134", "LT03_025_BRIEF_Main", "box_SetContextualStrategy_62.Out", "box_MultipleAND_v2_70.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_12();
    l0 = self.box_MultipleOR_20;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|959931032", "959931032", "LT03_025_BRIEF_Main", "box_MultipleOR_20.Out", "box_StopMetaSequence_v4_12.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_92();
    l0 = self.box_PositionModifier_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|680211310", "680211310", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_90.Out", "box_PositionModifier_v2_92.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_91();
    l0 = self.box_PositionModifier_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|266035478", "266035478", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_90.Out", "box_PositionModifier_v2_91.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_PostFx_v3_34_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = self.box_PostFx_v3_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1801197369", "1801197369", "LT03_025_BRIEF_Main", "box_PostFx_v3_34.Enabled", "box_OutputOrder_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_74();
    l0 = self.box_Delay_v5_35;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1875966960", "1875966960", "LT03_025_BRIEF_Main", "box_Delay_v5_35.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_74.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_46();
    l0 = self.box_MultipleAND_v2_71;
    l1 = self.box_GunsForHireSystemModifier_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2029254097", "2029254097", "LT03_025_BRIEF_Main", "box_MultipleAND_v2_71.Out", "box_GunsForHireSystemModifier_46.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_78();
    l0 = self.box_Delay_v5_37;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|515012163", "515012163", "LT03_025_BRIEF_Main", "box_Delay_v5_37.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_78.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_NarrativeSceneSetup_15_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_33();
    l0 = self.box_NarrativeSceneSetup_15;
    l1 = self.box_PostFx_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1394845312", "1394845312", "LT03_025_BRIEF_Main", "box_NarrativeSceneSetup_15.Holstered", "box_PostFx_v3_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_70();
    l0 = self.box_MultipleAND_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1111054603", "1111054603", "LT03_025_BRIEF_Main", "box_SetContextualStrategy_65.Out", "box_MultipleAND_v2_70.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_88();
    l0 = self.box_PositionModifier_v2_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|898198819", "898198819", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_87.Out", "box_PositionModifier_v2_88.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_86();
    l0 = self.box_PositionModifier_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|211030997", "211030997", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_87.Out", "box_PositionModifier_v2_86.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OverrideEnvironment_v3_100_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_101();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1031931644", "1031931644", "LT03_025_BRIEF_Main", "box_OverrideEnvironment_v3_100.Enabled", "box_OverrideEnvironment_v3_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_78_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_82();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_78;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|956141879", "956141879", "LT03_025_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_78.Out", "box_SetTimeOfDay_82.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_54();
    l0 = self.box_MultipleAND_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1495114436", "1495114436", "LT03_025_BRIEF_Main", "box_SetContextualStrategy_61.Out", "box_MultipleAND_v2_54.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_75();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_74;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|997395931", "997395931", "LT03_025_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_74.Out", "box_SetTimeOfDay_75.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_69();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|726043305", "726043305", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_67.Out", "box_SetContextualStrategy_69.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_63();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1140531613", "1140531613", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_67.Out", "box_SetContextualStrategy_63.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_72();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1018103405", "1018103405", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_68.Out", "box_SetContextualStrategy_72.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_66();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|935014921", "935014921", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_68.Out", "box_SetContextualStrategy_66.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|338997491", "338997491", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_106.Out", "box_Delay_v5_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_106_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_107();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|259719842", "259719842", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_106.Out", "box_SoundMixing_107.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1482402722", "1482402722", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_29.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1409624514", "1409624514", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_29.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_49();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1945851725", "1945851725", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_48.Out", "box_SetContextualStrategy_49.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_57();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1898397725", "1898397725", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_48.Out", "box_SetContextualStrategy_57.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_79_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_100();
    l0 = self.box_Delay_v5_79;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|220566868", "220566868", "LT03_025_BRIEF_Main", "box_Delay_v5_79.TimeElapsed", "box_OverrideEnvironment_v3_100.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_91_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_93();
    l0 = self.box_PositionModifier_v2_91;
    l1 = self.box_MultipleAND_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2023257266", "2023257266", "LT03_025_BRIEF_Main", "box_PositionModifier_v2_91.Done", "box_MultipleAND_v2_93.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_54();
    l0 = self.box_MultipleAND_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1925111908", "1925111908", "LT03_025_BRIEF_Main", "box_SetContextualStrategy_51.Out", "box_MultipleAND_v2_54.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|283152449", "283152449", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_10.Out", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1756808946", "1756808946", "LT03_025_BRIEF_Main", "box_OutputOrder_v2_10.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1514729362", "1514729362", "LT03_025_BRIEF_Main", "box_SetContextualStrategy_58.Out", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayerGetsCaptured_V4_4();
    l0 = self.box_ActivityInitialized_6;
    l1 = self.box_Brick_PlayerGetsCaptured_V4_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1379137618", "1379137618", "LT03_025_BRIEF_Main", "box_ActivityInitialized_6.Out", "box_Brick_PlayerGetsCaptured_V4_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_GunsForHireSystemModifier_46_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_85();
    l0 = self.box_GunsForHireSystemModifier_46;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|733908549", "733908549", "LT03_025_BRIEF_Main", "box_GunsForHireSystemModifier_46.Disabled", "box_CHEAT_SetEnvironmentTimeScale_85.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_92_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_93();
    l0 = self.box_PositionModifier_v2_92;
    l1 = self.box_MultipleAND_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|723082900", "723082900", "LT03_025_BRIEF_Main", "box_PositionModifier_v2_92.Done", "box_MultipleAND_v2_93.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_ActivityAcknowledgeGate_8_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|372011142", "372011142", "LT03_025_BRIEF_Main", "box_ActivityAcknowledgeGate_8.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_8_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1001906547", "1001906547", "LT03_025_BRIEF_Main", "box_ActivityAcknowledgeGate_8.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetTimeOfDay_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|441462600", "441462600", "LT03_025_BRIEF_Main", "box_SetTimeOfDay_77.Out", "box_StartMetaSequence_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_GunsForHireSystemModifier_45_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_84();
    l0 = self.box_GunsForHireSystemModifier_45;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|364003242", "364003242", "LT03_025_BRIEF_Main", "box_GunsForHireSystemModifier_45.Disabled", "box_CHEAT_SetEnvironmentTimeScale_84.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_StopMetaSequence_v4_30_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|456403286", "456403286", "LT03_025_BRIEF_Main", "box_StopMetaSequence_v4_30.Stopped", "box_OutputOrder_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_11_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_11_Out();
    params = self:OnEnter_box_PlaySequence_v8_13();
    l0 = self.box_StartMetaSequence_11;
    l1 = self.box_PlaySequence_v8_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1570376736", "1570376736", "LT03_025_BRIEF_Main", "box_StartMetaSequence_11.Out", "box_PlaySequence_v8_13.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_95_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_97();
    l0 = self.box_PositionModifier_v2_95;
    l1 = self.box_MultipleAND_v2_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1866416175", "1866416175", "LT03_025_BRIEF_Main", "box_PositionModifier_v2_95.Done", "box_MultipleAND_v2_97.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_PlaySequence_v8_18_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_18;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2069417237", "2069417237", "LT03_025_BRIEF_Main", "box_PlaySequence_v8_18.Finished", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_18_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_PlaySequence_v8_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1366718513", "1366718513", "LT03_025_BRIEF_Main", "box_PlaySequence_v8_18.Skipped", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_18_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_26();
    l0 = self.box_PlaySequence_v8_18;
    l1 = self.box_NarrativeFade_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|237179694", "237179694", "LT03_025_BRIEF_Main", "box_PlaySequence_v8_18.SPOut", "box_NarrativeFade_26.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_18_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_39();
    l0 = self.box_PlaySequence_v8_18;
    l1 = self.box_PostFx_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|169626920", "169626920", "LT03_025_BRIEF_Main", "box_PlaySequence_v8_18.Started", "box_PostFx_v3_39.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_96_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_97();
    l0 = self.box_PositionModifier_v2_96;
    l1 = self.box_MultipleAND_v2_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|557708903", "557708903", "LT03_025_BRIEF_Main", "box_PositionModifier_v2_96.Done", "box_MultipleAND_v2_97.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_PositionModifier_v2_88_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_89();
    l0 = self.box_PositionModifier_v2_88;
    l1 = self.box_MultipleAND_v2_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1056046773", "1056046773", "LT03_025_BRIEF_Main", "box_PositionModifier_v2_88.Done", "box_MultipleAND_v2_89.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_31();
    l0 = self.box_MultipleAND_v2_59;
    l1 = self.box_NarrativeSceneSetup_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1996381501", "1996381501", "LT03_025_BRIEF_Main", "box_MultipleAND_v2_59.Out", "box_NarrativeSceneSetup_31.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_OverrideEnvironment_v3_99_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|945443402", "945443402", "LT03_025_BRIEF_Main", "box_OverrideEnvironment_v3_99.Enabled", "box_ActivityEnd_5.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|@StartMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|@StopMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|21666448");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_52_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A714E363",
        -- PawnGroup,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|55035985");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_50_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005339280712976",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_25()
    local params;
    params = {
        -- PostFX,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|100707274");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_17_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|112946798");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_102_Enabled,
    });
    params = {
        -- ratio,
        [9] = 1,
        -- sky,
        [11] = "FCZ_Default:Special.Bliss_Sky",
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|115848374");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|153479588");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_33()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_84()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_31()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_81()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_89()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_21()
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
        [6] = "1795852615",
        -- StopEvent,
        [7] = "2957050381",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|245400661");
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

function export:OnEnter_box_ActivityEnd_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|283760113");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_32()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_39()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|416983287");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_72_Out,
    });
    params = {
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_9()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_83()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|486138119");
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

function export:OnEnter_box_Delay_v5_80()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|566189884");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_63_Out,
    });
    params = {
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|575564905");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_66_Out,
    });
    params = {
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|616446560");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_49_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005336587969806",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_38()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|669526033");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_98_Enabled,
    });
    params = {
        -- ratio,
        [9] = 1,
        -- sky,
        [11] = "FCZ_Default:Special.Bliss_Sky",
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_13()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101440036644875057",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/cin_lt03_061_soft_cap_questgiver/cin_lt03_061_soft_cap_questgiver_v2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|753137555");
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
                [0] = self.f_box_OutputOrder_v2_94_Out_0,
                [1] = self.f_box_OutputOrder_v2_94_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayerGetsCaptured_V4_4()
    local params;
    params = {
        -- b_CaptureOnCritical,
        [0] = false,
        -- b_CaptureOnEncounter,
        [1] = true,
        -- bUseWarningSound,
        [2] = true,
        -- CenterScene_HardCapture,
        [3] = "2101440036644875057",
        -- CenterScene_SoftCapture,
        [4] = "2101440036644875057",
        -- eWarningSound,
        [5] = "1849334431",
        -- ForcedCapturePreconditionID,
        [6] = "9015253331037883",
        -- fTimer,
        [7] = 10,
        -- NarrativeFade_PostFX,
        [9] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|784470538");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_57_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005339280712976",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|903953068");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_69_Out,
    });
    params = {
        -- Group,
        [1] = "#6AC8084C",
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

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|935291548");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|940905619");
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
                [0] = self.f_box_OutputOrder_v2_108_Out_0,
                [1] = self.f_box_OutputOrder_v2_108_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|987466541");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
                [1] = self.f_box_OutputOrder_v2_104_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_86()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101440036644875057",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005339280712976",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_44()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1010125483");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_103_Enabled,
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Unique_Fogs.Bliss_TableOne",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_47()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1032927538");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_12_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_97()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1058087345");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_55_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A714E363",
        -- PawnGroup,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1060556306");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_75_Out,
    });
    params = {
        -- Hour,
        [0] = 20,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_28()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101440036644875057",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/cin_lt03_060_hard_capture/cin_lt03_060_hard_capture_v2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1085940755");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1136545251");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_101_Enabled,
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Unique_Fogs.Bliss_TableOne",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_40()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1182875265");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_53_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A714E363",
        -- PawnGroup,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_70()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_41()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_73()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_85()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_54()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_16()
    local params;
    params = {
        -- PostFX,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_93()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1378006133");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_82_Out,
    });
    params = {
        -- Hour,
        [0] = 20,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1455151147");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_62_Out,
    });
    params = {
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1504848354");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1514821559");
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
                [0] = self.f_box_OutputOrder_v2_90_Out_0,
                [1] = self.f_box_OutputOrder_v2_90_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_34()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_71()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_15()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1564375958");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1591074246");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_65_Out,
    });
    params = {
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1599321600");
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

function export:OnEnter_box_OverrideEnvironment_v3_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1600045823");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_100_Enabled,
    });
    params = {
        -- ratio,
        [9] = 1,
        -- sky,
        [11] = "FCZ_Default:Special.Bliss_Sky",
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1602295182");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_78()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1629621643");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_61_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005339280712976",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_74()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1667273391");
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

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1680294133");
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

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1715953210");
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
                [0] = self.f_box_OutputOrder_v2_106_Out_0,
                [1] = self.f_box_OutputOrder_v2_106_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1716908971");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_26()
    local params;
    params = {
        -- PostFX,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1731119292");
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

function export:OnEnter_box_Delay_v5_79()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_91()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101440036644875057",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005339280712976",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1789881541");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_51_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005336587969806",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1818602866");
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
        [8] = "LT03_025_BRIEF Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1824563565");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1861929152");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_58_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005336587969806",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_46()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_92()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101440036644875057",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005336587969806",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|1988163352");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_77_Out,
    });
    params = {
        -- Hour,
        [0] = 20,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_45()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2030358480");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_30_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_95()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101440036644875057",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005339280712976",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2078724408");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_18()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101440036644875057",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_LT03_062_Soft_Cap_Hostage_Transform/cin_lt03_062_soft_cap_hostage_transform.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_96()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101440036644875057",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005336587969806",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_88()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101440036644875057",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005336587969806",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_59()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_BRIEF.domino|@LT03_025_BRIEF_Main|2133118717");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_99_Enabled,
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Unique_Fogs.Bliss_TableOne",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_24_Out()
    local l0;
    l0 = self.box_StartMetaSequence_24;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_2_Out()
    local l0;
    l0 = self.box_StartMetaSequence_2;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_11_Out()
    local l0;
    l0 = self.box_StartMetaSequence_11;
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
