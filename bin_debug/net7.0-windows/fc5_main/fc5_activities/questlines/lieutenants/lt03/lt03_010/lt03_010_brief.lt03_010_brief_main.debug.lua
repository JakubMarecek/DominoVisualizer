LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_010/lt03_010_brief.domino
-- User graph: LT03_010_BRIEF_Main
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
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        
        -- Load resources
        cboxRes:LoadResource([[264881612.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3596813851.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1849334431.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4013606668.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1998113247.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_010/LT03_010_BRIEF.LT03_010_BRIEF_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/PostWWiseEventSetState.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetState",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Set",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "SoundId",
                type = "Sound",
            },
            [1] = {
                name = "SoundType",
                type = "SoundType",
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
    metadataTable[GetPathID("Domino/System/SoundMusicTrigger.lua")] = {
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
                name = "Skipped",
                delayed = false,
            },
            [1] = {
                name = "Started",
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
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "Priority",
                type = "int",
            },
            [3] = {
                name = "SoundType",
                type = "SoundType",
            },
            [4] = {
                name = "Stackable",
                type = "bool",
            },
            [5] = {
                name = "StartEvent",
                type = "Sound",
            },
            [6] = {
                name = "StopEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopFadeOut",
                type = "float",
            },
            [8] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [9] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT03_010_BRIEF_Main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main";
    self.MetaSequenceID = 0;
    self.box_SoundMusicTriggerBox_4 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|40433272");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_4_Started,
    });
    self.box_NarrativeSceneSetup_27 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|43833232");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_27_Holstered,
    });
    self.box_PositionModifier_v2_96 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|152925254");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_96_Done,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|154334684");
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
    self.box_NarrativeFade_15 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|194876456");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_44 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|207397025");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_44_Disabled,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_75 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|219398085");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_75_Out,
    });
    self.box_NarrativeFade_17 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|257170004");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_70 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|303403504");
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
    self.box_PositionModifier_v2_94 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|306427038");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_94_Done,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_86 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|324871940");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_86_Out,
    });
    self.box_PlaySequence_v8_22 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|371992366");
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
        [0] = self.f_box_PlaySequence_v8_22_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_22_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Start_Postfx",
                    value = self.f_box_PlaySequence_v8_22_SPOut__Start_Postfx_,
                },
            },
            count = 1,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_22_Started,
    });
    self.box_PositionModifier_v2_98 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|397889846");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_98_Done,
    });
    self.box_GunsForHireSystemModifier_45 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|400557151");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_45_Disabled,
    });
    self.box_NarrativeFade_28 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|452070951");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_97 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|476886443");
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
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|539655036");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|584610399");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_StartMetaSequence_18 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|640110353");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_18_Out,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|772695622");
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
    self.box_Brick_PlayerGetsCaptured_V4_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayerGetsCaptured.Brick_PlayerGetsCaptured_V4.debug.lua");
    l0 = self.box_Brick_PlayerGetsCaptured_V4_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayerGetsCaptured_V4_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|799082486");
    l0:SetConnections({
        -- PlayerCaptured_OnCritical,
        [0] = self.f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnCritical,
        -- PlayerCaptured_OnEncounter,
        [1] = self.f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnEncounter,
        -- PlayerCaptured_OnPrecondition,
        [2] = self.f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnPrecondition,
    });
    self.box_PostFx_v3_42 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|839328978");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_42_Disabled,
    });
    self.box_MultipleAND_v2_55 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|852084955");
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
        [0] = self.f_box_MultipleAND_v2_55_Out,
    });
    self.box_ActivityInitialized_7 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|867352206");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_7_Out,
    });
    self.box_PostFx_v3_39 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|943638170");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_39_Enabled,
    });
    self.box_StartMetaSequence_26 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|958732792");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_26_Out,
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|966959479");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_NarrativeSceneSetup_16 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1063954393");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_16_Holstered,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_77 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1148798346");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_77_Out,
    });
    self.box_PositionModifier_v2_87 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1173539168");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_87_Done,
    });
    self.box_PlaySequence_v8_20 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1175232853");
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
        [0] = self.f_box_PlaySequence_v8_20_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_20_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Start_Postfx",
                    value = self.f_box_PlaySequence_v8_20_SPOut__Start_Postfx_,
                },
            },
            count = 1,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_20_Started,
    });
    self.box_MultipleAND_v2_69 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1188416764");
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
        [0] = self.f_box_MultipleAND_v2_69_Out,
    });
    self.box_PositionModifier_v2_89 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1190079726");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_89_Done,
    });
    self.box_MultipleAND_v2_93 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1211512836");
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
    self.box_CHEAT_SetEnvironmentTimeScale_85 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1214719363");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_85_Out,
    });
    self.box_MultipleAND_v2_51 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1256907602");
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
        [0] = self.f_box_MultipleAND_v2_51_Out,
    });
    self.box_NarrativeSceneSetup_30 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1289598289");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_30_Holstered,
    });
    self.box_PostFx_v3_41 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1366115125");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_41_Disabled,
    });
    self.box_PositionModifier_v2_92 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1375270525");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_92_Done,
    });
    self.box_Delay_v5_81 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1440054022");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_81_TimeElapsed,
    });
    self.box_PostFx_v3_43 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1473537185");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_43_Disabled,
    });
    self.box_PlaySequence_v8_14 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1493603446");
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
        [0] = self.f_box_PlaySequence_v8_14_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_14_Skipped,
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
                    value = self.f_box_PlaySequence_v8_14_SPOut__Start_Postfx_,
                },
            },
            count = 6,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_14_Started,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1580319705");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_PostWWiseEventSetState_9 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1618677414");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_25 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1637347431");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_25_Disabled,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1662089402");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_MultipleAND_v2_72 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1680026315");
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
        [0] = self.f_box_MultipleAND_v2_72_Out,
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1775992340");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_PostFx_v3_35 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1795965094");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_35_Enabled,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_84 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1799341795");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_84_Out,
    });
    self.box_MultipleAND_v2_53 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1864806020");
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
        [0] = self.f_box_MultipleAND_v2_53_Out,
    });
    self.box_PostWWiseEventSetState_6 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1942018883");
    l0:SetConnections({
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1969534485");
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
    self.box_PostFx_v3_37 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2009781077");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_37_Enabled,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_79 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2050303505");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_79_Out,
    });
    self.box_MultipleAND_v2_88 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2069367275");
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
        [0] = self.f_box_MultipleAND_v2_88_Out,
    });
    self.box_Delay_v5_82 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2084171522");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_82_TimeElapsed,
    });
    self.box_StartMetaSequence_21 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2098034678");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_21_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|466022378", "466022378", "LT03_010_BRIEF_Main", "In", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_73_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_4();
    l0 = self.box_SoundMusicTriggerBox_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|336873427", "336873427", "LT03_010_BRIEF_Main", "box_Simple_Node_73.Out", "box_SoundMusicTriggerBox_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostWWiseEventSetState_9();
    l0 = self.box_PostWWiseEventSetState_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1201719378", "1201719378", "LT03_010_BRIEF_Main", "box_Simple_Node_74.Out", "box_PostWWiseEventSetState_9.SetState", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetState
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_89();
    l0 = self.box_PositionModifier_v2_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|657397591", "657397591", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_90.Out", "box_PositionModifier_v2_89.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_87();
    l0 = self.box_PositionModifier_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1438182183", "1438182183", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_90.Out", "box_PositionModifier_v2_87.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SoundMusicTriggerBox_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_6();
    l0 = self.box_SoundMusicTriggerBox_4;
    l1 = self.box_PostWWiseEventSetState_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1757318399", "1757318399", "LT03_010_BRIEF_Main", "box_SoundMusicTriggerBox_4.Started", "box_PostWWiseEventSetState_6.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_NarrativeSceneSetup_27_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_37();
    l0 = self.box_NarrativeSceneSetup_27;
    l1 = self.box_PostFx_v3_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1215354121", "1215354121", "LT03_010_BRIEF_Main", "box_NarrativeSceneSetup_27.Holstered", "box_PostFx_v3_37.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_71();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|634691027", "634691027", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_67.Out", "box_SetContextualStrategy_71.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_65();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2061417002", "2061417002", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_67.Out", "box_SetContextualStrategy_65.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_69();
    l0 = self.box_MultipleAND_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1196415083", "1196415083", "LT03_010_BRIEF_Main", "box_SetContextualStrategy_61.Out", "box_MultipleAND_v2_69.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_PositionModifier_v2_96_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_97();
    l0 = self.box_PositionModifier_v2_96;
    l1 = self.box_MultipleAND_v2_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1406983098", "1406983098", "LT03_010_BRIEF_Main", "box_PositionModifier_v2_96.Done", "box_MultipleAND_v2_97.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|964183494", "964183494", "LT03_010_BRIEF_Main", "box_MultipleOR_3.Out", "box_ActivityInitialized_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetContextualStrategy_49_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_55();
    l0 = self.box_MultipleAND_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1121999489", "1121999489", "LT03_010_BRIEF_Main", "box_SetContextualStrategy_49.Out", "box_MultipleAND_v2_55.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetTimeOfDay_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1007459340", "1007459340", "LT03_010_BRIEF_Main", "box_SetTimeOfDay_78.Out", "box_StartMetaSequence_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_SetTimeOfDay_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|312390592", "312390592", "LT03_010_BRIEF_Main", "box_SetTimeOfDay_76.Out", "box_StartMetaSequence_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_GunsForHireSystemModifier_44_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_56();
    l0 = self.box_GunsForHireSystemModifier_44;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|270696432", "270696432", "LT03_010_BRIEF_Main", "box_GunsForHireSystemModifier_44.Disabled", "box_AgentGroupModifier_56.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_75;
    l1 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|761067764", "761067764", "LT03_010_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_75.Out", "box_Delay_v5_80.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|74197951", "74197951", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_100.Out", "box_Delay_v5_38.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_99();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|42647857", "42647857", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_100.Out", "box_SoundMixing_99.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_86();
    l0 = self.box_MultipleAND_v2_70;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1743138376", "1743138376", "LT03_010_BRIEF_Main", "box_MultipleAND_v2_70.Out", "box_CHEAT_SetEnvironmentTimeScale_86.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_94_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_93();
    l0 = self.box_PositionModifier_v2_94;
    l1 = self.box_MultipleAND_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1865369632", "1865369632", "LT03_010_BRIEF_Main", "box_PositionModifier_v2_94.Done", "box_MultipleAND_v2_93.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_82();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_86;
    l1 = self.box_Delay_v5_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1884747863", "1884747863", "LT03_010_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_86.Out", "box_Delay_v5_82.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StopMetaSequence_v4_13_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|604750376", "604750376", "LT03_010_BRIEF_Main", "box_StopMetaSequence_v4_13.Stopped", "box_OutputOrder_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_22_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_22;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2025664677", "2025664677", "LT03_010_BRIEF_Main", "box_PlaySequence_v8_22.Finished", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_22_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_PlaySequence_v8_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|549683700", "549683700", "LT03_010_BRIEF_Main", "box_PlaySequence_v8_22.Skipped", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_22_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_28();
    l0 = self.box_PlaySequence_v8_22;
    l1 = self.box_NarrativeFade_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|805253440", "805253440", "LT03_010_BRIEF_Main", "box_PlaySequence_v8_22.SPOut", "box_NarrativeFade_28.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_22_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_43();
    l0 = self.box_PlaySequence_v8_22;
    l1 = self.box_PostFx_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|643292555", "643292555", "LT03_010_BRIEF_Main", "box_PlaySequence_v8_22.Started", "box_PostFx_v3_43.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_70();
    l0 = self.box_MultipleAND_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|15290972", "15290972", "LT03_010_BRIEF_Main", "box_SetContextualStrategy_65.Out", "box_MultipleAND_v2_70.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_PositionModifier_v2_98_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_97();
    l0 = self.box_PositionModifier_v2_98;
    l1 = self.box_MultipleAND_v2_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|359694558", "359694558", "LT03_010_BRIEF_Main", "box_PositionModifier_v2_98.Done", "box_MultipleAND_v2_97.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_GunsForHireSystemModifier_45_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_46();
    l0 = self.box_GunsForHireSystemModifier_45;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1420910408", "1420910408", "LT03_010_BRIEF_Main", "box_GunsForHireSystemModifier_45.Disabled", "box_AgentGroupModifier_46.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_60();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|769907153", "769907153", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_47.Out", "box_SetContextualStrategy_60.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_57();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1198689473", "1198689473", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_47.Out", "box_SetContextualStrategy_57.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v4_29_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2122298389", "2122298389", "LT03_010_BRIEF_Main", "box_StopMetaSequence_v4_29.Stopped", "box_OutputOrder_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_45();
    l0 = self.box_MultipleAND_v2_97;
    l1 = self.box_GunsForHireSystemModifier_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|968413187", "968413187", "LT03_010_BRIEF_Main", "box_MultipleAND_v2_97.Out", "box_GunsForHireSystemModifier_45.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_96();
    l0 = self.box_PositionModifier_v2_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|48035410", "48035410", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_95.Out", "box_PositionModifier_v2_96.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_98();
    l0 = self.box_PositionModifier_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1548726697", "1548726697", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_95.Out", "box_PositionModifier_v2_98.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_AgentGroupModifier_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1372014238", "1372014238", "LT03_010_BRIEF_Main", "box_AgentGroupModifier_46.Out", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|396841178", "396841178", "LT03_010_BRIEF_Main", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1158414314", "1158414314", "LT03_010_BRIEF_Main", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1334181874", "1334181874", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_33.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1717930132", "1717930132", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_33.Out", "box_Simple_Node_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_79();
    l0 = self.box_Delay_v5_36;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|885568575", "885568575", "LT03_010_BRIEF_Main", "box_Delay_v5_36.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_79.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_55();
    l0 = self.box_MultipleAND_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1735734327", "1735734327", "LT03_010_BRIEF_Main", "box_SetContextualStrategy_52.Out", "box_MultipleAND_v2_55.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_48();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|693256412", "693256412", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_50.Out", "box_SetContextualStrategy_48.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_59();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|532440200", "532440200", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_50.Out", "box_SetContextualStrategy_59.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_92();
    l0 = self.box_PositionModifier_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|515361251", "515361251", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_91.Out", "box_PositionModifier_v2_92.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_94();
    l0 = self.box_PositionModifier_v2_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|227172044", "227172044", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_91.Out", "box_PositionModifier_v2_94.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_61();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|270413408", "270413408", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_63.Out", "box_SetContextualStrategy_61.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_64();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|572708194", "572708194", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_63.Out", "box_SetContextualStrategy_64.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_18_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_18_Out();
    params = self:OnEnter_box_PlaySequence_v8_22();
    l0 = self.box_StartMetaSequence_18;
    l1 = self.box_PlaySequence_v8_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|126055171", "126055171", "LT03_010_BRIEF_Main", "box_StartMetaSequence_18.Out", "box_PlaySequence_v8_22.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_SetTimeOfDay_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1194392658", "1194392658", "LT03_010_BRIEF_Main", "box_SetTimeOfDay_83.Out", "box_StartMetaSequence_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|498509286", "498509286", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_103.Out", "box_Delay_v5_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_102();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|74666844", "74666844", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_103.Out", "box_SoundMixing_102.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_52();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1113460596", "1113460596", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_58.Out", "box_SetContextualStrategy_52.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_49();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|860305601", "860305601", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_58.Out", "box_SetContextualStrategy_49.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_10();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|58081438", "58081438", "LT03_010_BRIEF_Main", "box_MultipleOR_12.Out", "box_StopMetaSequence_v4_10.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnCritical()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1285705504", "1285705504", "LT03_010_BRIEF_Main", "box_Brick_PlayerGetsCaptured_V4_8.PlayerCaptured_OnCritical", "box_OutputOrder_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnEncounter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2145745141", "2145745141", "LT03_010_BRIEF_Main", "box_Brick_PlayerGetsCaptured_V4_8.PlayerCaptured_OnEncounter", "box_OutputOrder_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnPrecondition()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1647481013", "1647481013", "LT03_010_BRIEF_Main", "box_Brick_PlayerGetsCaptured_V4_8.PlayerCaptured_OnPrecondition", "box_OutputOrder_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_42_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_73();
    l0 = self.box_PostFx_v3_42;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1659550406", "1659550406", "LT03_010_BRIEF_Main", "box_PostFx_v3_42.Disabled", "box_Simple_Node_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_27();
    l0 = self.box_MultipleAND_v2_55;
    l1 = self.box_NarrativeSceneSetup_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2118662487", "2118662487", "LT03_010_BRIEF_Main", "box_MultipleAND_v2_55.Out", "box_NarrativeSceneSetup_27.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayerGetsCaptured_V4_8();
    l0 = self.box_ActivityInitialized_7;
    l1 = self.box_Brick_PlayerGetsCaptured_V4_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|75404480", "75404480", "LT03_010_BRIEF_Main", "box_ActivityInitialized_7.Out", "box_Brick_PlayerGetsCaptured_V4_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_PostFx_v3_39_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = self.box_PostFx_v3_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1355920573", "1355920573", "LT03_010_BRIEF_Main", "box_PostFx_v3_39.Enabled", "box_OutputOrder_v2_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_26_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_26_Out();
    params = self:OnEnter_box_PlaySequence_v8_14();
    l0 = self.box_StartMetaSequence_26;
    l1 = self.box_PlaySequence_v8_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|851015556", "851015556", "LT03_010_BRIEF_Main", "box_StartMetaSequence_26.Out", "box_PlaySequence_v8_14.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_24();
    l0 = self.box_Delay_v5_80;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|831509725", "831509725", "LT03_010_BRIEF_Main", "box_Delay_v5_80.TimeElapsed", "box_ActivityEnd_24.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_16_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_35();
    l0 = self.box_NarrativeSceneSetup_16;
    l1 = self.box_PostFx_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|356105474", "356105474", "LT03_010_BRIEF_Main", "box_NarrativeSceneSetup_16.Holstered", "box_PostFx_v3_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v4_10_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|63703574", "63703574", "LT03_010_BRIEF_Main", "box_StopMetaSequence_v4_10.Stopped", "box_OutputOrder_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1404927472", "1404927472", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_1.Out", "box_ActivityAcknowledgeGate_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|702351803", "702351803", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_1.Out", "box_Print_v2_2.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_76();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_77;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|108116106", "108116106", "LT03_010_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_77.Out", "box_SetTimeOfDay_76.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_87_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_88();
    l0 = self.box_PositionModifier_v2_87;
    l1 = self.box_MultipleAND_v2_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1305233087", "1305233087", "LT03_010_BRIEF_Main", "box_PositionModifier_v2_87.Done", "box_MultipleAND_v2_88.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_PlaySequence_v8_20_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_20;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1498638862", "1498638862", "LT03_010_BRIEF_Main", "box_PlaySequence_v8_20.Finished", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_20_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_PlaySequence_v8_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2061554839", "2061554839", "LT03_010_BRIEF_Main", "box_PlaySequence_v8_20.Skipped", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_20_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_17();
    l0 = self.box_PlaySequence_v8_20;
    l1 = self.box_NarrativeFade_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1518465697", "1518465697", "LT03_010_BRIEF_Main", "box_PlaySequence_v8_20.SPOut", "box_NarrativeFade_17.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_20_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_41();
    l0 = self.box_PlaySequence_v8_20;
    l1 = self.box_PostFx_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1319789111", "1319789111", "LT03_010_BRIEF_Main", "box_PlaySequence_v8_20.Started", "box_PostFx_v3_41.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_85();
    l0 = self.box_MultipleAND_v2_69;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|506438725", "506438725", "LT03_010_BRIEF_Main", "box_MultipleAND_v2_69.Out", "box_CHEAT_SetEnvironmentTimeScale_85.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_89_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_88();
    l0 = self.box_PositionModifier_v2_89;
    l1 = self.box_MultipleAND_v2_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|339691869", "339691869", "LT03_010_BRIEF_Main", "box_PositionModifier_v2_89.Done", "box_MultipleAND_v2_88.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_44();
    l0 = self.box_MultipleAND_v2_93;
    l1 = self.box_GunsForHireSystemModifier_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|778115399", "778115399", "LT03_010_BRIEF_Main", "box_MultipleAND_v2_93.Out", "box_GunsForHireSystemModifier_44.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_81();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_85;
    l1 = self.box_Delay_v5_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|646099819", "646099819", "LT03_010_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_85.Out", "box_Delay_v5_81.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_16();
    l0 = self.box_MultipleAND_v2_51;
    l1 = self.box_NarrativeSceneSetup_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1036855534", "1036855534", "LT03_010_BRIEF_Main", "box_MultipleAND_v2_51.Out", "box_NarrativeSceneSetup_16.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneSetup_30_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_39();
    l0 = self.box_NarrativeSceneSetup_30;
    l1 = self.box_PostFx_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|735336758", "735336758", "LT03_010_BRIEF_Main", "box_NarrativeSceneSetup_30.Holstered", "box_PostFx_v3_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1538384328", "1538384328", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_32.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1773581264", "1773581264", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_32.Out", "box_Simple_Node_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_41_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_73();
    l0 = self.box_PostFx_v3_41;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|280191530", "280191530", "LT03_010_BRIEF_Main", "box_PostFx_v3_41.Disabled", "box_Simple_Node_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_92_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_93();
    l0 = self.box_PositionModifier_v2_92;
    l1 = self.box_MultipleAND_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1405059501", "1405059501", "LT03_010_BRIEF_Main", "box_PositionModifier_v2_92.Done", "box_MultipleAND_v2_93.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_81_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_11();
    l0 = self.box_Delay_v5_81;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1569490484", "1569490484", "LT03_010_BRIEF_Main", "box_Delay_v5_81.TimeElapsed", "box_ActivityEnd_11.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1285454124", "1285454124", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_104.Out", "box_Delay_v5_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_101();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|555426529", "555426529", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_104.Out", "box_SoundMixing_101.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_43_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_73();
    l0 = self.box_PostFx_v3_43;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|666800398", "666800398", "LT03_010_BRIEF_Main", "box_PostFx_v3_43.Disabled", "box_Simple_Node_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_14_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_14;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1374400867", "1374400867", "LT03_010_BRIEF_Main", "box_PlaySequence_v8_14.Finished", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_14_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_PlaySequence_v8_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1144582681", "1144582681", "LT03_010_BRIEF_Main", "box_PlaySequence_v8_14.Skipped", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_14_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_15();
    l0 = self.box_PlaySequence_v8_14;
    l1 = self.box_NarrativeFade_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|407125010", "407125010", "LT03_010_BRIEF_Main", "box_PlaySequence_v8_14.SPOut", "box_NarrativeFade_15.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_14_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_42();
    l0 = self.box_PlaySequence_v8_14;
    l1 = self.box_PostFx_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1793051767", "1793051767", "LT03_010_BRIEF_Main", "box_PlaySequence_v8_14.Started", "box_PostFx_v3_42.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_AgentGroupModifier_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|333662842", "333662842", "LT03_010_BRIEF_Main", "box_AgentGroupModifier_54.Out", "box_OutputOrder_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_72();
    l0 = self.box_MultipleAND_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|716152226", "716152226", "LT03_010_BRIEF_Main", "box_SetContextualStrategy_62.Out", "box_MultipleAND_v2_72.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|168005752", "168005752", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_34.Out", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2130009862", "2130009862", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_34.Out", "box_Simple_Node_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_13();
    l0 = self.box_MultipleOR_31;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1724750070", "1724750070", "LT03_010_BRIEF_Main", "box_MultipleOR_31.Out", "box_StopMetaSequence_v4_13.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_48_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_51();
    l0 = self.box_MultipleAND_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|447252654", "447252654", "LT03_010_BRIEF_Main", "box_SetContextualStrategy_48.Out", "box_MultipleAND_v2_51.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_GunsForHireSystemModifier_25_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_54();
    l0 = self.box_GunsForHireSystemModifier_25;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|254111409", "254111409", "LT03_010_BRIEF_Main", "box_GunsForHireSystemModifier_25.Disabled", "box_AgentGroupModifier_54.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_84();
    l0 = self.box_Delay_v5_40;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|669762766", "669762766", "LT03_010_BRIEF_Main", "box_Delay_v5_40.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_84.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_75();
    l0 = self.box_MultipleAND_v2_72;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1372778305", "1372778305", "LT03_010_BRIEF_Main", "box_MultipleAND_v2_72.Out", "box_CHEAT_SetEnvironmentTimeScale_75.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_53();
    l0 = self.box_MultipleAND_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|304736188", "304736188", "LT03_010_BRIEF_Main", "box_SetContextualStrategy_57.Out", "box_MultipleAND_v2_53.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_69();
    l0 = self.box_MultipleAND_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1807949258", "1807949258", "LT03_010_BRIEF_Main", "box_SetContextualStrategy_64.Out", "box_MultipleAND_v2_69.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_77();
    l0 = self.box_Delay_v5_38;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|214007670", "214007670", "LT03_010_BRIEF_Main", "box_Delay_v5_38.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_77.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_PostFx_v3_35_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = self.box_PostFx_v3_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|230396153", "230396153", "LT03_010_BRIEF_Main", "box_PostFx_v3_35.Enabled", "box_OutputOrder_v2_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_83();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_84;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1602572645", "1602572645", "LT03_010_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_84.Out", "box_SetTimeOfDay_83.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_30();
    l0 = self.box_MultipleAND_v2_53;
    l1 = self.box_NarrativeSceneSetup_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|149124617", "149124617", "LT03_010_BRIEF_Main", "box_MultipleAND_v2_53.Out", "box_NarrativeSceneSetup_30.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_51();
    l0 = self.box_MultipleAND_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|190684029", "190684029", "LT03_010_BRIEF_Main", "box_SetContextualStrategy_59.Out", "box_MultipleAND_v2_51.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_70();
    l0 = self.box_MultipleAND_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|390643657", "390643657", "LT03_010_BRIEF_Main", "box_SetContextualStrategy_71.Out", "box_MultipleAND_v2_70.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_68();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|631652975", "631652975", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_66.Out", "box_SetContextualStrategy_68.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_62();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|355697900", "355697900", "LT03_010_BRIEF_Main", "box_OutputOrder_v2_66.Out", "box_SetContextualStrategy_62.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_29();
    l0 = self.box_MultipleOR_23;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|356870024", "356870024", "LT03_010_BRIEF_Main", "box_MultipleOR_23.Out", "box_StopMetaSequence_v4_29.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_37_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = self.box_PostFx_v3_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2041744936", "2041744936", "LT03_010_BRIEF_Main", "box_PostFx_v3_37.Enabled", "box_OutputOrder_v2_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_79_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_78();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_79;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|399218091", "399218091", "LT03_010_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_79.Out", "box_SetTimeOfDay_78.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_72();
    l0 = self.box_MultipleAND_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|510374374", "510374374", "LT03_010_BRIEF_Main", "box_SetContextualStrategy_68.Out", "box_MultipleAND_v2_72.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_25();
    l0 = self.box_MultipleAND_v2_88;
    l1 = self.box_GunsForHireSystemModifier_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1691015901", "1691015901", "LT03_010_BRIEF_Main", "box_MultipleAND_v2_88.Out", "box_GunsForHireSystemModifier_25.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_AgentGroupModifier_56_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1402779610", "1402779610", "LT03_010_BRIEF_Main", "box_AgentGroupModifier_56.Out", "box_OutputOrder_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_82_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_19();
    l0 = self.box_Delay_v5_82;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1642585283", "1642585283", "LT03_010_BRIEF_Main", "box_Delay_v5_82.TimeElapsed", "box_ActivityEnd_19.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_21_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_21_Out();
    params = self:OnEnter_box_PlaySequence_v8_20();
    l0 = self.box_StartMetaSequence_21;
    l1 = self.box_PlaySequence_v8_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|123744292", "123744292", "LT03_010_BRIEF_Main", "box_StartMetaSequence_21.Out", "box_PlaySequence_v8_20.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_60_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_53();
    l0 = self.box_MultipleAND_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|82711447", "82711447", "LT03_010_BRIEF_Main", "box_SetContextualStrategy_60.Out", "box_MultipleAND_v2_53.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:OnEnter_box_Simple_Node_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|@StartMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_73_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|@StopMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_74_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|21786224");
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

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|25106017");
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
        [8] = "LT03_010_BRIEF Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_4()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- Priority,
        [2] = 0,
        -- SoundType,
        [3] = 17,
        -- Stackable,
        [4] = false,
        -- StartEvent,
        [5] = "3596813851",
        -- StopEvent,
        [6] = "1998113247",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_27()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|59607675");
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

