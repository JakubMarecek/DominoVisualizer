LUACW� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_005/lt03_005_brief.domino
-- User graph: LT03_005_BRIEF_Main
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
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1957438570.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1889962186.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2625470257.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_005/LT03_005_BRIEF.LT03_005_BRIEF_Main.debug.lua")] = {
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
    self._name = "LT03_005_BRIEF_Main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main";
    self.MetaSequenceID = 0;
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|46710828");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|66672929");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_GunsForHireSystemModifier_37 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|166321564");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_37_Disabled,
    });
    self.box_Music_Quest_v2_40 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|183689308");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_62 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|184578931");
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
        [0] = self.f_box_MultipleAND_v2_62_Out,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|217018888");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_NarrativeFade_21 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|314351824");
    l0:SetConnections({
    });
    self.box_PostFx_v3_36 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|386467014");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_9 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|428955284");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_9_Holstered,
    });
    self.box_GunsForHireSystemModifier_38 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|429220611");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_38_Disabled,
    });
    self.box_NarrativeFade_3 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|443764439");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_16 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|467683591");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_16_Holstered,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_76 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|534106374");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_76_Out,
    });
    self.box_MultipleAND_v2_53 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|535669149");
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
    self.box_PostFx_v3_28 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|631957385");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_28_Enabled,
    });
    self.box_PositionModifier_v2_93 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|685707290");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_93_Done,
    });
    self.box_Brick_PlayerGetsCaptured_V4_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayerGetsCaptured.Brick_PlayerGetsCaptured_V4.debug.lua");
    l0 = self.box_Brick_PlayerGetsCaptured_V4_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayerGetsCaptured_V4_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|707395842");
    l0:SetConnections({
        -- PlayerCaptured_OnCritical,
        [0] = self.f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnCritical,
        -- PlayerCaptured_OnEncounter,
        [1] = self.f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnEncounter,
        -- PlayerCaptured_OnPrecondition,
        [2] = self.f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnPrecondition,
    });
    self.box_MultipleAND_v2_66 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|721759878");
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
        [0] = self.f_box_MultipleAND_v2_66_Out,
    });
    self.box_PositionModifier_v2_84 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|723127982");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_84_Done,
    });
    self.box_StartMetaSequence_13 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|807738684");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_13_Out,
    });
    self.box_PlaySequence_v8_15 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|914344158");
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
        [0] = self.f_box_PlaySequence_v8_15_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_15_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Start_Postfx",
                    value = self.f_box_PlaySequence_v8_15_SPOut__Start_Postfx_,
                },
            },
            count = 1,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_15_Started,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_77 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|925234905");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_77_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_75 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|974367097");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_75_Out,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1010760403");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_Delay_v5_72 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1012204613");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_72_TimeElapsed,
    });
    self.box_GunsForHireSystemModifier_39 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1026781123");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_39_Disabled,
    });
    self.box_MultipleAND_v2_65 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1066721472");
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
        [0] = self.f_box_MultipleAND_v2_65_Out,
    });
    self.box_Delay_v5_74 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1108639142");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_74_TimeElapsed,
    });
    self.box_PositionModifier_v2_88 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1116892326");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_88_Done,
    });
    self.box_MultipleAND_v2_87 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1148323078");
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
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1153057453");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_PlaySequence_v8_24 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1176706531");
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
        [0] = self.f_box_PlaySequence_v8_24_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_24_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Start_Postfx",
                    value = self.f_box_PlaySequence_v8_24_SPOut__Start_Postfx_,
                },
            },
            count = 1,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_24_Started,
    });
    self.box_MultipleAND_v2_94 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1213253344");
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
        [0] = self.f_box_MultipleAND_v2_94_Out,
    });
    self.box_PlaySequence_v8_17 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1308354786");
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
        [0] = self.f_box_PlaySequence_v8_17_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_17_Skipped,
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
                    value = self.f_box_PlaySequence_v8_17_SPOut__Start_Postfx_,
                },
            },
            count = 6,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_17_Started,
    });
    self.box_MultipleAND_v2_52 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1333484106");
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
        [0] = self.f_box_MultipleAND_v2_52_Out,
    });
    self.box_PositionModifier_v2_92 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1353205711");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_92_Done,
    });
    self.box_StartMetaSequence_22 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1389440750");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_22_Out,
    });
    self.box_PositionModifier_v2_85 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1420716215");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_85_Done,
    });
    self.box_MultipleAND_v2_90 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1491415237");
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
        [0] = self.f_box_MultipleAND_v2_90_Out,
    });
    self.box_MultipleAND_v2_45 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1498538447");
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
        [0] = self.f_box_MultipleAND_v2_45_Out,
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1548899865");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_82 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1706236749");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_82_Out,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1723864554");
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
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1770934350");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_PostFx_v3_30 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1780950390");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_30_Enabled,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_80 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1819778777");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_80_Out,
    });
    self.box_NarrativeFade_10 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1852447447");
    l0:SetConnections({
    });
    self.box_PostFx_v3_35 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1978445492");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1980142365");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1987031701");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2042995579");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_NarrativeSceneSetup_23 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2044917033");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_23_Holstered,
    });
    self.box_PositionModifier_v2_89 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2045506257");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_89_Done,
    });
    self.box_PostFx_v3_34 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2053052006");
    l0:SetConnections({
    });
    self.box_PostFx_v3_32 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2055038793");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_32_Enabled,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_81 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2111828111");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_81_Out,
    });
    self.box_StartMetaSequence_14 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2115137798");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_14_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|769943025", "769943025", "LT03_005_BRIEF_Main", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v4_25_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|801486124", "801486124", "LT03_005_BRIEF_Main", "box_StopMetaSequence_v4_25.Stopped", "box_OutputOrder_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_25();
    l0 = self.box_MultipleOR_27;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1547452212", "1547452212", "LT03_005_BRIEF_Main", "box_MultipleOR_27.Out", "box_StopMetaSequence_v4_25.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|936975302", "936975302", "LT03_005_BRIEF_Main", "box_AgentGroupModifier_59.Out", "box_OutputOrder_v2_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_12();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|324319973", "324319973", "LT03_005_BRIEF_Main", "box_MultipleOR_11.Out", "box_StopMetaSequence_v4_12.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_37_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_46();
    l0 = self.box_GunsForHireSystemModifier_37;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2058290372", "2058290372", "LT03_005_BRIEF_Main", "box_GunsForHireSystemModifier_37.Disabled", "box_AgentGroupModifier_46.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_45();
    l0 = self.box_MultipleAND_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1335206144", "1335206144", "LT03_005_BRIEF_Main", "box_SetContextualStrategy_51.Out", "box_MultipleAND_v2_45.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_81();
    l0 = self.box_MultipleAND_v2_62;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1380119249", "1380119249", "LT03_005_BRIEF_Main", "box_MultipleAND_v2_62.Out", "box_CHEAT_SetEnvironmentTimeScale_81.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayerGetsCaptured_V4_8();
    l0 = self.box_ActivityInitialized_1;
    l1 = self.box_Brick_PlayerGetsCaptured_V4_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|168336209", "168336209", "LT03_005_BRIEF_Main", "box_ActivityInitialized_1.Out", "box_Brick_PlayerGetsCaptured_V4_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1604117508", "1604117508", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_101.Out", "box_Delay_v5_73.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_AgentGroupModifier_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1698277777", "1698277777", "LT03_005_BRIEF_Main", "box_AgentGroupModifier_47.Out", "box_OutputOrder_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1849615099", "1849615099", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_109.Out", "box_Delay_v5_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_105();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|295281027", "295281027", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_109.Out", "box_SoundMixing_105.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_65();
    l0 = self.box_MultipleAND_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|722265188", "722265188", "LT03_005_BRIEF_Main", "box_SetContextualStrategy_71.Out", "box_MultipleAND_v2_65.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_56();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1690577365", "1690577365", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_57.Out", "box_SetContextualStrategy_56.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_51();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1669807885", "1669807885", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_57.Out", "box_SetContextualStrategy_51.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v4_18_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|675075696", "675075696", "LT03_005_BRIEF_Main", "box_StopMetaSequence_v4_18.Stopped", "box_OutputOrder_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_48_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_53();
    l0 = self.box_MultipleAND_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1837109032", "1837109032", "LT03_005_BRIEF_Main", "box_SetContextualStrategy_48.Out", "box_MultipleAND_v2_53.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_AgentGroupModifier_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|25172576", "25172576", "LT03_005_BRIEF_Main", "box_AgentGroupModifier_46.Out", "box_OutputOrder_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_92();
    l0 = self.box_PositionModifier_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|435104569", "435104569", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_95.Out", "box_PositionModifier_v2_92.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_93();
    l0 = self.box_PositionModifier_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|477411369", "477411369", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_95.Out", "box_PositionModifier_v2_93.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_NarrativeSceneSetup_9_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_28();
    l0 = self.box_NarrativeSceneSetup_9;
    l1 = self.box_PostFx_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1634459501", "1634459501", "LT03_005_BRIEF_Main", "box_NarrativeSceneSetup_9.Holstered", "box_PostFx_v3_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GunsForHireSystemModifier_38_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_47();
    l0 = self.box_GunsForHireSystemModifier_38;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|175548330", "175548330", "LT03_005_BRIEF_Main", "box_GunsForHireSystemModifier_38.Disabled", "box_AgentGroupModifier_47.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_9();
    l0 = self.box_NarrativeSceneSetup_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|98200365", "98200365", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_41.Out", "box_NarrativeSceneSetup_9.HolsterWeapon", clone:GetLuaBox(), l0:GetLuaBox());
    -- HolsterWeapon
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1493273512", "1493273512", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_41.Out", "box_MultipleOR_43.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|785102021", "785102021", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_2.Out", "box_Print_v2_7.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|528745275", "528745275", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_16();
    l0 = self.box_NarrativeSceneSetup_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1236517094", "1236517094", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_42.Out", "box_NarrativeSceneSetup_16.HolsterWeapon", clone:GetLuaBox(), l0:GetLuaBox());
    -- HolsterWeapon
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|466864259", "466864259", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_42.Out", "box_MultipleOR_43.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_107_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|115235421", "115235421", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_107.Out", "box_Delay_v5_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_107_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_106();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|637624971", "637624971", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_107.Out", "box_SoundMixing_106.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_16_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_30();
    l0 = self.box_NarrativeSceneSetup_16;
    l1 = self.box_PostFx_v3_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|82545263", "82545263", "LT03_005_BRIEF_Main", "box_NarrativeSceneSetup_16.Holstered", "box_PostFx_v3_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_79();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_76;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1912087949", "1912087949", "LT03_005_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_76.Out", "box_SetTimeOfDay_79.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_MultipleAND_v2_53;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1350235344", "1350235344", "LT03_005_BRIEF_Main", "box_MultipleAND_v2_53.Out", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_28_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = self.box_PostFx_v3_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|682857379", "682857379", "LT03_005_BRIEF_Main", "box_PostFx_v3_28.Enabled", "box_OutputOrder_v2_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_55();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1064997188", "1064997188", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_58.Out", "box_SetContextualStrategy_55.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_50();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|628912803", "628912803", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_58.Out", "box_SetContextualStrategy_50.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|465712109", "465712109", "LT03_005_BRIEF_Main", "box_SetTimeOfDay_83.Out", "box_StartMetaSequence_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_PositionModifier_v2_93_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_94();
    l0 = self.box_PositionModifier_v2_93;
    l1 = self.box_MultipleAND_v2_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|242470349", "242470349", "LT03_005_BRIEF_Main", "box_PositionModifier_v2_93.Done", "box_MultipleAND_v2_94.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_66();
    l0 = self.box_MultipleAND_v2_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|153279683", "153279683", "LT03_005_BRIEF_Main", "box_SetContextualStrategy_64.Out", "box_MultipleAND_v2_66.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnCritical()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1781985175", "1781985175", "LT03_005_BRIEF_Main", "box_Brick_PlayerGetsCaptured_V4_8.PlayerCaptured_OnCritical", "box_OutputOrder_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnEncounter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1276304687", "1276304687", "LT03_005_BRIEF_Main", "box_Brick_PlayerGetsCaptured_V4_8.PlayerCaptured_OnEncounter", "box_OutputOrder_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_8_PlayerCaptured_OnPrecondition()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1625182860", "1625182860", "LT03_005_BRIEF_Main", "box_Brick_PlayerGetsCaptured_V4_8.PlayerCaptured_OnPrecondition", "box_OutputOrder_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_84();
    l0 = self.box_PositionModifier_v2_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|102673429", "102673429", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_86.Out", "box_PositionModifier_v2_84.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_85();
    l0 = self.box_PositionModifier_v2_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1034189077", "1034189077", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_86.Out", "box_PositionModifier_v2_85.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_80();
    l0 = self.box_MultipleAND_v2_66;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|586538242", "586538242", "LT03_005_BRIEF_Main", "box_MultipleAND_v2_66.Out", "box_CHEAT_SetEnvironmentTimeScale_80.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_84_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_87();
    l0 = self.box_PositionModifier_v2_84;
    l1 = self.box_MultipleAND_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1659107330", "1659107330", "LT03_005_BRIEF_Main", "box_PositionModifier_v2_84.Done", "box_MultipleAND_v2_87.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_97_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_40();
    l0 = self.box_Music_Quest_v2_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|218799586", "218799586", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_97.Out", "box_Music_Quest_v2_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_StartMetaSequence_13_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_13_Out();
    params = self:OnEnter_box_PlaySequence_v8_17();
    l0 = self.box_StartMetaSequence_13;
    l1 = self.box_PlaySequence_v8_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1510500316", "1510500316", "LT03_005_BRIEF_Main", "box_StartMetaSequence_13.Out", "box_PlaySequence_v8_17.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_71();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|302001416", "302001416", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_60.Out", "box_SetContextualStrategy_71.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_70();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1424713774", "1424713774", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_60.Out", "box_SetContextualStrategy_70.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_61();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2142830176", "2142830176", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_68.Out", "box_SetContextualStrategy_61.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_64();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|325572425", "325572425", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_68.Out", "box_SetContextualStrategy_64.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_15_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1706558582", "1706558582", "LT03_005_BRIEF_Main", "box_PlaySequence_v8_15.Finished", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_15_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|26883537", "26883537", "LT03_005_BRIEF_Main", "box_PlaySequence_v8_15.Skipped", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_15_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_10();
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_NarrativeFade_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|72283226", "72283226", "LT03_005_BRIEF_Main", "box_PlaySequence_v8_15.SPOut", "box_NarrativeFade_10.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_15_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_36();
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_PostFx_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1021575535", "1021575535", "LT03_005_BRIEF_Main", "box_PlaySequence_v8_15.Started", "box_PostFx_v3_36.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_83();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_77;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1507023217", "1507023217", "LT03_005_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_77.Out", "box_SetTimeOfDay_83.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_72();
    l0 = self.box_Delay_v5_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|69736597", "69736597", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_103.Out", "box_Delay_v5_72.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_78();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_75;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1141234594", "1141234594", "LT03_005_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_75.Out", "box_SetTimeOfDay_78.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_66();
    l0 = self.box_MultipleAND_v2_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1417146079", "1417146079", "LT03_005_BRIEF_Main", "box_SetContextualStrategy_61.Out", "box_MultipleAND_v2_66.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_23();
    l0 = self.box_NarrativeSceneSetup_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|385593802", "385593802", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_44.Out", "box_NarrativeSceneSetup_23.HolsterWeapon", clone:GetLuaBox(), l0:GetLuaBox());
    -- HolsterWeapon
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1923585381", "1923585381", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_44.Out", "box_MultipleOR_43.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_76();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1752414704", "1752414704", "LT03_005_BRIEF_Main", "box_Delay_v5_29.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_76.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_72_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_26();
    l0 = self.box_Delay_v5_72;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2102012027", "2102012027", "LT03_005_BRIEF_Main", "box_Delay_v5_72.TimeElapsed", "box_ActivityEnd_26.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_88();
    l0 = self.box_PositionModifier_v2_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1684127175", "1684127175", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_91.Out", "box_PositionModifier_v2_88.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_89();
    l0 = self.box_PositionModifier_v2_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|217084061", "217084061", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_91.Out", "box_PositionModifier_v2_89.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_GunsForHireSystemModifier_39_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_59();
    l0 = self.box_GunsForHireSystemModifier_39;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|948455913", "948455913", "LT03_005_BRIEF_Main", "box_GunsForHireSystemModifier_39.Disabled", "box_AgentGroupModifier_59.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_82();
    l0 = self.box_MultipleAND_v2_65;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1327090271", "1327090271", "LT03_005_BRIEF_Main", "box_MultipleAND_v2_65.Out", "box_CHEAT_SetEnvironmentTimeScale_82.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_56_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_45();
    l0 = self.box_MultipleAND_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|418815420", "418815420", "LT03_005_BRIEF_Main", "box_SetContextualStrategy_56.Out", "box_MultipleAND_v2_45.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_74_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_Delay_v5_74;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|473144980", "473144980", "LT03_005_BRIEF_Main", "box_Delay_v5_74.TimeElapsed", "box_ActivityEnd_5.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_88_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_90();
    l0 = self.box_PositionModifier_v2_88;
    l1 = self.box_MultipleAND_v2_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1762292207", "1762292207", "LT03_005_BRIEF_Main", "box_PositionModifier_v2_88.Done", "box_MultipleAND_v2_90.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_38();
    l0 = self.box_MultipleAND_v2_87;
    l1 = self.box_GunsForHireSystemModifier_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1992764772", "1992764772", "LT03_005_BRIEF_Main", "box_MultipleAND_v2_87.Out", "box_GunsForHireSystemModifier_38.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_97();
    l0 = self.box_MultipleOR_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|93527525", "93527525", "LT03_005_BRIEF_Main", "box_MultipleOR_43.Out", "box_OutputOrder_v2_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_24_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_24;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|611019893", "611019893", "LT03_005_BRIEF_Main", "box_PlaySequence_v8_24.Finished", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_24_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_24;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1469719183", "1469719183", "LT03_005_BRIEF_Main", "box_PlaySequence_v8_24.Skipped", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_24_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_21();
    l0 = self.box_PlaySequence_v8_24;
    l1 = self.box_NarrativeFade_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1830373657", "1830373657", "LT03_005_BRIEF_Main", "box_PlaySequence_v8_24.SPOut", "box_NarrativeFade_21.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_24_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_34();
    l0 = self.box_PlaySequence_v8_24;
    l1 = self.box_PostFx_v3_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|208719697", "208719697", "LT03_005_BRIEF_Main", "box_PlaySequence_v8_24.Started", "box_PostFx_v3_34.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_65();
    l0 = self.box_MultipleAND_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1578152391", "1578152391", "LT03_005_BRIEF_Main", "box_SetContextualStrategy_70.Out", "box_MultipleAND_v2_65.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_94_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_39();
    l0 = self.box_MultipleAND_v2_94;
    l1 = self.box_GunsForHireSystemModifier_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|871071842", "871071842", "LT03_005_BRIEF_Main", "box_MultipleAND_v2_94.Out", "box_GunsForHireSystemModifier_39.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_62();
    l0 = self.box_MultipleAND_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1012732874", "1012732874", "LT03_005_BRIEF_Main", "box_SetContextualStrategy_67.Out", "box_MultipleAND_v2_62.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_SetTimeOfDay_79_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1192666373", "1192666373", "LT03_005_BRIEF_Main", "box_SetTimeOfDay_79.Out", "box_StartMetaSequence_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_PlaySequence_v8_17_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_17;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|856212642", "856212642", "LT03_005_BRIEF_Main", "box_PlaySequence_v8_17.Finished", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_17_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_17;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2027954241", "2027954241", "LT03_005_BRIEF_Main", "box_PlaySequence_v8_17.Skipped", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_17_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_3();
    l0 = self.box_PlaySequence_v8_17;
    l1 = self.box_NarrativeFade_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1551928452", "1551928452", "LT03_005_BRIEF_Main", "box_PlaySequence_v8_17.SPOut", "box_NarrativeFade_3.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_17_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_35();
    l0 = self.box_PlaySequence_v8_17;
    l1 = self.box_PostFx_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|674891420", "674891420", "LT03_005_BRIEF_Main", "box_PlaySequence_v8_17.Started", "box_PostFx_v3_35.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_MultipleAND_v2_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|743639440", "743639440", "LT03_005_BRIEF_Main", "box_MultipleAND_v2_52.Out", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_92_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_94();
    l0 = self.box_PositionModifier_v2_92;
    l1 = self.box_MultipleAND_v2_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1233731039", "1233731039", "LT03_005_BRIEF_Main", "box_PositionModifier_v2_92.Done", "box_MultipleAND_v2_94.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_SetContextualStrategy_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_52();
    l0 = self.box_MultipleAND_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2022903550", "2022903550", "LT03_005_BRIEF_Main", "box_SetContextualStrategy_55.Out", "box_MultipleAND_v2_52.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_StartMetaSequence_22_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_22_Out();
    params = self:OnEnter_box_PlaySequence_v8_24();
    l0 = self.box_StartMetaSequence_22;
    l1 = self.box_PlaySequence_v8_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1611502104", "1611502104", "LT03_005_BRIEF_Main", "box_StartMetaSequence_22.Out", "box_PlaySequence_v8_24.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_85_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_87();
    l0 = self.box_PositionModifier_v2_85;
    l1 = self.box_MultipleAND_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1181325011", "1181325011", "LT03_005_BRIEF_Main", "box_PositionModifier_v2_85.Done", "box_MultipleAND_v2_87.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_53();
    l0 = self.box_MultipleAND_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1935471248", "1935471248", "LT03_005_BRIEF_Main", "box_SetContextualStrategy_54.Out", "box_MultipleAND_v2_53.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_90_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_37();
    l0 = self.box_MultipleAND_v2_90;
    l1 = self.box_GunsForHireSystemModifier_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|941517819", "941517819", "LT03_005_BRIEF_Main", "box_MultipleAND_v2_90.Out", "box_GunsForHireSystemModifier_37.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_MultipleAND_v2_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|34140951", "34140951", "LT03_005_BRIEF_Main", "box_MultipleAND_v2_45.Out", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_74();
    l0 = self.box_Delay_v5_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1183780511", "1183780511", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_99.Out", "box_Delay_v5_74.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_19();
    l0 = self.box_Delay_v5_73;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1430321785", "1430321785", "LT03_005_BRIEF_Main", "box_Delay_v5_73.TimeElapsed", "box_ActivityEnd_19.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_52();
    l0 = self.box_MultipleAND_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1254780544", "1254780544", "LT03_005_BRIEF_Main", "box_SetContextualStrategy_50.Out", "box_MultipleAND_v2_52.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_82;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|388880236", "388880236", "LT03_005_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_82.Out", "box_OutputOrder_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_18();
    l0 = self.box_MultipleOR_20;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|50707391", "50707391", "LT03_005_BRIEF_Main", "box_MultipleOR_20.Out", "box_StopMetaSequence_v4_18.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_75();
    l0 = self.box_Delay_v5_31;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1372105779", "1372105779", "LT03_005_BRIEF_Main", "box_Delay_v5_31.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_75.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_PostFx_v3_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = self.box_PostFx_v3_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|661891585", "661891585", "LT03_005_BRIEF_Main", "box_PostFx_v3_30.Enabled", "box_OutputOrder_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_80;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|102531641", "102531641", "LT03_005_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_80.Out", "box_OutputOrder_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_54();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|735902142", "735902142", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_49.Out", "box_SetContextualStrategy_54.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_48();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1616000433", "1616000433", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_49.Out", "box_SetContextualStrategy_48.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v4_12_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|714129697", "714129697", "LT03_005_BRIEF_Main", "box_StopMetaSequence_v4_12.Stopped", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_67();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|124936037", "124936037", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_69.Out", "box_SetContextualStrategy_67.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_63();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1150391714", "1150391714", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_69.Out", "box_SetContextualStrategy_63.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1526172750", "1526172750", "LT03_005_BRIEF_Main", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1964063927", "1964063927", "LT03_005_BRIEF_Main", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|320820072", "320820072", "LT03_005_BRIEF_Main", "box_MultipleOR_6.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetContextualStrategy_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_62();
    l0 = self.box_MultipleAND_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1164083052", "1164083052", "LT03_005_BRIEF_Main", "box_SetContextualStrategy_63.Out", "box_MultipleAND_v2_62.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_77();
    l0 = self.box_Delay_v5_33;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|236399096", "236399096", "LT03_005_BRIEF_Main", "box_Delay_v5_33.TimeElapsed", "box_CHEAT_SetEnvironmentTimeScale_77.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_NarrativeSceneSetup_23_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_32();
    l0 = self.box_NarrativeSceneSetup_23;
    l1 = self.box_PostFx_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1699801714", "1699801714", "LT03_005_BRIEF_Main", "box_NarrativeSceneSetup_23.Holstered", "box_PostFx_v3_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_89_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_90();
    l0 = self.box_PositionModifier_v2_89;
    l1 = self.box_MultipleAND_v2_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1164980635", "1164980635", "LT03_005_BRIEF_Main", "box_PositionModifier_v2_89.Done", "box_MultipleAND_v2_90.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_PostFx_v3_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_107();
    l0 = self.box_PostFx_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|109840977", "109840977", "LT03_005_BRIEF_Main", "box_PostFx_v3_32.Enabled", "box_OutputOrder_v2_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2039563009", "2039563009", "LT03_005_BRIEF_Main", "box_SetTimeOfDay_78.Out", "box_StartMetaSequence_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_81;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1708605404", "1708605404", "LT03_005_BRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_81.Out", "box_OutputOrder_v2_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_14_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_14_Out();
    params = self:OnEnter_box_PlaySequence_v8_15();
    l0 = self.box_StartMetaSequence_14;
    l1 = self.box_PlaySequence_v8_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1435125947", "1435125947", "LT03_005_BRIEF_Main", "box_StartMetaSequence_14.Out", "box_PlaySequence_v8_15.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|748365202", "748365202", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_108.Out", "box_Delay_v5_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_104();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|288583355", "288583355", "LT03_005_BRIEF_Main", "box_OutputOrder_v2_108.Out", "box_SoundMixing_104.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_StopMetaSequence_v4_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|14353364");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_25_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|66650592");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_59_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A714E363",
        -- PawnGroup,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_37()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
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
        [6] = "1957438570",
        -- StopEvent,
        [7] = "1889962186",
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

