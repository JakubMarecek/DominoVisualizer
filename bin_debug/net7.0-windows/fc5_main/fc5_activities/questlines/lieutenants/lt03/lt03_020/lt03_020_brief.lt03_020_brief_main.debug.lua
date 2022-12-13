LUACc� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_020/lt03_020_brief.domino
-- User graph: LT03_020_BRIEF_Main
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
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4221628733.bnk]], "CSoundResource");
        cboxRes:LoadResource([[917929056.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1849334431.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_020/LT03_020_BRIEF.LT03_020_BRIEF_Main.debug.lua")] = {
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
    self._name = "LT03_020_BRIEF_Main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main";
    self.MetaSequenceID = 0;
    self.box_CHEAT_SetEnvironmentTimeScale_83 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|5298152");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_83_Out,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|26611048");
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
    self.box_GunsForHireSystemModifier_70 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|42559958");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_70_Disabled,
    });
    self.box_GunsForHireSystemModifier_72 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|44257968");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_72_Disabled,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|102159061");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_73 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|111208404");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_73_Out,
    });
    self.box_StartMetaSequence_16 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|114959415");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_16_Out,
    });
    self.box_MultipleAND_v2_48 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|163394883");
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
        [0] = self.f_box_MultipleAND_v2_48_Out,
    });
    self.box_PositionModifier_v2_86 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|184501033");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_86_Done,
    });
    self.box_PositionModifier_v2_88 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|254160872");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_88_Done,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_76 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|294793298");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_76_Out,
    });
    self.box_Music_Quest_v2_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|295785812");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_63 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|377698687");
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
        [0] = self.f_box_MultipleAND_v2_63_Out,
    });
    self.box_StartMetaSequence_11 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|402391774");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_11_Out,
    });
    self.box_PostFx_v3_36 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|408536715");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_36_Enabled,
    });
    self.box_PostFx_v3_32 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|411678538");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_32_Enabled,
    });
    self.box_PlaySequence_v8_28 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|447468899");
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
        [0] = self.f_box_PlaySequence_v8_28_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_28_Skipped,
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
                    value = self.f_box_PlaySequence_v8_28_SPOut__Start_Postfx_,
                },
            },
            count = 6,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_28_Started,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|577839808");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_MultipleAND_v2_67 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|617183950");
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
        [0] = self.f_box_MultipleAND_v2_67_Out,
    });
    self.box_PostFx_v3_34 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|638716136");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_34_Enabled,
    });
    self.box_NarrativeFade_5 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|682883851");
    l0:SetConnections({
    });
    self.box_PostFx_v3_39 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|701976119");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_39_Disabled,
    });
    self.box_NarrativeFade_12 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|748287604");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_10 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|806448564");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_10_Holstered,
    });
    self.box_MultipleAND_v2_61 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|836838094");
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
        [0] = self.f_box_MultipleAND_v2_61_Out,
    });
    self.box_PositionModifier_v2_89 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|884188106");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_89_Done,
    });
    self.box_PositionModifier_v2_93 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|903042753");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_93_Done,
    });
    self.box_NarrativeSceneSetup_15 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|958879435");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_15_Holstered,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_75 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1041435344");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_75_Out,
    });
    self.box_GunsForHireSystemModifier_71 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1061555122");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_71_Disabled,
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1088889020");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_MultipleAND_v2_96 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1093103661");
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
        [0] = self.f_box_MultipleAND_v2_96_Out,
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1099275562");
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
    self.box_Brick_PlayerGetsCaptured_V4_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayerGetsCaptured.Brick_PlayerGetsCaptured_V4.debug.lua");
    l0 = self.box_Brick_PlayerGetsCaptured_V4_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayerGetsCaptured_V4_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1137045381");
    l0:SetConnections({
        -- PlayerCaptured_OnCritical,
        [0] = self.f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnCritical,
        -- PlayerCaptured_OnEncounter,
        [1] = self.f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnEncounter,
        -- PlayerCaptured_OnPrecondition,
        [2] = self.f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnPrecondition,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1178156462");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1196341726");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_StartMetaSequence_24 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1216529651");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_24_Out,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1269869864");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_PostFx_v3_40 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1277632468");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_40_Disabled,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1306101334");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1306481017");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_PositionModifier_v2_91 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1376990195");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_91_Done,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_74 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1523569213");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_74_Out,
    });
    self.box_MultipleAND_v2_47 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1555235358");
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
    self.box_PostFx_v3_38 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1640018941");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_38_Disabled,
    });
    self.box_NarrativeFade_7 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1714093340");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_19 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1723485780");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_19_Holstered,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_81 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1740654305");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_81_Out,
    });
    self.box_MultipleAND_v2_87 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1815684767");
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
        [0] = self.f_box_MultipleAND_v2_87_Out,
    });
    self.box_Delay_v5_79 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1828818172");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_79_TimeElapsed,
    });
    self.box_PlaySequence_v8_21 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1842676064");
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
        [0] = self.f_box_PlaySequence_v8_21_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_21_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Start_Postfx",
                    value = self.f_box_PlaySequence_v8_21_SPOut__Start_Postfx_,
                },
            },
            count = 1,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_21_Started,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1842831925");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_MultipleAND_v2_92 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1953036298");
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
        [0] = self.f_box_MultipleAND_v2_92_Out,
    });
    self.box_PlaySequence_v8_27 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2034470764");
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
        [0] = self.f_box_PlaySequence_v8_27_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_27_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Start_Postfx",
                    value = self.f_box_PlaySequence_v8_27_SPOut__Start_Postfx_,
                },
            },
            count = 1,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_27_Started,
    });
    self.box_MultipleAND_v2_56 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2067467866");
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
        [0] = self.f_box_MultipleAND_v2_56_Out,
    });
    self.box_PositionModifier_v2_95 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2092684998");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_95_Done,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1335461804", "1335461804", "LT03_020_BRIEF_Main", "In", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_13();
    l0 = self.box_Music_Quest_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|295603553", "295603553", "LT03_020_BRIEF_Main", "box_Simple_Node_41.Out", "box_Music_Quest_v2_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_13();
    l0 = self.box_Music_Quest_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|327104258", "327104258", "LT03_020_BRIEF_Main", "box_Simple_Node_42.Out", "box_Music_Quest_v2_13.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_84();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_83;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1247893897", "1247893897", "LT03_020_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_83.Out", "box_SetTimeOfDay_84.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|320877013", "320877013", "LT03_020_BRIEF_Main", "box_MultipleOR_1.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_GunsForHireSystemModifier_70_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_75();
    l0 = self.box_GunsForHireSystemModifier_70;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1334349066", "1334349066", "LT03_020_BRIEF_Main", "box_GunsForHireSystemModifier_70.Disabled", "box_CHEAT_SetEnvironmentTimeScale_75.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_GunsForHireSystemModifier_72_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_73();
    l0 = self.box_GunsForHireSystemModifier_72;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|689776802", "689776802", "LT03_020_BRIEF_Main", "box_GunsForHireSystemModifier_72.Disabled", "box_CHEAT_SetEnvironmentTimeScale_73.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|837862849", "837862849", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_100.Out", "box_Delay_v5_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_99();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2062142558", "2062142558", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_100.Out", "box_SoundMixing_99.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_67();
    l0 = self.box_MultipleAND_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|997539955", "997539955", "LT03_020_BRIEF_Main", "box_SetContextualStrategy_69.Out", "box_MultipleAND_v2_67.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayerGetsCaptured_V4_8();
    l0 = self.box_ActivityInitialized_2;
    l1 = self.box_Brick_PlayerGetsCaptured_V4_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1411522955", "1411522955", "LT03_020_BRIEF_Main", "box_ActivityInitialized_2.Out", "box_Brick_PlayerGetsCaptured_V4_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_73;
    l1 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|99597808", "99597808", "LT03_020_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_73.Out", "box_Delay_v5_80.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StartMetaSequence_16_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_16_Out();
    params = self:OnEnter_box_PlaySequence_v8_21();
    l0 = self.box_StartMetaSequence_16;
    l1 = self.box_PlaySequence_v8_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|292137651", "292137651", "LT03_020_BRIEF_Main", "box_StartMetaSequence_16.Out", "box_PlaySequence_v8_21.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_56();
    l0 = self.box_MultipleAND_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1828736274", "1828736274", "LT03_020_BRIEF_Main", "box_SetContextualStrategy_54.Out", "box_MultipleAND_v2_56.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_SetContextualStrategy_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_61();
    l0 = self.box_MultipleAND_v2_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|597469240", "597469240", "LT03_020_BRIEF_Main", "box_SetContextualStrategy_58.Out", "box_MultipleAND_v2_61.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_71();
    l0 = self.box_MultipleAND_v2_48;
    l1 = self.box_GunsForHireSystemModifier_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1515950206", "1515950206", "LT03_020_BRIEF_Main", "box_MultipleAND_v2_48.Out", "box_GunsForHireSystemModifier_71.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_86_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_87();
    l0 = self.box_PositionModifier_v2_86;
    l1 = self.box_MultipleAND_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1357122028", "1357122028", "LT03_020_BRIEF_Main", "box_PositionModifier_v2_86.Done", "box_MultipleAND_v2_87.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_SetContextualStrategy_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_63();
    l0 = self.box_MultipleAND_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1953071445", "1953071445", "LT03_020_BRIEF_Main", "box_SetContextualStrategy_65.Out", "box_MultipleAND_v2_63.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_PositionModifier_v2_88_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_87();
    l0 = self.box_PositionModifier_v2_88;
    l1 = self.box_MultipleAND_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|809087165", "809087165", "LT03_020_BRIEF_Main", "box_PositionModifier_v2_88.Done", "box_MultipleAND_v2_87.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|282181954", "282181954", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_26.Out", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|234659770", "234659770", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_26.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_77();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_76;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1662184177", "1662184177", "LT03_020_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_76.Out", "box_SetTimeOfDay_77.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_95();
    l0 = self.box_PositionModifier_v2_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2066022468", "2066022468", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_94.Out", "box_PositionModifier_v2_95.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_93();
    l0 = self.box_PositionModifier_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1354989697", "1354989697", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_94.Out", "box_PositionModifier_v2_93.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v4_31_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1500933061", "1500933061", "LT03_020_BRIEF_Main", "box_StopMetaSequence_v4_31.Stopped", "box_OutputOrder_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_70();
    l0 = self.box_MultipleAND_v2_63;
    l1 = self.box_GunsForHireSystemModifier_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1248660833", "1248660833", "LT03_020_BRIEF_Main", "box_MultipleAND_v2_63.Out", "box_GunsForHireSystemModifier_70.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_StartMetaSequence_11_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_11_Out();
    params = self:OnEnter_box_PlaySequence_v8_28();
    l0 = self.box_StartMetaSequence_11;
    l1 = self.box_PlaySequence_v8_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1093487433", "1093487433", "LT03_020_BRIEF_Main", "box_StartMetaSequence_11.Out", "box_PlaySequence_v8_28.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PostFx_v3_36_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = self.box_PostFx_v3_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1157809354", "1157809354", "LT03_020_BRIEF_Main", "box_PostFx_v3_36.Enabled", "box_OutputOrder_v2_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = self.box_PostFx_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2043871439", "2043871439", "LT03_020_BRIEF_Main", "box_PostFx_v3_32.Enabled", "box_OutputOrder_v2_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_59();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|626876484", "626876484", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_60.Out", "box_SetContextualStrategy_59.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_58();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|875104278", "875104278", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_60.Out", "box_SetContextualStrategy_58.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1278480407", "1278480407", "LT03_020_BRIEF_Main", "box_AgentGroupModifier_57.Out", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_28_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|646018534", "646018534", "LT03_020_BRIEF_Main", "box_PlaySequence_v8_28.Finished", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_28_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_PlaySequence_v8_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|472680932", "472680932", "LT03_020_BRIEF_Main", "box_PlaySequence_v8_28.Skipped", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_28_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_7();
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_NarrativeFade_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1105635780", "1105635780", "LT03_020_BRIEF_Main", "box_PlaySequence_v8_28.SPOut", "box_NarrativeFade_7.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_28_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_39();
    l0 = self.box_PlaySequence_v8_28;
    l1 = self.box_PostFx_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|483048218", "483048218", "LT03_020_BRIEF_Main", "box_PlaySequence_v8_28.Started", "box_PostFx_v3_39.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SetTimeOfDay_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|896075512", "896075512", "LT03_020_BRIEF_Main", "box_SetTimeOfDay_77.Out", "box_StartMetaSequence_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_SetContextualStrategy_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1602082931", "1602082931", "LT03_020_BRIEF_Main", "box_SetContextualStrategy_45.Out", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_81();
    l0 = self.box_Delay_v5_33;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|352496216", "352496216", "LT03_020_BRIEF_Main", "box_Delay_v5_33.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_81.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_StopMetaSequence_v4_18_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|20271647", "20271647", "LT03_020_BRIEF_Main", "box_StopMetaSequence_v4_18.Stopped", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_62();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|254717261", "254717261", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_64.Out", "box_SetContextualStrategy_62.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|353067048", "353067048", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_64.Out", "box_SetContextualStrategy_65.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_72();
    l0 = self.box_MultipleAND_v2_67;
    l1 = self.box_GunsForHireSystemModifier_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1623827218", "1623827218", "LT03_020_BRIEF_Main", "box_MultipleAND_v2_67.Out", "box_GunsForHireSystemModifier_72.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_PostFx_v3_34_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = self.box_PostFx_v3_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|633733511", "633733511", "LT03_020_BRIEF_Main", "box_PostFx_v3_34.Enabled", "box_OutputOrder_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_39_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = self.box_PostFx_v3_39;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|543909544", "543909544", "LT03_020_BRIEF_Main", "box_PostFx_v3_39.Disabled", "box_Simple_Node_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_91();
    l0 = self.box_PositionModifier_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1145047661", "1145047661", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_90.Out", "box_PositionModifier_v2_91.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_89();
    l0 = self.box_PositionModifier_v2_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|3041015", "3041015", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_90.Out", "box_PositionModifier_v2_89.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SetTimeOfDay_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|69244697", "69244697", "LT03_020_BRIEF_Main", "box_SetTimeOfDay_82.Out", "box_StartMetaSequence_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_SetContextualStrategy_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_63();
    l0 = self.box_MultipleAND_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|175395907", "175395907", "LT03_020_BRIEF_Main", "box_SetContextualStrategy_62.Out", "box_MultipleAND_v2_63.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_NarrativeSceneSetup_10_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_32();
    l0 = self.box_NarrativeSceneSetup_10;
    l1 = self.box_PostFx_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1908058488", "1908058488", "LT03_020_BRIEF_Main", "box_NarrativeSceneSetup_10.Holstered", "box_PostFx_v3_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1486204235", "1486204235", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_30.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1994496619", "1994496619", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_30.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_10();
    l0 = self.box_MultipleAND_v2_61;
    l1 = self.box_NarrativeSceneSetup_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|841415457", "841415457", "LT03_020_BRIEF_Main", "box_MultipleAND_v2_61.Out", "box_NarrativeSceneSetup_10.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_85_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_86();
    l0 = self.box_PositionModifier_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1975215724", "1975215724", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_85.Out", "box_PositionModifier_v2_86.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_85_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_88();
    l0 = self.box_PositionModifier_v2_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2022211251", "2022211251", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_85.Out", "box_PositionModifier_v2_88.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_89_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_92();
    l0 = self.box_PositionModifier_v2_89;
    l1 = self.box_MultipleAND_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1787606158", "1787606158", "LT03_020_BRIEF_Main", "box_PositionModifier_v2_89.Done", "box_MultipleAND_v2_92.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_PositionModifier_v2_93_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_96();
    l0 = self.box_PositionModifier_v2_93;
    l1 = self.box_MultipleAND_v2_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1844260204", "1844260204", "LT03_020_BRIEF_Main", "box_PositionModifier_v2_93.Done", "box_MultipleAND_v2_96.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_AgentGroupModifier_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1467318251", "1467318251", "LT03_020_BRIEF_Main", "box_AgentGroupModifier_52.Out", "box_OutputOrder_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_15_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_34();
    l0 = self.box_NarrativeSceneSetup_15;
    l1 = self.box_PostFx_v3_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|837694018", "837694018", "LT03_020_BRIEF_Main", "box_NarrativeSceneSetup_15.Holstered", "box_PostFx_v3_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_49();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1755817975", "1755817975", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_50.Out", "box_SetContextualStrategy_49.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_51();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1131183654", "1131183654", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_50.Out", "box_SetContextualStrategy_51.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_66_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_67();
    l0 = self.box_MultipleAND_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|173515853", "173515853", "LT03_020_BRIEF_Main", "box_SetContextualStrategy_66.Out", "box_MultipleAND_v2_67.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_75;
    l1 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2053341645", "2053341645", "LT03_020_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_75.Out", "box_Delay_v5_78.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GunsForHireSystemModifier_71_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_74();
    l0 = self.box_GunsForHireSystemModifier_71;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2116319477", "2116319477", "LT03_020_BRIEF_Main", "box_GunsForHireSystemModifier_71.Disabled", "box_CHEAT_SetEnvironmentTimeScale_74.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_14();
    l0 = self.box_Delay_v5_80;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|710112500", "710112500", "LT03_020_BRIEF_Main", "box_Delay_v5_80.TimeElapsed", "box_ActivityEnd_14.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_57();
    l0 = self.box_MultipleAND_v2_96;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1255391169", "1255391169", "LT03_020_BRIEF_Main", "box_MultipleAND_v2_96.Out", "box_AgentGroupModifier_57.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_18();
    l0 = self.box_MultipleOR_23;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2096792375", "2096792375", "LT03_020_BRIEF_Main", "box_MultipleOR_23.Out", "box_StopMetaSequence_v4_18.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnCritical()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_85();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1673469565", "1673469565", "LT03_020_BRIEF_Main", "box_Brick_PlayerGetsCaptured_V4_8.PlayerCaptured_OnCritical", "box_OutputOrder_v2_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnEncounter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|910487334", "910487334", "LT03_020_BRIEF_Main", "box_Brick_PlayerGetsCaptured_V4_8.PlayerCaptured_OnEncounter", "box_OutputOrder_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnPrecondition()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1426246013", "1426246013", "LT03_020_BRIEF_Main", "box_Brick_PlayerGetsCaptured_V4_8.PlayerCaptured_OnPrecondition", "box_OutputOrder_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_17();
    l0 = self.box_MultipleOR_29;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|26268", "26268", "LT03_020_BRIEF_Main", "box_MultipleOR_29.Out", "box_StopMetaSequence_v4_17.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_31();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|717415469", "717415469", "LT03_020_BRIEF_Main", "box_MultipleOR_9.Out", "box_StopMetaSequence_v4_31.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_24_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_24_Out();
    params = self:OnEnter_box_PlaySequence_v8_27();
    l0 = self.box_StartMetaSequence_24;
    l1 = self.box_PlaySequence_v8_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|864545110", "864545110", "LT03_020_BRIEF_Main", "box_StartMetaSequence_24.Out", "box_PlaySequence_v8_27.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_SetTimeOfDay_84_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1166429695", "1166429695", "LT03_020_BRIEF_Main", "box_SetTimeOfDay_84.Out", "box_StartMetaSequence_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_83();
    l0 = self.box_Delay_v5_37;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1719087093", "1719087093", "LT03_020_BRIEF_Main", "box_Delay_v5_37.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_83.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_PostFx_v3_40_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = self.box_PostFx_v3_40;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|263229295", "263229295", "LT03_020_BRIEF_Main", "box_PostFx_v3_40.Disabled", "box_Simple_Node_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|144055986", "144055986", "LT03_020_BRIEF_Main", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1834269457", "1834269457", "LT03_020_BRIEF_Main", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_76();
    l0 = self.box_Delay_v5_35;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1680617193", "1680617193", "LT03_020_BRIEF_Main", "box_Delay_v5_35.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_76.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_91_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_92();
    l0 = self.box_PositionModifier_v2_91;
    l1 = self.box_MultipleAND_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1538802173", "1538802173", "LT03_020_BRIEF_Main", "box_PositionModifier_v2_91.Done", "box_MultipleAND_v2_92.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_44();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|98262020", "98262020", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_46.Out", "box_SetContextualStrategy_44.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_45();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|128156374", "128156374", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_46.Out", "box_SetContextualStrategy_45.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_74;
    l1 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1106984446", "1106984446", "LT03_020_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_74.Out", "box_Delay_v5_79.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_49_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_48();
    l0 = self.box_MultipleAND_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1526336849", "1526336849", "LT03_020_BRIEF_Main", "box_SetContextualStrategy_49.Out", "box_MultipleAND_v2_48.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1191469784", "1191469784", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_101.Out", "box_Delay_v5_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_98();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|389492037", "389492037", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_101.Out", "box_SoundMixing_98.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_15();
    l0 = self.box_MultipleAND_v2_47;
    l1 = self.box_NarrativeSceneSetup_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1161990321", "1161990321", "LT03_020_BRIEF_Main", "box_MultipleAND_v2_47.Out", "box_NarrativeSceneSetup_15.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_PostFx_v3_38_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = self.box_PostFx_v3_38;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|949219941", "949219941", "LT03_020_BRIEF_Main", "box_PostFx_v3_38.Disabled", "box_Simple_Node_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_19_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_36();
    l0 = self.box_NarrativeSceneSetup_19;
    l1 = self.box_PostFx_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2078913332", "2078913332", "LT03_020_BRIEF_Main", "box_NarrativeSceneSetup_19.Holstered", "box_PostFx_v3_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_82();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_81;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1273526681", "1273526681", "LT03_020_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_81.Out", "box_SetTimeOfDay_82.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|505240889", "505240889", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_6.Out", "box_Print_v2_4.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|797227431", "797227431", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_6.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_SetContextualStrategy_53_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_56();
    l0 = self.box_MultipleAND_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1238557280", "1238557280", "LT03_020_BRIEF_Main", "box_SetContextualStrategy_53.Out", "box_MultipleAND_v2_56.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_52();
    l0 = self.box_MultipleAND_v2_87;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1682963655", "1682963655", "LT03_020_BRIEF_Main", "box_MultipleAND_v2_87.Out", "box_AgentGroupModifier_52.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_79_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_22();
    l0 = self.box_Delay_v5_79;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|616249241", "616249241", "LT03_020_BRIEF_Main", "box_Delay_v5_79.TimeElapsed", "box_ActivityEnd_22.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_48();
    l0 = self.box_MultipleAND_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|442126739", "442126739", "LT03_020_BRIEF_Main", "box_SetContextualStrategy_51.Out", "box_MultipleAND_v2_48.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_PlaySequence_v8_21_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2129196773", "2129196773", "LT03_020_BRIEF_Main", "box_PlaySequence_v8_21.Finished", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_21_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1533963591", "1533963591", "LT03_020_BRIEF_Main", "box_PlaySequence_v8_21.Skipped", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_12();
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_NarrativeFade_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1156436966", "1156436966", "LT03_020_BRIEF_Main", "box_PlaySequence_v8_21.SPOut", "box_NarrativeFade_12.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_21_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_38();
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_PostFx_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|73218158", "73218158", "LT03_020_BRIEF_Main", "box_PlaySequence_v8_21.Started", "box_PostFx_v3_38.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_25();
    l0 = self.box_Delay_v5_78;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|433329037", "433329037", "LT03_020_BRIEF_Main", "box_Delay_v5_78.TimeElapsed", "box_ActivityEnd_25.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|426412719", "426412719", "LT03_020_BRIEF_Main", "box_SetContextualStrategy_44.Out", "box_MultipleAND_v2_47.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_66();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|562554264", "562554264", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_68.Out", "box_SetContextualStrategy_66.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_69();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1202891880", "1202891880", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_68.Out", "box_SetContextualStrategy_69.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_92_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_43();
    l0 = self.box_MultipleAND_v2_92;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1629648026", "1629648026", "LT03_020_BRIEF_Main", "box_MultipleAND_v2_92.Out", "box_AgentGroupModifier_43.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1634133664", "1634133664", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_102.Out", "box_Delay_v5_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_97();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|558159160", "558159160", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_102.Out", "box_SoundMixing_97.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_54();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|780872955", "780872955", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_55.Out", "box_SetContextualStrategy_54.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_53();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1653349865", "1653349865", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_55.Out", "box_SetContextualStrategy_53.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_27_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_27;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1082612277", "1082612277", "LT03_020_BRIEF_Main", "box_PlaySequence_v8_27.Finished", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_27_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_PlaySequence_v8_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1645179997", "1645179997", "LT03_020_BRIEF_Main", "box_PlaySequence_v8_27.Skipped", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_27_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_5();
    l0 = self.box_PlaySequence_v8_27;
    l1 = self.box_NarrativeFade_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|178447473", "178447473", "LT03_020_BRIEF_Main", "box_PlaySequence_v8_27.SPOut", "box_NarrativeFade_5.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_27_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_40();
    l0 = self.box_PlaySequence_v8_27;
    l1 = self.box_PostFx_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|771274164", "771274164", "LT03_020_BRIEF_Main", "box_PlaySequence_v8_27.Started", "box_PostFx_v3_40.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_19();
    l0 = self.box_MultipleAND_v2_56;
    l1 = self.box_NarrativeSceneSetup_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1688312093", "1688312093", "LT03_020_BRIEF_Main", "box_MultipleAND_v2_56.Out", "box_NarrativeSceneSetup_19.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v4_17_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|16070236", "16070236", "LT03_020_BRIEF_Main", "box_StopMetaSequence_v4_17.Stopped", "box_OutputOrder_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|774906150", "774906150", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_20.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1046034550", "1046034550", "LT03_020_BRIEF_Main", "box_OutputOrder_v2_20.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_95_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_96();
    l0 = self.box_PositionModifier_v2_95;
    l1 = self.box_MultipleAND_v2_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|603100699", "603100699", "LT03_020_BRIEF_Main", "box_PositionModifier_v2_95.Done", "box_MultipleAND_v2_96.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_SetContextualStrategy_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_61();
    l0 = self.box_MultipleAND_v2_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1371455988", "1371455988", "LT03_020_BRIEF_Main", "box_SetContextualStrategy_59.Out", "box_MultipleAND_v2_61.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_AgentGroupModifier_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|612069327", "612069327", "LT03_020_BRIEF_Main", "box_AgentGroupModifier_43.Out", "box_OutputOrder_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|@StartMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_41_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|@StopMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|3902325");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_83()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_70()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_72()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|67334921");
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

