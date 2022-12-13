LUAC%p  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_420/mis_420_b10.domino
-- User graph: GamblingDialog
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
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2280422656.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2316904617.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2913324644.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1383720414.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2188957950.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1498140444.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1612420602.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1216536399.bnk]], "CSoundResource");
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_420/MIS_420_B10.GamblingDialog.debug.lua")] = {
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
    self._name = "GamblingDialog";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog";
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|215273046");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_PlayDialog_v6_14 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|418040694");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_14_Finished,
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|475845067");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|478433467");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|679656850");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_11_Finished,
    });
    self.box_PlayDialog_v6_7 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|810706722");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_7_Finished,
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|914317999");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1123313909");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_1_Finished,
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1207730395");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1276865983");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_PlayDialog_v6_6 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1502029739");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_6_Finished,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1573509680");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1756101337");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_9_Finished,
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1819322937");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_5 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|2135826109");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_5_Finished,
    });
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_7();
    l0 = self.box_PlayDialog_v6_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|77732104", "77732104", "GamblingDialog", "Start", "box_PlayDialog_v6_7.PlayDialog", self, l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:Stop()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1886532097", "1886532097", "GamblingDialog", "Stop", "box_Delay_v5_13.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1092951090", "1092951090", "GamblingDialog", "Stop", "box_PlayDialog_v6_9.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|825661717", "825661717", "GamblingDialog", "Stop", "box_PlayDialog_v6_11.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_5();
    l0 = self.box_PlayDialog_v6_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|682379615", "682379615", "GamblingDialog", "Stop", "box_PlayDialog_v6_5.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1786032669", "1786032669", "GamblingDialog", "Stop", "box_PlayDialog_v6_1.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_14();
    l0 = self.box_PlayDialog_v6_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1463311161", "1463311161", "GamblingDialog", "Stop", "box_PlayDialog_v6_14.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1305847193", "1305847193", "GamblingDialog", "Stop", "box_Delay_v5_3.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1428192722", "1428192722", "GamblingDialog", "Stop", "box_Delay_v5_15.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|2146730537", "2146730537", "GamblingDialog", "Stop", "box_Delay_v5_12.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_PlayDialog_v6_7();
    l0 = self.box_PlayDialog_v6_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1628113937", "1628113937", "GamblingDialog", "Stop", "box_PlayDialog_v6_7.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1525666116", "1525666116", "GamblingDialog", "Stop", "box_PlayDialog_v6_6.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|2099260087", "2099260087", "GamblingDialog", "Stop", "box_Delay_v5_8.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1323925845", "1323925845", "GamblingDialog", "Stop", "box_Delay_v5_4.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|156710858", "156710858", "GamblingDialog", "Stop", "box_PlayDialog_v6_10.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1603735342", "1603735342", "GamblingDialog", "Stop", "box_Delay_v5_2.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_Delay_v5_12;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|52316967", "52316967", "GamblingDialog", "box_Delay_v5_12.TimeElapsed", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_14_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_PlayDialog_v6_14;
    l1 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1766424400", "1766424400", "GamblingDialog", "box_PlayDialog_v6_14.Finished", "box_Delay_v5_15.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_Delay_v5_15;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1697506350", "1697506350", "GamblingDialog", "box_Delay_v5_15.TimeElapsed", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_14();
    l0 = self.box_Delay_v5_2;
    l1 = self.box_PlayDialog_v6_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|44600805", "44600805", "GamblingDialog", "box_Delay_v5_2.TimeElapsed", "box_PlayDialog_v6_14.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_11_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_PlayDialog_v6_11;
    l1 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|628034642", "628034642", "GamblingDialog", "box_PlayDialog_v6_11.Finished", "box_Delay_v5_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_7_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_PlayDialog_v6_7;
    l1 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|675214062", "675214062", "GamblingDialog", "box_PlayDialog_v6_7.Finished", "box_Delay_v5_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_Delay_v5_3;
    l1 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1699724881", "1699724881", "GamblingDialog", "box_Delay_v5_3.TimeElapsed", "box_PlayDialog_v6_1.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_1_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_PlayDialog_v6_1;
    l1 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|2072370960", "2072370960", "GamblingDialog", "box_PlayDialog_v6_1.Finished", "box_Delay_v5_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_5();
    l0 = self.box_Delay_v5_4;
    l1 = self.box_PlayDialog_v6_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1375507656", "1375507656", "GamblingDialog", "box_Delay_v5_4.TimeElapsed", "box_PlayDialog_v6_5.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_Delay_v5_13;
    l1 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1252084418", "1252084418", "GamblingDialog", "box_Delay_v5_13.TimeElapsed", "box_PlayDialog_v6_11.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_6_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_PlayDialog_v6_6;
    l1 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|2021883549", "2021883549", "GamblingDialog", "box_PlayDialog_v6_6.Finished", "box_Delay_v5_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_Delay_v5_8;
    l1 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|899250140", "899250140", "GamblingDialog", "box_Delay_v5_8.TimeElapsed", "box_PlayDialog_v6_6.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_9_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|2003665890", "2003665890", "GamblingDialog", "box_PlayDialog_v6_9.Finished", "box_Delay_v5_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_5_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_PlayDialog_v6_5;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_B10.domino|@GamblingDialog|1325012690", "1325012690", "GamblingDialog", "box_PlayDialog_v6_5.Finished", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_14()
    local params;
    params = {
        -- Group,
        [0] = "2107631880011515692",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2188957950",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = "2107631891017369499",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1216536399",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_7()
    local params;
    params = {
        -- Group,
        [0] = "2107631893313750967",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2316904617",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    params = {
        -- Group,
        [0] = "2109083639143752481",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1498140444",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_6()
    local params;
    params = {
        -- Group,
        [0] = "2109083639143752481",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1383720414",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    params = {
        -- Group,
        [0] = "2107631893313750967",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1612420602",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    params = {
        -- Group,
        [0] = "2109083639143752481",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2913324644",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_5()
    local params;
    params = {
        -- Group,
        [0] = "2107631891017369499",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2280422656",
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
	<DatasIn />
	<DatasOut />
</DominoMetadata>
