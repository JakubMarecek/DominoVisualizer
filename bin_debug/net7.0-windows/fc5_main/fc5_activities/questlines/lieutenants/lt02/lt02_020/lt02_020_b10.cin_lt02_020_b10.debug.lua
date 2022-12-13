LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_020/lt02_020_b10.domino
-- User graph: CIN_LT02_020_B10
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/MoonModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3308241788.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2335868099.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_020/LT02_020_B10.CIN_LT02_020_B10.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "CIN_Setup",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/System/MoonModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ResetMoonDirection",
            },
            [1] = {
                name = "ResetMoonHDRMultiplier",
            },
            [2] = {
                name = "ResetMoonSize",
            },
            [3] = {
                name = "SetMoonDirection",
            },
            [4] = {
                name = "SetMoonHDRMultiplier",
            },
            [5] = {
                name = "SetMoonSize",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "OnResetMoonDirection",
                delayed = false,
            },
            [1] = {
                name = "OnResetMoonHDRMultiplier",
                delayed = false,
            },
            [2] = {
                name = "OnResetMoonSize",
                delayed = false,
            },
            [3] = {
                name = "OnSetMoonDirection",
                delayed = false,
            },
            [4] = {
                name = "OnSetMoonHDRMultiplier",
                delayed = false,
            },
            [5] = {
                name = "OnSetMoonSize",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "Azimuth",
                type = "float",
            },
            [1] = {
                name = "Elevation",
                type = "float",
            },
            [2] = {
                name = "HDRMultiplier",
                type = "float",
            },
            [3] = {
                name = "ResetAfterBeat",
                type = "bool",
            },
            [4] = {
                name = "Size",
                type = "float",
            },
        },
        dataInCount = 5,
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
    self._name = "CIN_LT02_020_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10";
    self.Out = DummyFunction;
    self.CIN_Setup = DummyFunction;
    self.MetaSequenceID = 0;
    self.box_Music_Quest_v2_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|134028370");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|232405166");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_25 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|599803252");
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
        [0] = self.f_box_MultipleAND_v2_25_Out,
    });
    self.box_PositionModifier_v2_15 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|720716751");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_15_Done,
    });
    self.box_LockTimeOfDay_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|998856404");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LockTimeOfDay_19_Out,
    });
    self.box_PositionModifier_v2_16 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1004321312");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_16_Done,
    });
    self.box_MoonModifier_30 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1114853654");
    l0:SetConnections({
        -- OnResetMoonDirection,
        [0] = self.f_box_MoonModifier_30_OnResetMoonDirection,
    });
    self.box_PostFx_v3_6 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1128731079");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_6_Disabled,
    });
    self.box_NarrativeSceneCleanUp_V2_7 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1161290587");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_7_Out,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1192270704");
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
    self.box_StartMetaSequence_3 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1231969180");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_3_Out,
    });
    self.box_MoonModifier_29 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1357172740");
    l0:SetConnections({
        -- OnSetMoonDirection,
        [3] = self.f_box_MoonModifier_29_OnSetMoonDirection,
    });
    self.box_MultipleAND_v2_24 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1379857888");
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
        [0] = self.f_box_MultipleAND_v2_24_Out,
    });
    self.box_LockTimeOfDay_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1434433621");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LockTimeOfDay_20_Out,
    });
    self.box_PlaySequence_v8_4 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1601488686");
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
        [0] = self.f_box_PlaySequence_v8_4_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_4_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIN",
                    value = self.f_box_PlaySequence_v8_4_SPOut__FadeIN_,
                },
                [1] = {
                    string = "FadeOUT",
                    value = self.f_box_PlaySequence_v8_4_SPOut__FadeOUT_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_4_Started,
    });
    self.box_PostFx_v3_17 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1887128023");
    l0:SetConnections({
    });
    self.box_PostFx_v3_10 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1950847291");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_PositionModifier_v2_15();
    l0 = self.box_PositionModifier_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|207658495", "207658495", "CIN_LT02_020_B10", "In", "box_PositionModifier_v2_15.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_25();
    l0 = self.box_MultipleAND_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1636424383", "1636424383", "CIN_LT02_020_B10", "box_SetContextualStrategy_27.Out", "box_MultipleAND_v2_25.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_25();
    l0 = self.box_MultipleAND_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1100138855", "1100138855", "CIN_LT02_020_B10", "box_SetContextualStrategy_28.Out", "box_MultipleAND_v2_25.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_SetContextualStrategy_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_24();
    l0 = self.box_MultipleAND_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|963273121", "963273121", "CIN_LT02_020_B10", "box_SetContextualStrategy_21.Out", "box_MultipleAND_v2_24.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_7();
    l0 = self.box_MultipleAND_v2_25;
    l1 = self.box_NarrativeSceneCleanUp_V2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1084467115", "1084467115", "CIN_LT02_020_B10", "box_MultipleAND_v2_25.Out", "box_NarrativeSceneCleanUp_V2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_15_Done()
    local params, l0, l1;
    params = self:OnEnter_box_MoonModifier_29();
    l0 = self.box_PositionModifier_v2_15;
    l1 = self.box_MoonModifier_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|635513668", "635513668", "CIN_LT02_020_B10", "box_PositionModifier_v2_15.Done", "box_MoonModifier_29.SetMoonDirection", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetMoonDirection
    l1:Exec(3, params);
