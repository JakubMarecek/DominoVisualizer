LUAC�3 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key02/key02_020/key02_020_b10.domino
-- User graph: KEY02_020_B10_Dialogs
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
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_020/KEY02_020_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1747252444.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3822198814.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3917027400.bnk]], "CSoundResource");
        cboxRes:LoadResource([[647277899.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1866618548.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2275424505.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2784361889.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2772405867.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3921944883.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.KEY02_020_B10 = nil;
    Globals.KEY02_020_B10 = {
        Global_Trailer = nil,
        Global_Strategic = nil,
        Global_BarrelTarget = nil,
        Global_Semi = nil,
        Global_Driver = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_020/KEY02_020_B10.KEY02_020_B10_Dialogs.debug.lua")] = {
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
    self._name = "KEY02_020_B10_Dialogs";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs";
    self.g_PlayerGroup = nil;
    self.e_roadblockdude_coward = "2101577317668113940";
    self.e_roadblockdude_brave = "2104577492042999751";
    self.box_ProximityRadiusListener_v3_11 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|49608412");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_11_SomeoneNear,
    });
    self.box_PlayDialog_v6_5 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|116248351");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_5_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_5_FinishedInterrupted,
    });
    self.box_Delay_v5_23 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|181266107");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_23_TimeElapsed,
    });
    self.box_PlayDialog_v6_4 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|243940171");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_4_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_4_FinishedInterrupted,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|256764063");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|289901268");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_Gate_v3_7 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|325074207");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_7_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_7_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_7_Out,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|341301345");
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
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|347808177");
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
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|501662010");
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
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|584537550");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_PlayDialog_v6_13 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|605660356");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_13_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_13_FinishedInterrupted,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|782965136");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|810953866");
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
    self.box_PlayDialog_v6_35 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|849568071");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_19 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|919443997");
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
                [0] = self.f_box_OnceOnly_v3_19_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_36 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1040578842");
    l0:SetConnections({
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1091877401");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1098063646");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1472156745");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1490074279");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_PlayDialog_v6_14 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1529028888");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_14_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_14_FinishedInterrupted,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1554048996");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1731889497");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
    });
    self.box_PlayDialog_v6_22 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1765835589");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_22_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_22_FinishedInterrupted,
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1876859108");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_6 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1879267979");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_6_Enter,
    });
    self.box_EntityStatusListener_2 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1900169722");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_2_Loaded,
    });
    self.box_SoundModifier_v2_39 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1912174759");
    l0:SetConnections({
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1981865190");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|2033199523");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_10_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_10_FinishedInterrupted,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_24();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|2102644699", "2102644699", "KEY02_020_B10_Dialogs", "In", "box_GetPlayerGroup_v2_24.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|976408537", "976408537", "KEY02_020_B10_Dialogs", "box_Simple_Node_20.Out", "box_OnceOnly_v3_19.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1261786516", "1261786516", "KEY02_020_B10_Dialogs", "box_Simple_Node_20.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1587118070", "1587118070", "KEY02_020_B10_Dialogs", "box_Simple_Node_18.Out", "box_PlayDialog_v6_10.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_14();
    l0 = self.box_PlayDialog_v6_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1905488028", "1905488028", "KEY02_020_B10_Dialogs", "box_Simple_Node_18.Out", "box_PlayDialog_v6_14.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_5();
    l0 = self.box_PlayDialog_v6_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|762651636", "762651636", "KEY02_020_B10_Dialogs", "box_Simple_Node_18.Out", "box_PlayDialog_v6_5.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_4();
    l0 = self.box_PlayDialog_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|481971387", "481971387", "KEY02_020_B10_Dialogs", "box_Simple_Node_18.Out", "box_PlayDialog_v6_4.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_22();
    l0 = self.box_PlayDialog_v6_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1894500309", "1894500309", "KEY02_020_B10_Dialogs", "box_Simple_Node_18.Out", "box_PlayDialog_v6_22.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_13();
    l0 = self.box_PlayDialog_v6_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|791133906", "791133906", "KEY02_020_B10_Dialogs", "box_Simple_Node_18.Out", "box_PlayDialog_v6_13.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_11_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_ProximityRadiusListener_v3_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|566543944", "566543944", "KEY02_020_B10_Dialogs", "box_ProximityRadiusListener_v3_11.SomeoneNear", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_5_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_5;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1553493064", "1553493064", "KEY02_020_B10_Dialogs", "box_PlayDialog_v6_5.Finished", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_5_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_5;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1209969632", "1209969632", "KEY02_020_B10_Dialogs", "box_PlayDialog_v6_5.FinishedInterrupted", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_23_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_22();
    l0 = self.box_Delay_v5_23;
    l1 = self.box_PlayDialog_v6_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|640515010", "640515010", "KEY02_020_B10_Dialogs", "box_Delay_v5_23.TimeElapsed", "box_PlayDialog_v6_22.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_4_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_4;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|2143919933", "2143919933", "KEY02_020_B10_Dialogs", "box_PlayDialog_v6_4.Finished", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_4_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_4;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|197189003", "197189003", "KEY02_020_B10_Dialogs", "box_PlayDialog_v6_4.FinishedInterrupted", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = self.box_Delay_v5_28;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|810499102", "810499102", "KEY02_020_B10_Dialogs", "box_Delay_v5_28.TimeElapsed", "box_Simple_Node_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_14();
    l0 = self.box_Delay_v5_40;
    l1 = self.box_PlayDialog_v6_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1852222961", "1852222961", "KEY02_020_B10_Dialogs", "box_Delay_v5_40.TimeElapsed", "box_PlayDialog_v6_14.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_7_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_18();
    l0 = self.box_Gate_v3_7;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1970869017", "1970869017", "KEY02_020_B10_Dialogs", "box_Gate_v3_7.Closed", "box_Simple_Node_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_7_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_7;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|581807317", "581807317", "KEY02_020_B10_Dialogs", "box_Gate_v3_7.Opened", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_7_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_7;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|113118560", "113118560", "KEY02_020_B10_Dialogs", "box_Gate_v3_7.Out", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_MultipleOR_29;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|2111217605", "2111217605", "KEY02_020_B10_Dialogs", "box_MultipleOR_29.Out", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_MultipleOR_31;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|883558380", "883558380", "KEY02_020_B10_Dialogs", "box_MultipleOR_31.Out", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_6();
    l0 = self.box_ProximityTrigger_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|113810006", "113810006", "KEY02_020_B10_Dialogs", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_11();
    l0 = self.box_ProximityRadiusListener_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|157069436", "157069436", "KEY02_020_B10_Dialogs", "box_OutputOrder_v2_8.Out", "box_ProximityRadiusListener_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_MultipleOR_32;
    l1 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1035234351", "1035234351", "KEY02_020_B10_Dialogs", "box_MultipleOR_32.Out", "box_Delay_v5_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1991384193", "1991384193", "KEY02_020_B10_Dialogs", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_2();
    l0 = self.box_EntityStatusListener_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1462397610", "1462397610", "KEY02_020_B10_Dialogs", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_MultipleOR_34;
    l1 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|405722030", "405722030", "KEY02_020_B10_Dialogs", "box_MultipleOR_34.Out", "box_Delay_v5_15.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_13_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_13;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|459581975", "459581975", "KEY02_020_B10_Dialogs", "box_PlayDialog_v6_13.Finished", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_13_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_13;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|396531196", "396531196", "KEY02_020_B10_Dialogs", "box_PlayDialog_v6_13.FinishedInterrupted", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_MultipleOR_33;
    l1 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1109067832", "1109067832", "KEY02_020_B10_Dialogs", "box_MultipleOR_33.Out", "box_Delay_v5_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|976756731", "976756731", "KEY02_020_B10_Dialogs", "box_OutputOrder_v2_26.Out", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_7();
    l0 = self.box_Gate_v3_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1925062323", "1925062323", "KEY02_020_B10_Dialogs", "box_OutputOrder_v2_26.Out", "box_Gate_v3_7.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_MultipleOR_30;
    l1 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1638884919", "1638884919", "KEY02_020_B10_Dialogs", "box_MultipleOR_30.Out", "box_Delay_v5_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_19_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_OnceOnly_v3_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1346471908", "1346471908", "KEY02_020_B10_Dialogs", "box_OnceOnly_v3_19.Out", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_39();
    l0 = self.box_SoundModifier_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|102504014", "102504014", "KEY02_020_B10_Dialogs", "box_OutputOrder_v2_41.Out", "box_SoundModifier_v2_39.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|219875116", "219875116", "KEY02_020_B10_Dialogs", "box_OutputOrder_v2_41.Out", "box_Delay_v5_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_13();
    l0 = self.box_Delay_v5_16;
    l1 = self.box_PlayDialog_v6_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1228538722", "1228538722", "KEY02_020_B10_Dialogs", "box_Delay_v5_16.TimeElapsed", "box_PlayDialog_v6_13.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_27_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_27;
    l1 = self.box_OnceOnly_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|832958322", "832958322", "KEY02_020_B10_Dialogs", "box_MultipleOR_27.Out", "box_OnceOnly_v3_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_7();
    l0 = self.box_Gate_v3_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1944778358", "1944778358", "KEY02_020_B10_Dialogs", "box_OutputOrder_v2_38.Out", "box_Gate_v3_7.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_7();
    l0 = self.box_Gate_v3_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1473686742", "1473686742", "KEY02_020_B10_Dialogs", "box_OutputOrder_v2_38.Out", "box_Gate_v3_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_36();
    l0 = self.box_PlayDialog_v6_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|826487015", "826487015", "KEY02_020_B10_Dialogs", "box_OutputOrder_v2_12.Out", "box_PlayDialog_v6_36.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1783377169", "1783377169", "KEY02_020_B10_Dialogs", "box_OutputOrder_v2_12.Out", "box_Delay_v5_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_4();
    l0 = self.box_Delay_v5_17;
    l1 = self.box_PlayDialog_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1235006778", "1235006778", "KEY02_020_B10_Dialogs", "box_Delay_v5_17.TimeElapsed", "box_PlayDialog_v6_4.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_MultipleOR_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|179134079", "179134079", "KEY02_020_B10_Dialogs", "box_MultipleOR_25.Out", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_14_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_14;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1355065478", "1355065478", "KEY02_020_B10_Dialogs", "box_PlayDialog_v6_14.Finished", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_14_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_14;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|236881862", "236881862", "KEY02_020_B10_Dialogs", "box_PlayDialog_v6_14.FinishedInterrupted", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_35();
    l0 = self.box_Delay_v5_37;
    l1 = self.box_PlayDialog_v6_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|237801650", "237801650", "KEY02_020_B10_Dialogs", "box_Delay_v5_37.TimeElapsed", "box_PlayDialog_v6_35.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_1;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|629734376", "629734376", "KEY02_020_B10_Dialogs", "box_EntityStatusListener_1.Loaded", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_22_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_22;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1105276481", "1105276481", "KEY02_020_B10_Dialogs", "box_PlayDialog_v6_22.Finished", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_22_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_22;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1878817470", "1878817470", "KEY02_020_B10_Dialogs", "box_PlayDialog_v6_22.FinishedInterrupted", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_Delay_v5_9;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1299452472", "1299452472", "KEY02_020_B10_Dialogs", "box_Delay_v5_9.TimeElapsed", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_6_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_ProximityTrigger_v2_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1061738054", "1061738054", "KEY02_020_B10_Dialogs", "box_ProximityTrigger_v2_6.Enter", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_2_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_2;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1990273185", "1990273185", "KEY02_020_B10_Dialogs", "box_EntityStatusListener_2.Loaded", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_24_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|2048706193", "2048706193", "KEY02_020_B10_Dialogs", "box_GetPlayerGroup_v2_24.Out", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_5();
    l0 = self.box_Delay_v5_15;
    l1 = self.box_PlayDialog_v6_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1412433248", "1412433248", "KEY02_020_B10_Dialogs", "box_Delay_v5_15.TimeElapsed", "box_PlayDialog_v6_5.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_10_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_10;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|144373176", "144373176", "KEY02_020_B10_Dialogs", "box_PlayDialog_v6_10.Finished", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_10_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_10;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1342128971", "1342128971", "KEY02_020_B10_Dialogs", "box_PlayDialog_v6_10.FinishedInterrupted", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|@n_RDialogRepeat1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_20_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|@n_StopDialogs");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_11()
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

function export:OnEnter_box_PlayDialog_v6_5()
    local params;
    DrawTextToScreen("Comment: Oh God. Oh God! Get ready!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Oh God. Oh God! Get ready!");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_brave,
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3917027400",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_23()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_4()
    local params;
    DrawTextToScreen("Comment: Dig deep! We can do this!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Dig deep! We can do this!");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_brave,
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3921944883",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_7()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|487967366");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|565752151");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_13()
    local params;
    DrawTextToScreen("Comment: Whatever it takes! Don't let that thing through!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Whatever it takes! Don't let that thing through!");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_brave,
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1866618548",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|784342437");
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

function export:OnEnter_box_PlayDialog_v6_35()
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

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|945503864");
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

function export:OnEnter_box_PlayDialog_v6_36()
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

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1174250430");
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

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1346039161");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_14()
    local params;
    DrawTextToScreen("Comment: Shit shit shit! You hear that!? It's comin'!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Shit shit shit! You hear that!? It's comin'!");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_coward,
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2772405867",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_1()
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

function export:OnEnter_box_PlayDialog_v6_22()
    local params;
    DrawTextToScreen("Comment: There's no stopping that thing! What do we do!?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: There's no stopping that thing! What do we do!?");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_coward,
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1747252444",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_6()
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

function export:OnEnter_box_EntityStatusListener_2()
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

function export:OnEnter_box_SoundModifier_v2_39()
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

function export:OnEnter_box_GetPlayerGroup_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@KEY02_020_B10_Dialogs|1951960984");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_24_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    DrawTextToScreen("Comment: We need to run god damnit!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: We need to run god damnit!");
    params = {
        -- Group,
        [0] = self.e_roadblockdude_coward,
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2275424505",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_24_Out()
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
