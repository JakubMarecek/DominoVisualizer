LUACn�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_580/omni_mis_580_b10.domino
-- User graph: Hurk_walk_and_talk
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2072380106.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3607367233.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3543164208.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2762275317.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1439756979.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.OMNI_MIS_580_B10 = nil;
    Globals.OMNI_MIS_580_B10 = {
        eBLOGALCarB10 = nil,
        eBLOGALHurkB10 = nil,
        bReload = false,
        bComeOnMan = false,
        eTest = nil,
        ePlayer2CarID = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Hurk_walk_and_talk.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Hurk_Start_Talking",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Hurk_done_Talking",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Hurk_walk_and_talk";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk";
    self.Hurk_done_Talking = DummyFunction;
    self.bShutUpHurk = false;
    self.box_OnceOnly_v3_16 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|258459459");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_16_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_4 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|340072148");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_4_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_4_FinishedInterrupted,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_4_Started,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_4_StartedPriorityFailed,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_4_Stopped,
    });
    self.box_PlayDialog_v6_6 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|358594157");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_6_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_6_FinishedInterrupted,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_6_Started,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_6_StartedPriorityFailed,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_6_Stopped,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|726288001");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_OnceOnly_v3_17 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|784975572");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_17_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|840639793");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|992307071");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_OnceOnly_v3_18 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|997782594");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_18_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1000738308");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_9_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_9_FinishedInterrupted,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_9_Started,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_9_StartedPriorityFailed,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_9_Stopped,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1329152981");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1419983390");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1473580027");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_PlayDialog_v6_5 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1489037835");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_5_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_5_FinishedInterrupted,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_5_Started,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_5_StartedPriorityFailed,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1576202585");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1655401602");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1674255857");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_2_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_2_FinishedInterrupted,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_2_Started,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_2_StartedPriorityFailed,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_2_Stopped,
    });
    self.box_OnceOnly_v3_15 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1686456987");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_15_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1692000233");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_OnceOnly_v3_19 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2046949619");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
            count = 1,
        },
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2138704502");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
end;