function export:OnEnter_box_SetContextualStrategy_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|79778889");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_61_Out,
    });
    params = {
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_96()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065037050289065",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005292459697418",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|168183543");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_49_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005293392930060",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_15()
    local params;
    params = {
        -- PostFX,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|198888960");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_78_Out,
    });
    params = {
        -- Hour,
        [0] = 20,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|203113486");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_76_Out,
    });
    params = {
        -- Hour,
        [0] = 20,
        -- Minute,
        [1] = 0,
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

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_75()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_17()
    local params;
    params = {
        -- PostFX,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|261469705");
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
                [0] = self.f_box_OutputOrder_v2_100_Out_0,
                [1] = self.f_box_OutputOrder_v2_100_Out_1,
            },
            count = 2,
        },
    });
    params = {
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

function export:OnEnter_box_PositionModifier_v2_94()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065037050289065",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005293392930060",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_86()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|345553128");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_13_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_22()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101065037050289065",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/cin_lt03_060_hard_capture/cin_lt03_060_hard_capture_v2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|384976995");
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

function export:OnEnter_box_PositionModifier_v2_98()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065037050289065",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005293392930060",
        -- useSmallestAngleDiff,
        [7] = false,
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

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|410504042");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|449083532");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_29_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_28()
    local params;
    params = {
        -- PostFX,
        [1] = "faithwhitetoblack",
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

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|495205375");
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

function export:OnEnter_box_AgentGroupModifier_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|498386022");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_46_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A714E363",
        -- PawnGroup,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|563653946");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
            },
            count = 2,
        },
    });
    params = {
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

function export:OnEnter_box_SetContextualStrategy_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|586331851");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_52_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005292459697418",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|589559289");
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

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|591461768");
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
                [0] = self.f_box_OutputOrder_v2_91_Out_0,
                [1] = self.f_box_OutputOrder_v2_91_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|605006556");
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

function export:OnEnter_box_SetTimeOfDay_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|648707659");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_83_Out,
    });
    params = {
        -- Hour,
        [0] = 20,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|685781040");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|693181669");
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

