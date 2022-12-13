LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_030/lt02_030_b10.domino
-- User graph: CIN_LT02_030_B10
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCinematicBlackBars.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3074360545.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2430786186.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1264750367.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_030/LT02_030_B10.CIN_LT02_030_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCinematicBlackBars.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Hide",
            },
            [1] = {
                name = "Show",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Hidden",
                delayed = false,
            },
            [1] = {
                name = "Showned",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "CIN_LT02_030_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10";
    self.Out = DummyFunction;
    self.Metasequence_ID = 0;
    self.MetaSequenceID = 0;
    self.box_StartMetaSequence_4 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|9460639");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_4_Out,
    });
    self.box_InputPriorityModifier_v4_1 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|33545603");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_1_OnSet,
    });
    self.box_Music_Quest_v2_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|86783521");
    l0:SetConnections({
    });
    self.box_PostFx_v3_11 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|189041078");
    l0:SetConnections({
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|263915698");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_PostFx_v3_6 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|715338168");
    l0:SetConnections({
    });
    self.box_PostWWiseEventSetState_16 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|945003576");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_7 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1021904623");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_7_Holstered,
    });
    self.box_EntityStatusListener_39 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1583786291");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_39_Loaded,
    });
    self.box_PostFx_v3_15 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1617309037");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_15_Enabled,
    });
    self.box_PlaySequence_v8_12 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1792698224");
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
        [0] = self.f_box_PlaySequence_v8_12_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_12_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_12_SPOut__FadeIn_,
                },
                [1] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_12_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_12_Started,
    });
    self.box_NarrativeSceneCleanUp_V2_10 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1967316878");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_10_Out,
    });
    self.box_PostFx_v3_3 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1986336221");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_InputPriorityModifier_v4_1();
    l0 = self.box_InputPriorityModifier_v4_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1282864528", "1282864528", "CIN_LT02_030_B10", "In", "box_InputPriorityModifier_v4_1.Set", self, l0:GetLuaBox());
    -- Set
    l0:Exec(1, params);
end;

