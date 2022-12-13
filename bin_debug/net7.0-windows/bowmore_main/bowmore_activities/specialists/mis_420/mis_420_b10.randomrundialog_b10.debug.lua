LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_420/mis_420_b10.domino
-- User graph: RandomRunDialog_B10
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="g_player" Type="Nomad|group" />
    <DataIn Name="NakedGuy" Type="Nomad|entity{}" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3155136246.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2694716377.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3384058497.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3674750002.bnk]], "CSoundResource");
        cboxRes:LoadResource([[171487148.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4279254985.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2660272910.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1155862257.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3895310.bnk]], "CSoundResource");
        cboxRes:LoadResource([[131350782.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3756739440.bnk]], "CSoundResource");
        cboxRes:LoadResource([[10636912.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3242309161.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2261791879.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_420_B10 = nil;
    Globals.MIS_420_B10 = {
        NakedGuy = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_420/MIS_420_B10.RandomRunDialog_B10.debug.lua")] = {
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
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "g_player",
                type = "group",
            },
            [1] = {
                name = "NakedGuy",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "RandomRunDialog_B10";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10";
    self.box_PlayDialog_v6_18 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|120109744");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|306323284");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|525995621");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|583153613");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_20 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|616587699");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_13 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|625464312");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_22 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|634233013");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_8 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|668862149");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_8_AllFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_8_SomeoneNear,
    });
    self.box_PlayDialog_v6_17 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|788828462");
    l0:SetConnections({
    });
    self.box_Gate_v3_6 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|809746271");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_6_Out,
    });
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|917770668");
    l0:SetConnections({
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|928397082");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_Random_5 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|963231840");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 14,
        },
        dataIn = {
            [1] = 14,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_5_Output_0,
                [1] = self.f_box_Random_5_Output_1,
                [2] = self.f_box_Random_5_Output_2,
                [3] = self.f_box_Random_5_Output_3,
                [4] = self.f_box_Random_5_Output_4,
                [5] = self.f_box_Random_5_Output_5,
                [6] = self.f_box_Random_5_Output_6,
                [7] = self.f_box_Random_5_Output_7,
                [8] = self.f_box_Random_5_Output_8,
                [9] = self.f_box_Random_5_Output_9,
                [10] = self.f_box_Random_5_Output_10,
                [11] = self.f_box_Random_5_Output_11,
                [12] = self.f_box_Random_5_Output_12,
                [13] = self.f_box_Random_5_Output_13,
            },
            count = 14,
        },
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1090898561");
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
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1276603028");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_19 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1445480425");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_21 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1709425591");
    l0:SetConnections({
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1863465706");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|2120152053");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_15 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|2131077083");
    l0:SetConnections({
    });
end;

function export:Start()
    local l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|335626256", "335626256", "RandomRunDialog_B10", "Start", "box_MultipleOR_3.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:Stop()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1540250937", "1540250937", "RandomRunDialog_B10", "Stop", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1584155471", "1584155471", "RandomRunDialog_B10", "box_OutputOrder_v2_4.Out", "box_Delay_v5_12.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1442847793", "1442847793", "RandomRunDialog_B10", "box_OutputOrder_v2_4.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_8();
    l0 = self.box_ProximityRadiusListener_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|2118447459", "2118447459", "RandomRunDialog_B10", "box_OutputOrder_v2_4.Out", "box_ProximityRadiusListener_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_5();
    l0 = self.box_Random_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1631640910", "1631640910", "RandomRunDialog_B10", "box_OutputOrder_v2_14.Out", "box_Random_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|802842922", "802842922", "RandomRunDialog_B10", "box_OutputOrder_v2_14.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_8_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_8;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1721851860", "1721851860", "RandomRunDialog_B10", "box_ProximityRadiusListener_v3_8.AllFar", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_8_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_6();
    l0 = self.box_ProximityRadiusListener_v3_8;
    l1 = self.box_Gate_v3_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|2069986022", "2069986022", "RandomRunDialog_B10", "box_ProximityRadiusListener_v3_8.SomeoneNear", "box_Gate_v3_6.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_Gate_v3_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|807542132", "807542132", "RandomRunDialog_B10", "box_Gate_v3_6.Out", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_6();
    l0 = self.box_Delay_v5_12;
    l1 = self.box_Gate_v3_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|546814284", "546814284", "RandomRunDialog_B10", "box_Delay_v5_12.TimeElapsed", "box_Gate_v3_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_13();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|200966814", "200966814", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_13.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1102375456", "1102375456", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_11.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1783705824", "1783705824", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|171206628", "171206628", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|810238988", "810238988", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_2.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1011698317", "1011698317", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_1.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1768607973", "1768607973", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_16.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_15();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|302763422", "302763422", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_15.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_19();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1710317917", "1710317917", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_19.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_17();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1300487857", "1300487857", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_17.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_18();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1670847928", "1670847928", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_18.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_11()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_20();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1498018673", "1498018673", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_20.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_12()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_21();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|1947773486", "1947773486", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_21.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_5_Output_13()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_22();
    l0 = self.box_Random_5;
    l1 = self.box_PlayDialog_v6_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|273384382", "273384382", "RandomRunDialog_B10", "box_Random_5.Output", "box_PlayDialog_v6_22.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_MultipleOR_3;
    l1 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|2020302656", "2020302656", "RandomRunDialog_B10", "box_MultipleOR_3.Out", "box_Delay_v5_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_6();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_Gate_v3_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|66269045", "66269045", "RandomRunDialog_B10", "box_MultipleOR_7.Out", "box_Gate_v3_6.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|18231602");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_18()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "131350782",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "10636912",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@RandomRunDialog_B10|384600884");
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

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2261791879",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3242309161",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_20()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2660272910",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_13()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3155136246",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_22()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2694716377",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_8()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.g_player,
        -- id2,
        [3] = self.NakedGuy,
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_17()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3756739440",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_6()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1155862257",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Random_5()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 14,
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "171487148",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_19()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3895310",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_21()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4279254985",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3674750002",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_15()
    local params;
    params = {
        -- Group,
        [0] = self.NakedGuy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3384058497",
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="g_player" AnchorDynType="0" DataTypeID="group" />
		<DataIn Name="NakedGuy" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
