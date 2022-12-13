LUAC:�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b50.domino
-- User graph: Cultist_dialogs_during_first_wave
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
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1066461101.bnk]], "CSoundResource");
        cboxRes:LoadResource([[995324219.bnk]], "CSoundResource");
        cboxRes:LoadResource([[821829532.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3518427574.bnk]], "CSoundResource");
        cboxRes:LoadResource([[971402289.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1909596356.bnk]], "CSoundResource");
        cboxRes:LoadResource([[750089744.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2302596900.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4141766217.bnk]], "CSoundResource");
        cboxRes:LoadResource([[677880250.bnk]], "CSoundResource");
        cboxRes:LoadResource([[345564453.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.INTRO_010_B50 = nil;
    Globals.INTRO_010_B50 = {
        TutorialPlayed = false,
        player = nil,
        Players = nil,
        bReloaded = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B50.Cultist_dialogs_during_first_wave.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
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
    self._name = "Cultist_dialogs_during_first_wave";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave";
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|183179651");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_1_Started,
    });
    self.box_Switch_5 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|389343397");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 11,
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
                [0] = self.f_box_Switch_5_Output_0,
                [1] = self.f_box_Switch_5_Output_1,
                [2] = self.f_box_Switch_5_Output_2,
                [3] = self.f_box_Switch_5_Output_3,
                [4] = self.f_box_Switch_5_Output_4,
                [5] = self.f_box_Switch_5_Output_5,
                [6] = self.f_box_Switch_5_Output_6,
                [7] = self.f_box_Switch_5_Output_7,
                [8] = self.f_box_Switch_5_Output_8,
                [9] = self.f_box_Switch_5_Output_9,
                [10] = self.f_box_Switch_5_Output_10,
            },
            count = 11,
        },
    });
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|423067480");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_16_Started,
    });
    self.box_PlayDialog_v6_17 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|451059991");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_17_Started,
    });
    self.box_PlayDialog_v6_3 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|537252448");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_3_Started,
    });
    self.box_PlayDialog_v6_15 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|650392472");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_15_Started,
    });
    self.box_PlayDialog_v6_12 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|808900686");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_12_Started,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1060101395");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 12,
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
    self.box_PlayDialog_v6_7 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1202770127");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_7_Started,
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1340656612");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_9_Started,
    });
    self.box_PlayDialog_v6_13 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1498076898");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_13_Started,
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1521251928");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_11_Started,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1539017801");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1913609513");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_10_Started,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetActivityFact_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|922201721", "922201721", "Cultist_dialogs_during_first_wave", "In", "box_GetActivityFact_2.GetFact", self, l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_1_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_1;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1040507645", "1040507645", "Cultist_dialogs_during_first_wave", "box_PlayDialog_v6_1.Started", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_GetActivityFact_6_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|239071621", "239071621", "Cultist_dialogs_during_first_wave", "box_GetActivityFact_6.FactNotSet", "box_GetActivityFact_4.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_5_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_7();
    l0 = self.box_Switch_5;
    l1 = self.box_PlayDialog_v6_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1620946006", "1620946006", "Cultist_dialogs_during_first_wave", "box_Switch_5.Output", "box_PlayDialog_v6_7.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_5_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_13();
    l0 = self.box_Switch_5;
    l1 = self.box_PlayDialog_v6_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|873092205", "873092205", "Cultist_dialogs_during_first_wave", "box_Switch_5.Output", "box_PlayDialog_v6_13.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_5_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_3();
    l0 = self.box_Switch_5;
    l1 = self.box_PlayDialog_v6_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|346345544", "346345544", "Cultist_dialogs_during_first_wave", "box_Switch_5.Output", "box_PlayDialog_v6_3.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_5_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_17();
    l0 = self.box_Switch_5;
    l1 = self.box_PlayDialog_v6_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1111493254", "1111493254", "Cultist_dialogs_during_first_wave", "box_Switch_5.Output", "box_PlayDialog_v6_17.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_5_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_Switch_5;
    l1 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|174508872", "174508872", "Cultist_dialogs_during_first_wave", "box_Switch_5.Output", "box_PlayDialog_v6_1.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_5_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_Switch_5;
    l1 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1655150464", "1655150464", "Cultist_dialogs_during_first_wave", "box_Switch_5.Output", "box_PlayDialog_v6_11.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_5_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_Switch_5;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1715766662", "1715766662", "Cultist_dialogs_during_first_wave", "box_Switch_5.Output", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_5_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_Switch_5;
    l1 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|13742371", "13742371", "Cultist_dialogs_during_first_wave", "box_Switch_5.Output", "box_PlayDialog_v6_16.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_5_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_Switch_5;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|224641249", "224641249", "Cultist_dialogs_during_first_wave", "box_Switch_5.Output", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_5_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_12();
    l0 = self.box_Switch_5;
    l1 = self.box_PlayDialog_v6_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|566565992", "566565992", "Cultist_dialogs_during_first_wave", "box_Switch_5.Output", "box_PlayDialog_v6_12.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_5_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_15();
    l0 = self.box_Switch_5;
    l1 = self.box_PlayDialog_v6_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|2136146773", "2136146773", "Cultist_dialogs_during_first_wave", "box_Switch_5.Output", "box_PlayDialog_v6_15.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_16_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_16;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|107008165", "107008165", "Cultist_dialogs_during_first_wave", "box_PlayDialog_v6_16.Started", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_PlayDialog_v6_17_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_17;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1598590038", "1598590038", "Cultist_dialogs_during_first_wave", "box_PlayDialog_v6_17.Started", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityFact_2_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|847315001", "847315001", "Cultist_dialogs_during_first_wave", "box_GetActivityFact_2.FactNotSet", "box_GetActivityFact_6.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_3_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_3;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1419618662", "1419618662", "Cultist_dialogs_during_first_wave", "box_PlayDialog_v6_3.Started", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_15_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_15;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1496716024", "1496716024", "Cultist_dialogs_during_first_wave", "box_PlayDialog_v6_15.Started", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 11);