function export:OnEnter_box_SetContextualStrategy_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|72261252");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_69_Out,
    });
    params = {
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_73()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|139198420");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_54_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104823507163587901",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|152706300");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_58_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104823508061168960",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_48()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_86()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065038744787885",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104823507163587901",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|187595092");
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

function export:OnEnter_box_PositionModifier_v2_88()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065038744787885",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104823508061168960",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|275672820");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
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

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|295576344");
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

function export:OnEnter_box_Music_Quest_v2_13()
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
        [6] = "917929056",
        -- StopEvent,
        [7] = "4221628733",
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

function export:OnEnter_box_ActivityEnd_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|316094658");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|366719805");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_31_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|366789193");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_63()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_36()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
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

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|418207273");
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

function export:OnEnter_box_AgentGroupModifier_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|441161630");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_57_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A714E363",
        -- PawnGroup,
        [1] = "#6AC8084C",
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
        [3] = "2101065038744787885",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_LT03_062_Soft_Cap_Hostage_Transform/cin_lt03_062_soft_cap_hostage_transform.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|539346173");
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

function export:OnEnter_box_SetContextualStrategy_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|571050144");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_45_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104823508061168960",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|588245684");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_18_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|606089152");
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

function export:OnEnter_box_MultipleAND_v2_67()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
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