function export:OnEnter_box_SetContextualStrategy_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|184463468");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_51_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005247238808840",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_62()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|196635012");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|226279375");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|264060508");
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
                [1] = self.f_box_OutputOrder_v2_101_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|265726615");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_47_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A714E363",
        -- PawnGroup,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|308559243");
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
                [0] = self.f_box_OutputOrder_v2_109_Out_0,
                [1] = self.f_box_OutputOrder_v2_109_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|312248629");
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

function export:OnEnter_box_NarrativeFade_21()
    local params;
    params = {
        -- PostFX,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|329931907");
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

function export:OnEnter_box_StopMetaSequence_v4_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|346158337");
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

function export:OnEnter_box_SetContextualStrategy_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|346511494");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_48_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005247238808840",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|383698480");
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

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|420611779");
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

function export:OnEnter_box_NarrativeSceneSetup_9()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_38()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_3()
    local params;
    params = {
        -- PostFX,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|449572256");
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

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|456903065");
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

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|465989166");
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

function export:OnEnter_box_OutputOrder_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|466607312");
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
                [0] = self.f_box_OutputOrder_v2_107_Out_0,
                [1] = self.f_box_OutputOrder_v2_107_Out_1,
            },
            count = 2,
        },
    });
    params = {
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

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|490106079");
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
        [8] = "LT03_005_BRIEF Started",
        -- useTimeTag,
        [9] = true,
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

function export:OnEnter_box_MultipleAND_v2_53()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_28()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|633323855");
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

function export:OnEnter_box_SetTimeOfDay_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|666139873");
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

function export:OnEnter_box_PositionModifier_v2_93()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065034273659813",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005247238808840",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|701791996");
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
        [3] = "2101065034273659813",
        -- CenterScene_SoftCapture,
        [4] = "2101065034273659813",
        -- eWarningSound,
        [5] = "2625470257",
        -- ForcedCapturePreconditionID,
        [6] = "9015249829803148",
        -- fTimer,
        [7] = 10,
        -- NarrativeFade_PostFX,
        [9] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|709101220");
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
                [0] = self.f_box_OutputOrder_v2_86_Out_0,
                [1] = self.f_box_OutputOrder_v2_86_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_66()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_84()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065034273659813",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005243583472902",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|757443231");
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
                [0] = self.f_box_OutputOrder_v2_97_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|862820481");
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

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|878378876");
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

function export:OnEnter_box_PlaySequence_v8_15()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101065034273659813",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/cin_lt03_060_hard_capture/cin_lt03_060_hard_capture_v2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
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

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|928530480");
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
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_75()
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|984552313");
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

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1009607238");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_72()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1012404532");
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