function export:Hurk_Start_Talking()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_4();
    l0 = self.box_PlayDialog_v6_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|737947720", "737947720", "Hurk_walk_and_talk", "Hurk_Start_Talking", "box_PlayDialog_v6_4.PlayDialog", self, l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_1_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2037112979", "2037112979", "Hurk_walk_and_talk", "box_Compare_Boolean_1.A_is_False", "box_OnceOnly_v3_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_12_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1589345335", "1589345335", "Hurk_walk_and_talk", "box_Compare_Boolean_12.A_is_False", "box_OnceOnly_v3_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_16_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_5();
    l0 = self.box_OnceOnly_v3_16;
    l1 = self.box_PlayDialog_v6_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1345240839", "1345240839", "Hurk_walk_and_talk", "box_OnceOnly_v3_16.Out", "box_PlayDialog_v6_5.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_4_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_4;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|805684778", "805684778", "Hurk_walk_and_talk", "box_PlayDialog_v6_4.Finished", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_4_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_4;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1583741323", "1583741323", "Hurk_walk_and_talk", "box_PlayDialog_v6_4.FinishedInterrupted", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_PlayDialog_v6_4;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|574868015", "574868015", "Hurk_walk_and_talk", "box_PlayDialog_v6_4.Started", "box_Delay_v5_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_4_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_4;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2089778405", "2089778405", "Hurk_walk_and_talk", "box_PlayDialog_v6_4.StartedPriorityFailed", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_4_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_PlayDialog_v6_4;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|764928529", "764928529", "Hurk_walk_and_talk", "box_PlayDialog_v6_4.Stopped", "box_PlayDialog_v6_9.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_6_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_6;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2035393782", "2035393782", "Hurk_walk_and_talk", "box_PlayDialog_v6_6.Finished", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_6_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_6;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|437915329", "437915329", "Hurk_walk_and_talk", "box_PlayDialog_v6_6.FinishedInterrupted", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_6_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_PlayDialog_v6_6;
    l1 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|402597094", "402597094", "Hurk_walk_and_talk", "box_PlayDialog_v6_6.Started", "box_Delay_v5_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_6_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_6;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|648429899", "648429899", "Hurk_walk_and_talk", "box_PlayDialog_v6_6.StartedPriorityFailed", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_6_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_5();
    l0 = self.box_PlayDialog_v6_6;
    l1 = self.box_PlayDialog_v6_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2119920433", "2119920433", "Hurk_walk_and_talk", "box_PlayDialog_v6_6.Stopped", "box_PlayDialog_v6_5.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_10_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_10;
    l1 = self.box_OnceOnly_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2100819468", "2100819468", "Hurk_walk_and_talk", "box_MultipleOR_10.Out", "box_OnceOnly_v3_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_17_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_OnceOnly_v3_17;
    l1 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2009878924", "2009878924", "Hurk_walk_and_talk", "box_OnceOnly_v3_17.Out", "box_PlayDialog_v6_6.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_26;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|704433563", "704433563", "Hurk_walk_and_talk", "box_Delay_v5_26.TimeElapsed", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_7();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|342413419", "342413419", "Hurk_walk_and_talk", "box_MultipleOR_14.Out", "box_Compare_Boolean_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_18_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_OnceOnly_v3_18;
    l1 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|343035517", "343035517", "Hurk_walk_and_talk", "box_OnceOnly_v3_18.Out", "box_PlayDialog_v6_2.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_9_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1422721305", "1422721305", "Hurk_walk_and_talk", "box_PlayDialog_v6_9.Finished", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_9_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1160842614", "1160842614", "Hurk_walk_and_talk", "box_PlayDialog_v6_9.FinishedInterrupted", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_9_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|442444295", "442444295", "Hurk_walk_and_talk", "box_PlayDialog_v6_9.Started", "box_Delay_v5_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_9_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1991198293", "1991198293", "Hurk_walk_and_talk", "box_PlayDialog_v6_9.StartedPriorityFailed", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_9_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1976866353", "1976866353", "Hurk_walk_and_talk", "box_PlayDialog_v6_9.Stopped", "box_PlayDialog_v6_2.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_28;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1875571354", "1875571354", "Hurk_walk_and_talk", "box_Delay_v5_28.TimeElapsed", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_24;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1304938623", "1304938623", "Hurk_walk_and_talk", "box_Delay_v5_24.TimeElapsed", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_3_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1763642201", "1763642201", "Hurk_walk_and_talk", "box_Compare_Boolean_3.A_is_False", "box_OnceOnly_v3_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_22;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2059581957", "2059581957", "Hurk_walk_and_talk", "box_Delay_v5_22.TimeElapsed", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_5_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_5;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|946253942", "946253942", "Hurk_walk_and_talk", "box_PlayDialog_v6_5.Finished", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_5_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_5;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|168803194", "168803194", "Hurk_walk_and_talk", "box_PlayDialog_v6_5.FinishedInterrupted", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_5_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_PlayDialog_v6_5;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1223908157", "1223908157", "Hurk_walk_and_talk", "box_PlayDialog_v6_5.Started", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_5_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_5;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|810349424", "810349424", "Hurk_walk_and_talk", "box_PlayDialog_v6_5.StartedPriorityFailed", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_7_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2132053879", "2132053879", "Hurk_walk_and_talk", "box_Compare_Boolean_7.A_is_False", "box_OnceOnly_v3_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_20;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2029606058", "2029606058", "Hurk_walk_and_talk", "box_Delay_v5_20.TimeElapsed", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_1();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1462818588", "1462818588", "Hurk_walk_and_talk", "box_MultipleOR_11.Out", "box_Compare_Boolean_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_2_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|724421832", "724421832", "Hurk_walk_and_talk", "box_PlayDialog_v6_2.Finished", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_2_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2131976327", "2131976327", "Hurk_walk_and_talk", "box_PlayDialog_v6_2.FinishedInterrupted", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_2_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1307329022", "1307329022", "Hurk_walk_and_talk", "box_PlayDialog_v6_2.Started", "box_Delay_v5_24.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_2_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|2002994629", "2002994629", "Hurk_walk_and_talk", "box_PlayDialog_v6_2.StartedPriorityFailed", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_2_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|246504292", "246504292", "Hurk_walk_and_talk", "box_PlayDialog_v6_2.Stopped", "box_PlayDialog_v6_6.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_15_Out_0()
    local l0;
    l0 = self.box_OnceOnly_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1452624311", "1452624311", "Hurk_walk_and_talk", "box_OnceOnly_v3_15.Out", "Hurk_done_Talking", l0:GetLuaBox(), self);
    self:Hurk_done_Talking();
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_12();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|941167912", "941167912", "Hurk_walk_and_talk", "box_MultipleOR_8.Out", "box_Compare_Boolean_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_19_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_OnceOnly_v3_19;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|97592245", "97592245", "Hurk_walk_and_talk", "box_OnceOnly_v3_19.Out", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_3();
    l0 = self.box_MultipleOR_13;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1956344179", "1956344179", "Hurk_walk_and_talk", "box_MultipleOR_13.Out", "box_Compare_Boolean_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Compare_Boolean_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|131328536");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_1_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bShutUpHurk,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|238209988");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_12_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bShutUpHurk,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_4()
    local params;
    DrawTextToScreen("Comment: I really appreciate the help, homie. You,re gonna love driving this ca, man. It hauls major ass. All fast and furious and what not", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: I really appreciate the help, homie. You,re gonna love driving this ca, man. It hauls major ass. All fast and furious and what not");
    params = {
        -- Group,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3543164208",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_6()
    local params;
    DrawTextToScreen("Comment: Jokes on them though, because they'll never look as sexy as me... and I booby trapped it", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Jokes on them though, because they'll never look as sexy as me... and I booby trapped it");
    params = {
        -- Group,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1439756979",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 9.5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    DrawTextToScreen("Comment: I aint kidding you niethger. its the gastest car in the west. not even the highwaymen can catch it", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: I aint kidding you niethger. its the gastest car in the west. not even the highwaymen can catch it");
    params = {
        -- Group,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3607367233",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 9,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1427395319");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_3_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bShutUpHurk,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 18,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_5()
    local params;
    DrawTextToScreen("Comment: Which is why they brought it here, to disable the trap, but I got to them first.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Which is why they brought it here, to disable the trap, but I got to them first.");
    params = {
        -- Group,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2762275317",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Hurk_walk_and_talk|1502596902");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_7_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bShutUpHurk,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 11,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    DrawTextToScreen("Comment: thats probably why they stole it. All jealous of how fast it goes. And how sexy I look when I drive it. So petty", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: thats probably why they stole it. All jealous of how fast it goes. And how sexy I look when I drive it. So petty");
    params = {
        -- Group,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2072380106",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Hurk_done_Talking()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Hurk_Start_Talking" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Hurk_done_Talking" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
