LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_360/mis_360_b60.domino
-- User graph: MIS_360_Flashback_Bink
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayer_v6.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayerListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DisplayCinematicSkipPrompt.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayActBreakUI.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3851504035.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1469621095.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1605558207.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3328474173.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1159342873.bnk]], "CSoundResource");
        cboxRes:LoadResource([[ui\singleplayer\video\cin_m360_flashback_joseph.bik]], "CBinkResource");
        cboxRes:LoadResource([[2916959524.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
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
    metadataTable[GetPathID("Domino/System/BinkPlayer_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Preload",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Played",
                delayed = false,
            },
            [1] = {
                name = "Preloaded",
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
                name = "BinkAudio",
                type = "Sound",
            },
            [1] = {
                name = "BinkAudioType",
                type = "SoundType",
            },
            [2] = {
                name = "BinkPathID",
                type = "Video",
            },
            [3] = {
                name = "BinkSound",
                type = "Sound",
            },
            [4] = {
                name = "BinkSoundEnd",
                type = "Sound",
            },
            [5] = {
                name = "BinkSoundEndType",
                type = "SoundType",
            },
            [6] = {
                name = "BinkSoundFade",
                type = "float",
            },
            [7] = {
                name = "BinkSoundType",
                type = "SoundType",
            },
            [8] = {
                name = "BinkVolumePercent",
                type = "float",
            },
            [9] = {
                name = "Loop",
                type = "bool",
            },
            [10] = {
                name = "MaterialName",
                type = "string",
            },
            [11] = {
                name = "ScreenEntity",
                type = "entity",
            },
            [12] = {
                name = "TCR_Music",
                type = "bool",
            },
            [13] = {
                name = "WaitAvailableBinding",
                type = "bool",
            },
        },
        dataInCount = 14,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/BinkPlayerListener_v3.lua")] = {
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
                name = "End",
                delayed = true,
            },
            [3] = {
                name = "Initialized",
                delayed = true,
            },
            [4] = {
                name = "Loaded",
                delayed = true,
            },
            [5] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "BinkPathIDFilter",
                type = "Video",
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
    metadataTable[GetPathID("Domino/System/DisplayCinematicSkipPrompt.lua")] = {
        stateless = false,
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
        },
        dataInCount = 0,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_360_Flashback_Bink";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink";
    self.Out = DummyFunction;
    self.Player = nil;
    self.ePlayer = nil;
    self.box_Music_Quest_v2_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|14235549");
    l0:SetConnections({
    });
    self.box_BinkPlayer_v6_19 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|284020650");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_7 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|527043688");
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
        [0] = self.f_box_MultipleAND_v2_7_Out,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|644513398");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_8_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_NarrativeFade_18 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|792997874");
    l0:SetConnections({
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|886653318");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_DisplayCinematicSkipPrompt_1 = cbox:CreateBox("Domino/System/DisplayCinematicSkipPrompt.lua");
    l0 = self.box_DisplayCinematicSkipPrompt_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicSkipPrompt_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|917410764");
    l0:SetConnections({
    });
    self.box_TeleportPawns_20 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|999600391");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_20_Out,
    });
    self.box_PostFx_v3_13 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1112894593");
    l0:SetConnections({
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1410512072");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1509590759");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1531367376");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_PostFx_v3_3 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1775120286");
    l0:SetConnections({
    });
    self.box_DisplayActBreakUI_14 = cbox:CreateBox("Domino/System/UI/DisplayActBreakUI.lua");
    l0 = self.box_DisplayActBreakUI_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayActBreakUI_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1812326687");
    l0:SetConnections({
        -- CompletelyShowed,
        [0] = self.f_box_DisplayActBreakUI_14_CompletelyShowed,
        -- Hidden,
        [1] = self.f_box_DisplayActBreakUI_14_Hidden,
        -- Showed,
        [2] = self.f_box_DisplayActBreakUI_14_Showed,
    });
    self.box_SoundModifier_v2_30 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1816516145");
    l0:SetConnections({
    });
    self.box_BinkPlayerListener_v3_9 = cbox:CreateBox("Domino/System/BinkPlayerListener_v3.lua");
    l0 = self.box_BinkPlayerListener_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayerListener_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1944167891");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_BinkPlayerListener_v3_9_Disabled,
        -- Enabled,
        [1] = self.f_box_BinkPlayerListener_v3_9_Enabled,
        -- End,
        [2] = self.f_box_BinkPlayerListener_v3_9_End,
        -- Start,
        [5] = self.f_box_BinkPlayerListener_v3_9_Start,
    });
    self.box_SoundModifier_v2_26 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|2015036057");
    l0:SetConnections({
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|2140615809");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|400519657", "400519657", "MIS_360_Flashback_Bink", "In", "box_GetLocalPlayer_v2_24.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|511318820", "511318820", "MIS_360_Flashback_Bink", "box_OutputOrder_v2_25.Out", "box_Delay_v5_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_7_Out()
    local l0;
    l0 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1782118947", "1782118947", "MIS_360_Flashback_Bink", "box_MultipleAND_v2_7.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Delay_v5_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_Delay_v5_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|242599746", "242599746", "MIS_360_Flashback_Bink", "box_Delay_v5_8.Started", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_3();
    l0 = self.box_Delay_v5_8;
    l1 = self.box_PostFx_v3_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|557802665", "557802665", "MIS_360_Flashback_Bink", "box_Delay_v5_8.TimeElapsed", "box_PostFx_v3_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_30();
    l0 = self.box_SoundModifier_v2_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1287534703", "1287534703", "MIS_360_Flashback_Bink", "box_OutputOrder_v2_6.Out", "box_SoundModifier_v2_30.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1874974314", "1874974314", "MIS_360_Flashback_Bink", "box_OutputOrder_v2_6.Out", "box_Delay_v5_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_26();
    l0 = self.box_Delay_v5_27;
    l1 = self.box_SoundModifier_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1243870388", "1243870388", "MIS_360_Flashback_Bink", "box_Delay_v5_27.TimeElapsed", "box_SoundModifier_v2_26.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_TeleportPawns_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_TeleportPawns_20;
    l1 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|838351710", "838351710", "MIS_360_Flashback_Bink", "box_TeleportPawns_20.Out", "box_Delay_v5_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_28();
    l0 = self.box_Music_Quest_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|345892614", "345892614", "MIS_360_Flashback_Bink", "box_OutputOrder_v2_15.Out", "box_Music_Quest_v2_28.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayerListener_v3_9();
    l0 = self.box_BinkPlayerListener_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1739433356", "1739433356", "MIS_360_Flashback_Bink", "box_OutputOrder_v2_15.Out", "box_BinkPlayerListener_v3_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_DisplayCinematicSkipPrompt_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|880016596", "880016596", "MIS_360_Flashback_Bink", "box_OutputOrder_v2_15.Out", "box_DisplayCinematicSkipPrompt_1.HidePrompt", clone:GetLuaBox(), l0:GetLuaBox());
    -- HidePrompt
    l0:Exec(1, {
    });
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_Delay_v5_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|876974938", "876974938", "MIS_360_Flashback_Bink", "box_Delay_v5_10.TimeElapsed", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_20();
    l0 = self.box_TeleportPawns_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|382853026", "382853026", "MIS_360_Flashback_Bink", "box_OutputOrder_v2_16.Out", "box_TeleportPawns_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayActBreakUI_14();
    l0 = self.box_DisplayActBreakUI_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|3351816", "3351816", "MIS_360_Flashback_Bink", "box_OutputOrder_v2_16.Out", "box_DisplayActBreakUI_14.Show", clone:GetLuaBox(), l0:GetLuaBox());
    -- Show
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayerListener_v3_9();
    l0 = self.box_Delay_v5_4;
    l1 = self.box_BinkPlayerListener_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1249506385", "1249506385", "MIS_360_Flashback_Bink", "box_Delay_v5_4.TimeElapsed", "box_BinkPlayerListener_v3_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_28();
    l0 = self.box_Music_Quest_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|137970938", "137970938", "MIS_360_Flashback_Bink", "box_OutputOrder_v2_29.Out", "box_Music_Quest_v2_28.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_DisplayCinematicSkipPrompt_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1038715738", "1038715738", "MIS_360_Flashback_Bink", "box_OutputOrder_v2_29.Out", "box_DisplayCinematicSkipPrompt_1.DisplayPrompt", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisplayPrompt
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_Delay_v5_12;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|988767144", "988767144", "MIS_360_Flashback_Bink", "box_Delay_v5_12.TimeElapsed", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_GetLocalPlayer_v2_24_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1484729767", "1484729767", "MIS_360_Flashback_Bink", "box_GetLocalPlayer_v2_24.Out", "box_Delay_v5_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_18();
    l0 = self.box_NarrativeFade_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|2130271814", "2130271814", "MIS_360_Flashback_Bink", "box_OutputOrder_v2_2.Out", "box_NarrativeFade_18.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_13();
    l0 = self.box_PostFx_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|277998496", "277998496", "MIS_360_Flashback_Bink", "box_OutputOrder_v2_2.Out", "box_PostFx_v3_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_DisplayActBreakUI_14_CompletelyShowed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_DisplayActBreakUI_14;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|549505996", "549505996", "MIS_360_Flashback_Bink", "box_DisplayActBreakUI_14.CompletelyShowed", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayActBreakUI_14_Hidden()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_DisplayActBreakUI_14;
    l1 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|603611468", "603611468", "MIS_360_Flashback_Bink", "box_DisplayActBreakUI_14.Hidden", "box_Delay_v5_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayActBreakUI_14_Showed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_DisplayActBreakUI_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1130190900", "1130190900", "MIS_360_Flashback_Bink", "box_DisplayActBreakUI_14.Showed", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BinkPlayerListener_v3_9_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_BinkPlayerListener_v3_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1245038680", "1245038680", "MIS_360_Flashback_Bink", "box_BinkPlayerListener_v3_9.Disabled", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BinkPlayerListener_v3_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_19();
    l0 = self.box_BinkPlayerListener_v3_9;
    l1 = self.box_BinkPlayer_v6_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|224275031", "224275031", "MIS_360_Flashback_Bink", "box_BinkPlayerListener_v3_9.Enabled", "box_BinkPlayer_v6_19.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_BinkPlayerListener_v3_9_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_BinkPlayerListener_v3_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1242959645", "1242959645", "MIS_360_Flashback_Bink", "box_BinkPlayerListener_v3_9.End", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BinkPlayerListener_v3_9_Start()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_BinkPlayerListener_v3_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|794385894", "794385894", "MIS_360_Flashback_Bink", "box_BinkPlayerListener_v3_9.Start", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_Delay_v5_11;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1762564853", "1762564853", "MIS_360_Flashback_Bink", "box_Delay_v5_11.TimeElapsed", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:OnEnter_box_Music_Quest_v2_28()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 35,
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

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|223898728");
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
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_19()
    local params;
    params = {
        -- BinkAudio,
        [0] = "2916959524",
        -- BinkAudioType,
        [1] = 12,
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\cin_m360_flashback_joseph.bik]],
        -- BinkSound,
        [3] = "1605558207",
        -- BinkSoundFade,
        [6] = 10,
        -- BinkSoundType,
        [7] = 12,
        -- BinkVolumePercent,
        [8] = 1,
        -- Loop,
        [9] = false,
        -- MaterialName,
        [10] = "Black",
        -- ScreenEntity,
        [11] = self.ePlayer,
        -- TCR_Music,
        [12] = false,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_7()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|696900945");
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

function export:OnEnter_box_NarrativeFade_18()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7.5,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_20()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109083189659068802",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_13()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1301112968");
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

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1431544313");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
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
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1514926657");
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

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1682580338");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_24_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B60.domino|@MIS_360_Flashback_Bink|1718010861");
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

function export:OnEnter_box_PostFx_v3_3()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frameswhite",
    };
    return params;
end;

function export:OnEnter_box_DisplayActBreakUI_14()
    local params;
    params = {
        -- Act,
        [0] = 12,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_30()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3328474173",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_BinkPlayerListener_v3_9()
    local params;
    params = {
        -- BinkPathIDFilter,
        [0] = [[ui\singleplayer\video\cin_m360_flashback_joseph.bik]],
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_26()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1469621095",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayer = l0:GetDataOutValue(0);
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