function export:OnEnter_box_Brick_PlayerGetsCaptured_V4_8()
    local params;
    params = {
        -- b_CaptureOnCritical,
        [0] = false,
        -- b_CaptureOnEncounter,
        [1] = true,
        -- bUseWarningSound,
        [2] = true,
        -- CenterScene_HardCapture,
        [3] = "2101065037050289065",
        -- CenterScene_SoftCapture,
        [4] = "2101065037050289065",
        -- eWarningSound,
        [5] = "1849334431",
        -- ForcedCapturePreconditionID,
        [6] = "9015249829840535",
        -- fTimer,
        [7] = 10,
        -- NarrativeFade_PostFX,
        [9] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|799665253");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_42()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_55()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|894157480");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
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

function export:OnEnter_box_NarrativeSceneSetup_16()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1092774280");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_10_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1116836696");
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

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_77()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_87()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065037050289065",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005293392930060",
        -- useSmallestAngleDiff,
        [7] = false,
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
        [3] = "2101065037050289065",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/cin_lt03_061_soft_cap_questgiver/cin_lt03_061_soft_cap_questgiver_v2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_69()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_89()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065037050289065",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005292459697418",
        -- useSmallestAngleDiff,
        [7] = false,
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

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_85()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_51()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_30()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1294089008");
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

