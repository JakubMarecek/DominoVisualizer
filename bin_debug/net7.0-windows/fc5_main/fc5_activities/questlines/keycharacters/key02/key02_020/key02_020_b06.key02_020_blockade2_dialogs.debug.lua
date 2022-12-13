LUAC�' -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key02/key02_020/key02_020_b06.domino
-- User graph: KEY02_020_Blockade2_Dialogs
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_020/KEY02_020_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3822198814.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3917027400.bnk]], "CSoundResource");
        cboxRes:LoadResource([[647277899.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1866618548.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2275424505.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2784361889.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1747252444.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3921944883.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2772405867.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_020/KEY02_020_B06.KEY02_020_Blockade2_Dialogs.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
            },
        },
        controlInCount = 3,
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
                name = "PlayerGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "listenToGroupSizeChange",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY02_020_Blockade2_Dialogs";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs";
    self.e_roadblockdude_coward = "2101577317668113940";
    self.e_roadblockdude_brave = "2104577492042999751";
    self.g_PlayerGroup = nil;
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|47772050");
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
        [0] = self.f_box_MultipleOR_30_Out,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|53738644");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_PlayDialog_v6_35 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|211851141");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_35_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_35_FinishedInterrupted,
    });
    self.box_Gate_v3_20 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|240179590");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_20_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_20_Out,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|245751269");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|389182286");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|480180248");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_PlayDialog_v6_24 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|575331711");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_24_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_24_FinishedInterrupted,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|672035096");
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
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|813004868");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_PlayDialog_v6_8 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|827786258");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_8_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_8_FinishedInterrupted,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|889686598");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_EntityStatusListener_29 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|907889008");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_29_Loaded,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|941788647");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|962344569");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|963878345");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1024079678");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_ProximityTrigger_v2_5 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1087260497");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_5_Enter,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1242159984");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1349676275");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1378972472");
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
    self.box_PlayDialog_v6_33 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1417162809");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_33_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_33_FinishedInterrupted,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1503606516");
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
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1531928645");
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
    self.box_PlayDialog_v6_6 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1604168913");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_22 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1748292931");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_40 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1816799049");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1853758672");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
    });
    self.box_ProximityRadiusListener_v3_23 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1930356181");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_23_SomeoneNear,
    });
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1962050540");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_1_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_1_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|2007928506");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_11_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_11_FinishedInterrupted,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|2085867795");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_16();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1982162882", "1982162882", "KEY02_020_Blockade2_Dialogs", "In", "box_GetPlayerGroup_v2_16.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1263273383", "1263273383", "KEY02_020_Blockade2_Dialogs", "box_Simple_Node_37.Out", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1602022102", "1602022102", "KEY02_020_Blockade2_Dialogs", "box_Simple_Node_37.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_MultipleOR_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1490241579", "1490241579", "KEY02_020_Blockade2_Dialogs", "box_MultipleOR_30.Out", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_MultipleOR_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1072989254", "1072989254", "KEY02_020_Blockade2_Dialogs", "box_MultipleOR_32.Out", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_40();
    l0 = self.box_SoundModifier_v2_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1750811293", "1750811293", "KEY02_020_Blockade2_Dialogs", "box_OutputOrder_v2_38.Out", "box_SoundModifier_v2_40.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|549684845", "549684845", "KEY02_020_Blockade2_Dialogs", "box_OutputOrder_v2_38.Out", "box_Delay_v5_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_35_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_35;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1333576738", "1333576738", "KEY02_020_Blockade2_Dialogs", "box_PlayDialog_v6_35.Finished", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_35_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_35;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1067977052", "1067977052", "KEY02_020_Blockade2_Dialogs", "box_PlayDialog_v6_35.FinishedInterrupted", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1964267983", "1964267983", "KEY02_020_Blockade2_Dialogs", "box_OutputOrder_v2_7.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|713314337", "713314337", "KEY02_020_Blockade2_Dialogs", "box_OutputOrder_v2_7.Out", "box_Gate_v3_20.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_20_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_20;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|578015692", "578015692", "KEY02_020_Blockade2_Dialogs", "box_Gate_v3_20.Opened", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_20_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_20;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1828772474", "1828772474", "KEY02_020_Blockade2_Dialogs", "box_Gate_v3_20.Out", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_Delay_v5_31;
    l1 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1844704655", "1844704655", "KEY02_020_Blockade2_Dialogs", "box_Delay_v5_31.TimeElapsed", "box_PlayDialog_v6_1.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|439374602", "439374602", "KEY02_020_Blockade2_Dialogs", "box_OutputOrder_v2_19.Out", "box_PlayDialog_v6_6.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|323748821", "323748821", "KEY02_020_Blockade2_Dialogs", "box_OutputOrder_v2_19.Out", "box_Delay_v5_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_24();
    l0 = self.box_Delay_v5_39;
    l1 = self.box_PlayDialog_v6_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|423274417", "423274417", "KEY02_020_Blockade2_Dialogs", "box_Delay_v5_39.TimeElapsed", "box_PlayDialog_v6_24.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_5();
    l0 = self.box_ProximityTrigger_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1179089063", "1179089063", "KEY02_020_Blockade2_Dialogs", "box_OutputOrder_v2_21.Out", "box_ProximityTrigger_v2_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_23();
    l0 = self.box_ProximityRadiusListener_v3_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1872525297", "1872525297", "KEY02_020_Blockade2_Dialogs", "box_OutputOrder_v2_21.Out", "box_ProximityRadiusListener_v3_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_MultipleOR_36;
    l1 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1117569769", "1117569769", "KEY02_020_Blockade2_Dialogs", "box_MultipleOR_36.Out", "box_Delay_v5_31.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_24_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_24;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|604740568", "604740568", "KEY02_020_Blockade2_Dialogs", "box_PlayDialog_v6_24.Finished", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_24_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_24;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1453961533", "1453961533", "KEY02_020_Blockade2_Dialogs", "box_PlayDialog_v6_24.FinishedInterrupted", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1471631603", "1471631603", "KEY02_020_Blockade2_Dialogs", "box_OutputOrder_v2_25.Out", "box_Gate_v3_20.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|764349388", "764349388", "KEY02_020_Blockade2_Dialogs", "box_OutputOrder_v2_25.Out", "box_Gate_v3_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|60201333", "60201333", "KEY02_020_Blockade2_Dialogs", "box_MultipleOR_3.Out", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_16_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|223308643", "223308643", "KEY02_020_Blockade2_Dialogs", "box_GetPlayerGroup_v2_16.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_Delay_v5_34;
    l1 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|671493568", "671493568", "KEY02_020_Blockade2_Dialogs", "box_Delay_v5_34.TimeElapsed", "box_PlayDialog_v6_8.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_8_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_8;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1448153303", "1448153303", "KEY02_020_Blockade2_Dialogs", "box_PlayDialog_v6_8.Finished", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_8_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_8;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1717897063", "1717897063", "KEY02_020_Blockade2_Dialogs", "box_PlayDialog_v6_8.FinishedInterrupted", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = self.box_Delay_v5_10;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1223695637", "1223695637", "KEY02_020_Blockade2_Dialogs", "box_Delay_v5_10.TimeElapsed", "box_Simple_Node_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_29_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_29;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1231098766", "1231098766", "KEY02_020_Blockade2_Dialogs", "box_EntityStatusListener_29.Loaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_MultipleOR_17;
    l1 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|111371297", "111371297", "KEY02_020_Blockade2_Dialogs", "box_MultipleOR_17.Out", "box_Delay_v5_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_35();
    l0 = self.box_Delay_v5_12;
    l1 = self.box_PlayDialog_v6_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1370773536", "1370773536", "KEY02_020_Blockade2_Dialogs", "box_Delay_v5_12.TimeElapsed", "box_PlayDialog_v6_35.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_Delay_v5_28;
    l1 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1543521119", "1543521119", "KEY02_020_Blockade2_Dialogs", "box_Delay_v5_28.TimeElapsed", "box_PlayDialog_v6_11.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_MultipleOR_15;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1722403797", "1722403797", "KEY02_020_Blockade2_Dialogs", "box_MultipleOR_15.Out", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_5_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_ProximityTrigger_v2_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1968336581", "1968336581", "KEY02_020_Blockade2_Dialogs", "box_ProximityTrigger_v2_5.Enter", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1000615917", "1000615917", "KEY02_020_Blockade2_Dialogs", "box_OutputOrder_v2_14.Out", "box_EntityStatusListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_29();
    l0 = self.box_EntityStatusListener_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1451383172", "1451383172", "KEY02_020_Blockade2_Dialogs", "box_OutputOrder_v2_14.Out", "box_EntityStatusListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_MultipleOR_26;
    l1 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1468612410", "1468612410", "KEY02_020_Blockade2_Dialogs", "box_MultipleOR_26.Out", "box_Delay_v5_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_22();
    l0 = self.box_Delay_v5_13;
    l1 = self.box_PlayDialog_v6_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|2135016004", "2135016004", "KEY02_020_Blockade2_Dialogs", "box_Delay_v5_13.TimeElapsed", "box_PlayDialog_v6_22.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1929234949", "1929234949", "KEY02_020_Blockade2_Dialogs", "box_MultipleOR_4.Out", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_33_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_33;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1162064478", "1162064478", "KEY02_020_Blockade2_Dialogs", "box_PlayDialog_v6_33.Finished", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_33_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_33;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|987508691", "987508691", "KEY02_020_Blockade2_Dialogs", "box_PlayDialog_v6_33.FinishedInterrupted", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_MultipleOR_2;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|2111762686", "2111762686", "KEY02_020_Blockade2_Dialogs", "box_MultipleOR_2.Out", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_MultipleOR_27;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|617328380", "617328380", "KEY02_020_Blockade2_Dialogs", "box_MultipleOR_27.Out", "box_Delay_v5_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|2121463817", "2121463817", "KEY02_020_Blockade2_Dialogs", "box_EntityStatusListener_9.Loaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_23_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_ProximityRadiusListener_v3_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|637379206", "637379206", "KEY02_020_Blockade2_Dialogs", "box_ProximityRadiusListener_v3_23.SomeoneNear", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_1_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_1;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1579242080", "1579242080", "KEY02_020_Blockade2_Dialogs", "box_PlayDialog_v6_1.Finished", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_1_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_1;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1778581333", "1778581333", "KEY02_020_Blockade2_Dialogs", "box_PlayDialog_v6_1.FinishedInterrupted", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_11_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_11;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|996408715", "996408715", "KEY02_020_Blockade2_Dialogs", "box_PlayDialog_v6_11.Finished", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_11_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_11;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|473134747", "473134747", "KEY02_020_Blockade2_Dialogs", "box_PlayDialog_v6_11.FinishedInterrupted", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_33();
    l0 = self.box_Delay_v5_18;
    l1 = self.box_PlayDialog_v6_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1297163690", "1297163690", "KEY02_020_Blockade2_Dialogs", "box_Delay_v5_18.TimeElapsed", "box_PlayDialog_v6_33.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|@n_RDialogRepeat1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|101878425");
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