end;

function export:f_box_PlayDialog_v6_12_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1518999201", "1518999201", "Cultist_dialogs_during_first_wave", "box_PlayDialog_v6_12.Started", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|108462658", "108462658", "Cultist_dialogs_during_first_wave", "box_MultipleOR_14.Out", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_7_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_7;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1282129305", "1282129305", "Cultist_dialogs_during_first_wave", "box_PlayDialog_v6_7.Started", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_9_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1667095801", "1667095801", "Cultist_dialogs_during_first_wave", "box_PlayDialog_v6_9.Started", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_PlayDialog_v6_13_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_13;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1672560650", "1672560650", "Cultist_dialogs_during_first_wave", "box_PlayDialog_v6_13.Started", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_11_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_11;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|134963563", "134963563", "Cultist_dialogs_during_first_wave", "box_PlayDialog_v6_11.Started", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_5();
    l0 = self.box_Delay_v5_8;
    l1 = self.box_Switch_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|2062826258", "2062826258", "Cultist_dialogs_during_first_wave", "box_Delay_v5_8.TimeElapsed", "box_Switch_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetActivityFact_4_FactNotSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|860056131", "860056131", "Cultist_dialogs_during_first_wave", "box_GetActivityFact_4.FactNotSet", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_10_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_10;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1715827522", "1715827522", "Cultist_dialogs_during_first_wave", "box_PlayDialog_v6_10.Started", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    params = {
        -- Group,
        [0] = "#55313847",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1066461101",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|196828321");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_6_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015279344707945",
        -- Fact,
        [1] = "INTRO_010_B53_ACTIVATED",
    };
    return params;
end;

function export:OnEnter_box_Switch_5()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    params = {
        -- Group,
        [0] = "#55313847",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4141766217",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_17()
    local params;
    params = {
        -- Group,
        [0] = "#55313847",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "345564453",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|510366838");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_2_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015279228039041",
        -- Fact,
        [1] = "INTRO_010_B51_ACTIVATED",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_3()
    local params;
    params = {
        -- Group,
        [0] = "#55313847",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2302596900",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_15()
    local params;
    params = {
        -- Group,
        [0] = "#55313847",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1909596356",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_12()
    local params;
    params = {
        -- Group,
        [0] = "#55313847",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3518427574",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_7()
    local params;
    params = {
        -- Group,
        [0] = "#55313847",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "821829532",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    params = {
        -- Group,
        [0] = "#55313847",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "750089744",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_13()
    local params;
    params = {
        -- Group,
        [0] = "#55313847",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "971402289",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = "#55313847",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "995324219",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Cultist_dialogs_during_first_wave|1581666496");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_4_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015279344799407",
        -- Fact,
        [1] = "INTRO_010_B52_ACTIVATED",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    params = {
        -- Group,
        [0] = "#55313847",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "677880250",
    };
    return params;
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