end;

function export:f_box_SoundMixing_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v4_5();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|416019557", "416019557", "CIN_LT02_020_B10", "box_SoundMixing_12.Out", "box_StopMetaSequence_v4_5.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1584167282", "1584167282", "CIN_LT02_020_B10", "box_AgentGroupModifier_18.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LockTimeOfDay_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_LockTimeOfDay_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|57717896", "57717896", "CIN_LT02_020_B10", "box_LockTimeOfDay_19.Out", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_16_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_1();
    l0 = self.box_PositionModifier_v2_16;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1766665166", "1766665166", "CIN_LT02_020_B10", "box_PositionModifier_v2_16.Done", "box_OverrideEnvironment_v3_1.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1504745920", "1504745920", "CIN_LT02_020_B10", "box_OutputOrder_v2_38.Out", "CIN_Setup", clone:GetLuaBox(), self);
    self:CIN_Setup();
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|798842384", "798842384", "CIN_LT02_020_B10", "box_OutputOrder_v2_38.Out", "box_StartMetaSequence_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MoonModifier_30_OnResetMoonDirection()
    local params, l0, l1;
    params = self:OnEnter_box_LockTimeOfDay_19();
    l0 = self.box_MoonModifier_30;
    l1 = self.box_LockTimeOfDay_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1206616122", "1206616122", "CIN_LT02_020_B10", "box_MoonModifier_30.OnResetMoonDirection", "box_LockTimeOfDay_19.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(1, params);
end;

function export:f_box_PostFx_v3_6_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_17();
    l0 = self.box_PostFx_v3_6;
    l1 = self.box_PostFx_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1884792825", "1884792825", "CIN_LT02_020_B10", "box_PostFx_v3_6.Disabled", "box_PostFx_v3_17.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1900037703", "1900037703", "CIN_LT02_020_B10", "box_OutputOrder_v2_13.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_8();
    l0 = self.box_Music_Quest_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|295603553", "295603553", "CIN_LT02_020_B10", "box_OutputOrder_v2_13.Out", "box_Music_Quest_v2_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_NarrativeSceneCleanUp_V2_7_Out()
    local l0;
    l0 = self.box_NarrativeSceneCleanUp_V2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|143084343", "143084343", "CIN_LT02_020_B10", "box_NarrativeSceneCleanUp_V2_7.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_12();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1828429941", "1828429941", "CIN_LT02_020_B10", "box_MultipleOR_9.Out", "box_SoundMixing_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_3_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_3_Out();
    params = self:OnEnter_box_SoundMixing_11();
    l0 = self.box_StartMetaSequence_3;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1186095537", "1186095537", "CIN_LT02_020_B10", "box_StartMetaSequence_3.Out", "box_SoundMixing_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v4_5_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_16();
    l0 = self.box_PositionModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1806783799", "1806783799", "CIN_LT02_020_B10", "box_StopMetaSequence_v4_5.Stopped", "box_PositionModifier_v2_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SoundMixing_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_4();
    l0 = self.box_PlaySequence_v8_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|347226733", "347226733", "CIN_LT02_020_B10", "box_SoundMixing_11.Out", "box_PlaySequence_v8_4.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_24();
    l0 = self.box_MultipleAND_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|679853489", "679853489", "CIN_LT02_020_B10", "box_SetContextualStrategy_22.Out", "box_MultipleAND_v2_24.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MoonModifier_29_OnSetMoonDirection()
    local params, l0, l1;
    params = self:OnEnter_box_LockTimeOfDay_20();
    l0 = self.box_MoonModifier_29;
    l1 = self.box_LockTimeOfDay_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|797993040", "797993040", "CIN_LT02_020_B10", "box_MoonModifier_29.OnSetMoonDirection", "box_LockTimeOfDay_20.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_MultipleAND_v2_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1161813209", "1161813209", "CIN_LT02_020_B10", "box_MultipleAND_v2_24.Out", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LockTimeOfDay_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_18();
    l0 = self.box_LockTimeOfDay_20;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|424174712", "424174712", "CIN_LT02_020_B10", "box_LockTimeOfDay_20.Out", "box_AgentGroupModifier_18.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_4_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_4;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|840898813", "840898813", "CIN_LT02_020_B10", "box_PlaySequence_v8_4.Finished", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_4_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_PlaySequence_v8_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|498350383", "498350383", "CIN_LT02_020_B10", "box_PlaySequence_v8_4.Skipped", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_4_SPOut__FadeIN_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_6();
    l0 = self.box_PlaySequence_v8_4;
    l1 = self.box_PostFx_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1031307260", "1031307260", "CIN_LT02_020_B10", "box_PlaySequence_v8_4.SPOut", "box_PostFx_v3_6.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_4_SPOut__FadeOUT_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_10();
    l0 = self.box_PlaySequence_v8_4;
    l1 = self.box_PostFx_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1879552679", "1879552679", "CIN_LT02_020_B10", "box_PlaySequence_v8_4.SPOut", "box_PostFx_v3_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_14();
    l0 = self.box_PlaySequence_v8_4;
    l1 = self.box_Music_Quest_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|487101701", "487101701", "CIN_LT02_020_B10", "box_PlaySequence_v8_4.Started", "box_Music_Quest_v2_14.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OverrideEnvironment_v3_1_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_30();
    l0 = self.box_MoonModifier_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1040280941", "1040280941", "CIN_LT02_020_B10", "box_OverrideEnvironment_v3_1.Disabled", "box_MoonModifier_30.ResetMoonDirection", clone:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonDirection
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_21();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1428821967", "1428821967", "CIN_LT02_020_B10", "box_OutputOrder_v2_23.Out", "box_SetContextualStrategy_21.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_22();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|673562390", "673562390", "CIN_LT02_020_B10", "box_OutputOrder_v2_23.Out", "box_SetContextualStrategy_22.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_28();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1496813002", "1496813002", "CIN_LT02_020_B10", "box_OutputOrder_v2_26.Out", "box_SetContextualStrategy_28.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_27();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|931634627", "931634627", "CIN_LT02_020_B10", "box_OutputOrder_v2_26.Out", "box_SetContextualStrategy_27.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Music_Quest_v2_8()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 3,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3308241788",
        -- StopEvent,
        [7] = "2335868099",
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