function export:OnEnter_box_PlayDialog_v6_35()
    local params;
    DrawTextToScreen("Comment: Whatever it takes! Don't let that thing through!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Whatever it takes! Don't let that thing through!");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_brave,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1866618548",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|218796369");
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

function export:OnEnter_box_Gate_v3_20()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
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

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|270295079");
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

function export:OnEnter_box_Delay_v5_39()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|393486678");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_24()
    local params;
    DrawTextToScreen("Comment: Shit shit shit! You hear that!? It's comin'!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Shit shit shit! You hear that!? It's comin'!");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_coward,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2772405867",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|636361938");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|776382655");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_8()
    local params;
    DrawTextToScreen("Comment: There's no stopping that thing! What do we do!?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: There's no stopping that thing! What do we do!?");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_coward,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1747252444",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_29()
    local params;
    DrawTextToScreen("Comment: Left Dude", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EntityStatusListener')-- Comment: Left Dude");
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.e_roadblockdude_brave,
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

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = Globals.KEY02_020_B10.Global_Trailer,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103744460690060362",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B06.domino|@KEY02_020_Blockade2_Dialogs|1095858579");
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

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_33()
    local params;
    DrawTextToScreen("Comment: Dig deep! We can do this!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Dig deep! We can do this!");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_brave,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3921944883",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_6()
    local params;
    DrawTextToScreen("Comment: Good God! Get after it!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Good God! Get after it!");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_brave,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2784361889",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_22()
    local params;
    DrawTextToScreen("Comment: Shit! Holy shit! It's still going!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Shit! Holy shit! It's still going!");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_coward,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "647277899",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_40()
    local params;
    params = {
        -- Pawns,
        [0] = "2105777097850039773",
        -- SoundId,
        [1] = "3822198814",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_9()
    local params;
    DrawTextToScreen("Comment: Right Dude", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EntityStatusListener')-- Comment: Right Dude");
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.e_roadblockdude_coward,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_23()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.g_PlayerGroup,
        -- id2,
        [3] = "2100580023359543385",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    DrawTextToScreen("Comment: We need to run god damnit!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: We need to run god damnit!");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_coward,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2275424505",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    DrawTextToScreen("Comment: Oh God. Oh God! Get ready!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Oh God. Oh God! Get ready!");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_brave,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3917027400",
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

function export:OnExit_box_GetPlayerGroup_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.g_PlayerGroup = l0:GetDataOutValue(0);
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