function export:OnEnter_box_GunsForHireSystemModifier_39()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_65()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1099353437");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_56_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005243583472902",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_74()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_88()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065034273659813",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005243583472902",
        -- useSmallestAngleDiff,
        [7] = false,
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

function export:OnEnter_box_PlaySequence_v8_24()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101065034273659813",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/cin_lt03_061_soft_cap_questgiver/cin_lt03_061_soft_cap_questgiver_v2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1200665093");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_70_Out,
    });
    params = {
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_94()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1269900267");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_67_Out,
    });
    params = {
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1272658225");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_79_Out,
    });
    params = {
        -- Hour,
        [0] = 20,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1292624135");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_17()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101065034273659813",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_LT03_062_Soft_Cap_Hostage_Transform/cin_lt03_062_soft_cap_hostage_transform.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_52()
    local params;
    params = {
        -- AutoReset,
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
        [4] = "2101065034273659813",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005243583472902",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1374037279");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_55_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005243583472902",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_85()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101065034273659813",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005247238808840",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1423429530");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_54_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005243583472902",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_90()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_45()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1506502019");
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
                [1] = self.f_box_OutputOrder_v2_99_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1668476716");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_50_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105005247238808840",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1703551216");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_82()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_30()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithcelebration",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_80()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_10()
    local params;
    params = {
        -- PostFX,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1911967875");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1912470342");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1961831560");
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

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|1967073901");
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

function export:OnEnter_box_SetContextualStrategy_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2000132970");
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

function export:OnEnter_box_SoundMixing_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2007026369");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
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

function export:OnEnter_box_NarrativeSceneSetup_23()
    local params;
    params = {
        -- Enable_Blackbars,
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
        [4] = "2101065034273659813",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2105005247238808840",
        -- useSmallestAngleDiff,
        [7] = false,
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

function export:OnEnter_box_SetTimeOfDay_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2108073602");
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

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_81()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_005\\LT03_005_BRIEF.domino|@LT03_005_BRIEF_Main|2125320921");
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

function export:OnExit_box_StartMetaSequence_13_Out()
    local l0;
    l0 = self.box_StartMetaSequence_13;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_22_Out()
    local l0;
    l0 = self.box_StartMetaSequence_22;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_14_Out()
    local l0;
    l0 = self.box_StartMetaSequence_14;
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