function export:OnEnter_box_Music_Quest_v2_14()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3308241788",
        -- StopEvent,
        [7] = "2335868099",
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

function export:OnEnter_box_SetContextualStrategy_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|331085283");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_27_Out,
    });
    params = {
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|344784808");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_28_Out,
    });
    params = {
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|484542498");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_21_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104948414295847838",
        -- Group,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_25()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_15()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104159462936821935",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104159434784653455",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|808527519");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_12_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/CIN_Recovered",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|990184210");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_18_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A714E363",
        -- PawnGroup,
        [1] = "#6AC8084C",
    };
    return params;
end;

function export:OnEnter_box_LockTimeOfDay_19()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_16()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104159587876737943",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104159434784653455",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1090628890");
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

function export:OnEnter_box_MoonModifier_30()
    local params;
    params = {
        -- Azimuth,
        [0] = -80,
        -- Elevation,
        [1] = 20,
        -- HDRMultiplier,
        [2] = 1,
        -- ResetAfterBeat,
        [3] = true,
        -- Size,
        [4] = 1,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_6()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "jacobplayercapturetwo",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1129509775");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_7()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGFHDisabled,
        [1] = true,
        -- KeepGodMode,
        [2] = false,
        -- KeepHUDMode,
        [3] = true,
        -- KeepWeaponHolstered,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1252183726");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_5_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1303496158");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_11_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/CIN_Unconscious",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1353453348");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_22_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104948413622662043",
        -- Group,
        [1] = "#A714E363",
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_29()
    local params;
    params = {
        -- Azimuth,
        [0] = -215,
        -- Elevation,
        [1] = -10,
        -- HDRMultiplier,
        [2] = 1,
        -- ResetAfterBeat,
        [3] = true,
        -- Size,
        [4] = 6,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_24()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_LockTimeOfDay_20()
    local params;
    params = {
        -- Hour,
        [0] = 22,
        -- Minute,
        [1] = 45,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_4()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101563596669463493",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_LT02_020_Joseph_Speech/cin_lt02_020_joseph_speech.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1627279850");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_OverrideEnvironment_v3_1_Disabled,
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Special.CIN_LT02_020_Joseph_Speech_Fog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1780193858");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B10.domino|@CIN_LT02_020_B10|1848184893");
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

function export:OnEnter_box_PostFx_v3_17()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "jacobplayercaptureaction",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_10()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfadejosephspeech",
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_3_Out()
    local l0;
    l0 = self.box_StartMetaSequence_3;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:CIN_Setup()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="CIN_Setup" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