function export:OnEnter_box_ActivityEnd_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1303438397");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_41()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_92()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065037050289065",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005292459697418",
        -- useSmallestAngleDiff,
        [7] = false,
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

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1472725878");
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

function export:OnEnter_box_PostFx_v3_43()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
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
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101065037050289065",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_LT03_062_Soft_Cap_Hostage_Transform/cin_lt03_062_soft_cap_hostage_transform.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1497638111");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_54_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A714E363",
        -- PawnGroup,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1520660702");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_62_Out,
    });
    params = {
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1544961471");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1606999035");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_48_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005292459697418",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_9()
    local params;
    DrawTextToScreen("Comment: MUS_MIS_CIN_Skip", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostWWiseEventSetState')-- Comment: MUS_MIS_CIN_Skip");
    params = {
        -- SoundId,
        [0] = "264881612",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_25()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1673543863");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_72()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1742570948");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_57_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005293392930060",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1774975833");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_64_Out,
    });
    params = {
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_35()
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
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_53()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1873061848");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1906191008");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_59_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005293392930060",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1912890610");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_71_Out,
    });
    params = {
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_6()
    local params;
    DrawTextToScreen("Comment: MUS_MIS_Step_01", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostWWiseEventSetState')-- Comment: MUS_MIS_Step_01");
    params = {
        -- SoundId,
        [0] = "4013606668",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|1958098662");
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

function export:OnEnter_box_PostFx_v3_37()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2022687185");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_79()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2069049539");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_68_Out,
    });
    params = {
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_88()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2083952837");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_56_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A714E363",
        -- PawnGroup,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_82()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_BRIEF.domino|@LT03_010_BRIEF_Main|2128207495");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_60_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005292459697418",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_18_Out()
    local l0;
    l0 = self.box_StartMetaSequence_18;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_26_Out()
    local l0;
    l0 = self.box_StartMetaSequence_26;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_21_Out()
    local l0;
    l0 = self.box_StartMetaSequence_21;
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
