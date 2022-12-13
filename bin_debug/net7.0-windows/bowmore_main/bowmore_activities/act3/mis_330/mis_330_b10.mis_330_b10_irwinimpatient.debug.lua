LUAC�o  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_330/mis_330_b10.domino
-- User graph: MIS_330_B10_IrwinImpatient
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
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        
        -- Load resources
        cboxRes:LoadResource([[262574959.bnk]], "CSoundResource");
        cboxRes:LoadResource([[332303786.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3627402813.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_B10_IrwinImpatient.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "genericdb",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
            [0] = {
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Switch.lua")] = {
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
        },
        dataInCount = 1,
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
    self._name = "MIS_330_B10_IrwinImpatient";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient";
    self.Out = DummyFunction;
    self.eQuestGiver = nil;
    self.box_PlayDialog_v6_8 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|43593617");
    l0:SetConnections({
    });
    self.box_Gate_v3_12 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|99051519");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_12_Out,
    });
    self.box_PlayDialog_v6_5 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|335663531");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_5_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_5_FinishedInterrupted,
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|509961646");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|692672535");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|981001268");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_1_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_1_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_6 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1030423995");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_6_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_6_FinishedInterrupted,
    });
    self.box_CharacterLoadedIdListener_v2_7 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1235552710");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_7_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_7_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_7_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_7_LoadedIdReceived,
    });
    self.box_Switch_3 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1756778048");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_3_Output_0,
                [1] = self.f_box_Switch_3_Output_1,
                [2] = self.f_box_Switch_3_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1836418455");
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
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1078839648", "1078839648", "MIS_330_B10_IrwinImpatient", "Disable", "box_PlayDialog_v6_8.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|978301444", "978301444", "MIS_330_B10_IrwinImpatient", "Disable", "box_Delay_v5_2.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|2029287513", "2029287513", "MIS_330_B10_IrwinImpatient", "Disable", "box_Gate_v3_12.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_7();
    l0 = self.box_CharacterLoadedIdListener_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|486673485", "486673485", "MIS_330_B10_IrwinImpatient", "In", "box_CharacterLoadedIdListener_v2_7.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_12_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_12;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1801922893", "1801922893", "MIS_330_B10_IrwinImpatient", "box_Gate_v3_12.Out", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_5_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_5;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|521817691", "521817691", "MIS_330_B10_IrwinImpatient", "box_PlayDialog_v6_5.Finished", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_5_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_5;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|44035372", "44035372", "MIS_330_B10_IrwinImpatient", "box_PlayDialog_v6_5.FinishedInterrupted", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_3();
    l0 = self.box_Delay_v5_2;
    l1 = self.box_Switch_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|2094136186", "2094136186", "MIS_330_B10_IrwinImpatient", "box_Delay_v5_2.TimeElapsed", "box_Switch_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_MultipleOR_10;
    l1 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|469243477", "469243477", "MIS_330_B10_IrwinImpatient", "box_MultipleOR_10.Out", "box_Gate_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_1_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_1;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|575756197", "575756197", "MIS_330_B10_IrwinImpatient", "box_PlayDialog_v6_1.Finished", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_1_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_1;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1631938801", "1631938801", "MIS_330_B10_IrwinImpatient", "box_PlayDialog_v6_1.FinishedInterrupted", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_6_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_6;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1208263101", "1208263101", "MIS_330_B10_IrwinImpatient", "box_PlayDialog_v6_6.Finished", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PlayDialog_v6_6_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_6;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|2070083018", "2070083018", "MIS_330_B10_IrwinImpatient", "box_PlayDialog_v6_6.FinishedInterrupted", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_RandomFloat_v2_9_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1939282264", "1939282264", "MIS_330_B10_IrwinImpatient", "box_RandomFloat_v2_9.Out", "box_Delay_v5_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_7_Enabled()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1050773366", "1050773366", "MIS_330_B10_IrwinImpatient", "box_CharacterLoadedIdListener_v2_7.Enabled", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_CharacterLoadedIdListener_v2_7_LoadedIdReceived()
    local l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_7_LoadedIdReceived();
    l0 = self.box_CharacterLoadedIdListener_v2_7;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1293911514", "1293911514", "MIS_330_B10_IrwinImpatient", "box_CharacterLoadedIdListener_v2_7.LoadedIdReceived", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_3_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_5();
    l0 = self.box_Switch_3;
    l1 = self.box_PlayDialog_v6_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|944376974", "944376974", "MIS_330_B10_IrwinImpatient", "box_Switch_3.Output", "box_PlayDialog_v6_5.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_3_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_Switch_3;
    l1 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1356610191", "1356610191", "MIS_330_B10_IrwinImpatient", "box_Switch_3.Output", "box_PlayDialog_v6_1.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_3_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_Switch_3;
    l1 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1590897631", "1590897631", "MIS_330_B10_IrwinImpatient", "box_Switch_3.Output", "box_PlayDialog_v6_6.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_9();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1970038488", "1970038488", "MIS_330_B10_IrwinImpatient", "box_MultipleOR_11.Out", "box_RandomFloat_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_PlayDialog_v6_8()
    local params;
    params = {
        -- Group,
        [0] = self.eQuestGiver,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_12()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_5()
    local params;
    params = {
        -- Group,
        [0] = self.eQuestGiver,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "332303786",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    params = {
        -- Group,
        [0] = self.eQuestGiver,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3627402813",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_6()
    local params;
    params = {
        -- Group,
        [0] = self.eQuestGiver,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "262574959",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_IrwinImpatient|1128374819");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_9_Out,
    });
    params = {
        -- Max,
        [0] = 11,
        -- Min,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870438634",
    };
    return params;
end;

function export:OnEnter_box_Switch_3()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_9_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_2;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_7_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_7;
    self.eQuestGiver = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