function export:f_box_StartMetaSequence_4_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_4_Out();
    params = self:OnEnter_box_SoundMixing_22();
    l0 = self.box_StartMetaSequence_4;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1425813019", "1425813019", "CIN_LT02_030_B10", "box_StartMetaSequence_4.Out", "box_SoundMixing_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InputPriorityModifier_v4_1_OnSet()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_7();
    l0 = self.box_InputPriorityModifier_v4_1;
    l1 = self.box_NarrativeSceneSetup_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|694040575", "694040575", "CIN_LT02_030_B10", "box_InputPriorityModifier_v4_1.OnSet", "box_NarrativeSceneSetup_7.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_23();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1878307215", "1878307215", "CIN_LT02_030_B10", "box_MultipleOR_5.Out", "box_SoundMixing_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundMixing_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v4_2();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1603877334", "1603877334", "CIN_LT02_030_B10", "box_SoundMixing_23.Out", "box_StopMetaSequence_v4_2.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v4_2_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_10();
    l0 = self.box_NarrativeSceneCleanUp_V2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1279209726", "1279209726", "CIN_LT02_030_B10", "box_StopMetaSequence_v4_2.Stopped", "box_NarrativeSceneCleanUp_V2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_6();
    l0 = self.box_PostFx_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1001719469", "1001719469", "CIN_LT02_030_B10", "box_OutputOrder_v2_19.Out", "box_PostFx_v3_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_11();
    l0 = self.box_PostFx_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|2031583830", "2031583830", "CIN_LT02_030_B10", "box_OutputOrder_v2_19.Out", "box_PostFx_v3_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_DisplayCinematicBlackBars_21_Hidden()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCinematicBlackBars.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|36795741", "36795741", "CIN_LT02_030_B10", "box_DisplayCinematicBlackBars_21.Hidden", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_NarrativeSceneSetup_7_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_39();
    l0 = self.box_NarrativeSceneSetup_7;
    l1 = self.box_EntityStatusListener_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1368588738", "1368588738", "CIN_LT02_030_B10", "box_NarrativeSceneSetup_7.Holstered", "box_EntityStatusListener_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SoundMixing_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_12();
    l0 = self.box_PlaySequence_v8_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|746408967", "746408967", "CIN_LT02_030_B10", "box_SoundMixing_22.Out", "box_PlaySequence_v8_12.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_39_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_39;
    l1 = self.box_StartMetaSequence_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1071905883", "1071905883", "CIN_LT02_030_B10", "box_EntityStatusListener_39.Loaded", "box_StartMetaSequence_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PostFx_v3_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_PostFx_v3_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|320202824", "320202824", "CIN_LT02_030_B10", "box_PostFx_v3_15.Enabled", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostWWiseEventSetState_16();
    l0 = self.box_PostWWiseEventSetState_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1506045969", "1506045969", "CIN_LT02_030_B10", "box_OutputOrder_v2_17.Out", "box_PostWWiseEventSetState_16.SetState", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetState
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|2002144016", "2002144016", "CIN_LT02_030_B10", "box_OutputOrder_v2_17.Out", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_12_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_12;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|954967790", "954967790", "CIN_LT02_030_B10", "box_PlaySequence_v8_12.Finished", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_12_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_15();
    l0 = self.box_PlaySequence_v8_12;
    l1 = self.box_PostFx_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1566614253", "1566614253", "CIN_LT02_030_B10", "box_PlaySequence_v8_12.Skipped", "box_PostFx_v3_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_12_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_PlaySequence_v8_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|34123456", "34123456", "CIN_LT02_030_B10", "box_PlaySequence_v8_12.SPOut", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_12_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_3();
    l0 = self.box_PlaySequence_v8_12;
    l1 = self.box_PostFx_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|2005492514", "2005492514", "CIN_LT02_030_B10", "box_PlaySequence_v8_12.SPOut", "box_PostFx_v3_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_12_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_20();
    l0 = self.box_PlaySequence_v8_12;
    l1 = self.box_Music_Quest_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|815354310", "815354310", "CIN_LT02_030_B10", "box_PlaySequence_v8_12.Started", "box_Music_Quest_v2_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneCleanUp_V2_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCinematicBlackBars_21();
    l0 = self.box_NarrativeSceneCleanUp_V2_10;
    l1 = Boxes[GetPathID("Domino/System/UI/DisplayCinematicBlackBars.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1930418159", "1930418159", "CIN_LT02_030_B10", "box_NarrativeSceneCleanUp_V2_10.Out", "box_DisplayCinematicBlackBars_21.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_InputPriorityModifier_v4_1()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
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
        [2] = 4,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3074360545",
        -- StopEvent,
        [7] = "2430786186",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_11()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "jacobmusicbox",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|405880578");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_23_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/CIN_Recovered",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|465920584");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_2_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|582563432");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_6()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "jacobplayercapturethree",
    };
    return params;
end;

function export:OnEnter_box_DisplayCinematicBlackBars_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCinematicBlackBars.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicBlackBars_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|829654721");
    l0:SetConnections({
        -- Hidden,
        [0] = self.f_box_DisplayCinematicBlackBars_21_Hidden,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_16()
    local params;
    params = {
        -- SoundId,
        [0] = "1264750367",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_7()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1216527051");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_22_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/CIN_Unconscious",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101656865017440130",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_15()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B10.domino|@CIN_LT02_030_B10|1771200715");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_12()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101656865017440130",
        -- SequenceFile,
        [4] = "sequences/zeta_main/CIN_LT02_030_B10_JACOBSPEECH/cin_lt02_030_b10_jacobspeech.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_10()
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

function export:OnEnter_box_PostFx_v3_3()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfadejacobspeech",
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_4_Out()
    local l0;
    l0 = self.box_StartMetaSequence_4;
    self.MetaSequenceID = l0:GetDataOutValue(0);
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
