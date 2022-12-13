LUAC�w  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_020/key01_020_b10.domino
-- User graph: GAM_KEY01_020_B10_Cultists_Dialog
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
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        
        -- Load resources
        cboxRes:LoadResource([[191968479.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3754888047.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1543837149.bnk]], "CSoundResource");
        cboxRes:LoadResource([[111520688.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3741786544.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3768016974.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3683738718.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_020/KEY01_020_B10.GAM_KEY01_020_B10_Cultists_Dialog.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Print_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ToAll",
            },
            [1] = {
                name = "ToConsole",
            },
            [2] = {
                name = "ToFile",
            },
            [3] = {
                name = "ToScreen",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "PrintedToConsole",
                delayed = false,
            },
            [2] = {
                name = "PrintedToFile",
                delayed = false,
            },
            [3] = {
                name = "PrintedToScreen",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bool",
                type = "bool",
            },
            [1] = {
                name = "color",
                type = "string",
            },
            [2] = {
                name = "db",
                type = "genericdb",
            },
            [3] = {
                name = "duration",
                type = "float",
            },
            [4] = {
                name = "float",
                type = "float",
            },
            [5] = {
                name = "id",
                type = "entity",
            },
            [6] = {
                name = "int",
                type = "int",
            },
            [7] = {
                name = "path",
                type = "string",
            },
            [8] = {
                name = "str",
                type = "string",
            },
            [9] = {
                name = "useTimeTag",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
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
    self._name = "GAM_KEY01_020_B10_Cultists_Dialog";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog";
    self.box_Switch_9 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|479845439");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 7,
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
                [0] = self.f_box_Switch_9_Output_0,
                [1] = self.f_box_Switch_9_Output_1,
                [2] = self.f_box_Switch_9_Output_2,
                [3] = self.f_box_Switch_9_Output_3,
                [4] = self.f_box_Switch_9_Output_4,
                [5] = self.f_box_Switch_9_Output_5,
                [6] = self.f_box_Switch_9_Output_6,
            },
            count = 7,
        },
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|662737913");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_11_Started,
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|784392324");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_10_Started,
    });
    self.box_PlayDialog_v6_8 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1251467915");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_8_Started,
    });
    self.box_PlayDialog_v6_12 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1323819107");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_12_Started,
    });
    self.box_PlayDialog_v6_7 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1388386584");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_7_Started,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1481642394");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_13_LoopingEnded,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_PlayDialog_v6_15 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1526486314");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_15_Started,
    });
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1852549124");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_2_Started,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1532098094", "1532098094", "GAM_KEY01_020_B10_Cultists_Dialog", "In", "box_Delay_v5_13.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Switch_9_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_7();
    l0 = self.box_Switch_9;
    l1 = self.box_PlayDialog_v6_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1158078571", "1158078571", "GAM_KEY01_020_B10_Cultists_Dialog", "box_Switch_9.Output", "box_PlayDialog_v6_7.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_9_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_Switch_9;
    l1 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1685662833", "1685662833", "GAM_KEY01_020_B10_Cultists_Dialog", "box_Switch_9.Output", "box_PlayDialog_v6_2.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_9_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_12();
    l0 = self.box_Switch_9;
    l1 = self.box_PlayDialog_v6_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|575899958", "575899958", "GAM_KEY01_020_B10_Cultists_Dialog", "box_Switch_9.Output", "box_PlayDialog_v6_12.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_9_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_Switch_9;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|2143226331", "2143226331", "GAM_KEY01_020_B10_Cultists_Dialog", "box_Switch_9.Output", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_9_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_Switch_9;
    l1 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|855979361", "855979361", "GAM_KEY01_020_B10_Cultists_Dialog", "box_Switch_9.Output", "box_PlayDialog_v6_8.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_9_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_Switch_9;
    l1 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1001678818", "1001678818", "GAM_KEY01_020_B10_Cultists_Dialog", "box_Switch_9.Output", "box_PlayDialog_v6_11.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_9_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_15();
    l0 = self.box_Switch_9;
    l1 = self.box_PlayDialog_v6_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|24327886", "24327886", "GAM_KEY01_020_B10_Cultists_Dialog", "box_Switch_9.Output", "box_PlayDialog_v6_15.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_11_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_6();
    l0 = self.box_PlayDialog_v6_11;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|2030747512", "2030747512", "GAM_KEY01_020_B10_Cultists_Dialog", "box_PlayDialog_v6_11.Started", "box_Print_v2_6.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_10_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_4();
    l0 = self.box_PlayDialog_v6_10;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1140596268", "1140596268", "GAM_KEY01_020_B10_Cultists_Dialog", "box_PlayDialog_v6_10.Started", "box_Print_v2_4.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_1();
    l0 = self.box_PlayDialog_v6_8;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|686066536", "686066536", "GAM_KEY01_020_B10_Cultists_Dialog", "box_PlayDialog_v6_8.Started", "box_Print_v2_1.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_12_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_14();
    l0 = self.box_PlayDialog_v6_12;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1481590827", "1481590827", "GAM_KEY01_020_B10_Cultists_Dialog", "box_PlayDialog_v6_12.Started", "box_Print_v2_14.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_7_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_3();
    l0 = self.box_PlayDialog_v6_7;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|117116836", "117116836", "GAM_KEY01_020_B10_Cultists_Dialog", "box_PlayDialog_v6_7.Started", "box_Print_v2_3.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_13_LoopingEnded()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1540944891", "1540944891", "GAM_KEY01_020_B10_Cultists_Dialog", "box_Delay_v5_13.LoopingEnded", "box_Delay_v5_13.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_9();
    l0 = self.box_Delay_v5_13;
    l1 = self.box_Switch_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|2062783655", "2062783655", "GAM_KEY01_020_B10_Cultists_Dialog", "box_Delay_v5_13.TimeElapsed", "box_Switch_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_15_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_16();
    l0 = self.box_PlayDialog_v6_15;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|182956927", "182956927", "GAM_KEY01_020_B10_Cultists_Dialog", "box_PlayDialog_v6_15.Started", "box_Print_v2_16.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_2_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_5();
    l0 = self.box_PlayDialog_v6_2;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|978461480", "978461480", "GAM_KEY01_020_B10_Cultists_Dialog", "box_PlayDialog_v6_2.Started", "box_Print_v2_5.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Print_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|361758154");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "You don't come out, you'll be sorry Mrs. Rye!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Switch_9()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = "#9403A810",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3683738718",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|691343361");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "I hear her. She's in the house!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|697199809");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Get inside and drag that sinner out by her hair!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    params = {
        -- Group,
        [0] = "#9403A810",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1543837149",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|824776397");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Raid the house!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1171566031");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Go get that sinner!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_8()
    local params;
    params = {
        -- Group,
        [0] = "#9403A810",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "111520688",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_12()
    local params;
    params = {
        -- Group,
        [0] = "#9403A810",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3741786544",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_7()
    local params;
    params = {
        -- Group,
        [0] = "#9403A810",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "191968479",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 99,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_15()
    local params;
    params = {
        -- Group,
        [0] = "#9403A810",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3754888047",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|1736869218");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Kim Rye's in the house! Get her!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    params = {
        -- Group,
        [0] = "#9403A810",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3768016974",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B10.domino|@GAM_KEY01_020_B10_Cultists_Dialog|2103133489");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "We're comin' for ya lady! Don't you worry none.",
        -- useTimeTag,
        [9] = true,
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