function export:OnEnter_box_NarrativeFade_5()
    local params;
    params = {
        -- PostFX,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|696157706");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
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

function export:OnEnter_box_NarrativeFade_12()
    local params;
    params = {
        -- PostFX,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|764309924");
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

function export:OnEnter_box_SetTimeOfDay_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|781842063");
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|801611256");
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

function export:OnEnter_box_NarrativeSceneSetup_10()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|812952679");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_61()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|840476263");
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

function export:OnEnter_box_PositionModifier_v2_89()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065038744787885",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104823508061168960",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_93()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065038744787885",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104823508061168960",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|936143457");
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

function export:OnEnter_box_NarrativeSceneSetup_15()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|985290047");
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

function export:OnEnter_box_SetContextualStrategy_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|998284362");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_66_Out,
    });
    params = {
        -- Group,
        [1] = "#6AC8084C",
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

function export:OnEnter_box_GunsForHireSystemModifier_71()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
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

function export:OnEnter_box_MultipleAND_v2_96()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1097606525");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
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
        [3] = "2101065038744787885",
        -- CenterScene_SoftCapture,
        [4] = "2101065038744787885",
        -- eWarningSound,
        [5] = "1849334431",
        -- ForcedCapturePreconditionID,
        [6] = "9015249829846224",
        -- fTimer,
        [7] = 10,
        -- NarrativeFade_PostFX,
        [9] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1235883701");
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
        [8] = "LT03_020_BRIEF Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1257126908");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_84_Out,
    });
    params = {
        -- Hour,
        [0] = 20,
        -- Minute,
        [1] = 0,
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

function export:OnEnter_box_PositionModifier_v2_91()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065038744787885",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104823507163587901",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1475217739");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_74()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1540778261");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_49_Out,
    });
    params = {
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1542841675");
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

function export:OnEnter_box_MultipleAND_v2_47()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
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

function export:OnEnter_box_SoundMixing_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1708722092");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_7()
    local params;
    params = {
        -- PostFX,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_19()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_81()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1768542990");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1806902747");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_53_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104823508061168960",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_87()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
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

function export:OnEnter_box_SetContextualStrategy_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1838574019");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_51_Out,
    });
    params = {
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_21()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101065038744787885",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/cin_lt03_060_hard_capture/cin_lt03_060_hard_capture_v2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1898438675");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_44_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104823507163587901",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1939509983");
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

function export:OnEnter_box_MultipleAND_v2_92()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|1985505555");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2025588840");
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
                [0] = self.f_box_OutputOrder_v2_55_Out_0,
                [1] = self.f_box_OutputOrder_v2_55_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_27()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101065038744787885",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/cin_lt03_061_soft_cap_questgiver/cin_lt03_061_soft_cap_questgiver_v2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_56()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2080656634");
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

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2086155872");
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

function export:OnEnter_box_PositionModifier_v2_95()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065038744787885",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104823507163587901",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2111325311");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_59_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104823507163587901",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_BRIEF.domino|@LT03_020_BRIEF_Main|2117179957");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_43_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A714E363",
        -- PawnGroup,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_16_Out()
    local l0;
    l0 = self.box_StartMetaSequence_16;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_11_Out()
    local l0;
    l0 = self.box_StartMetaSequence_11;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_24_Out()
    local l0;
    l0 = self.box_StartMetaSequence_24;
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
