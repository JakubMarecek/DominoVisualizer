LUAC�Z  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni35/uni35_005/uni35_005_b10.domino
-- User graph: UNI35_005_SE_Flamer
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
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_005/UNI35_005_B10.UNI35_005_STP.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_005/UNI35_005_B10.UNI35_005_SE_Flamer.debug.lua")] = {
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
            [1] = {
                name = "StopHealthListeners",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_005/UNI35_005_B10.UNI35_005_STP.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = false,
            },
            [1] = {
                name = "Idle_Finished",
                delayed = false,
            },
            [2] = {
                name = "Interrupted",
                delayed = false,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Duration",
                type = "float",
            },
            [1] = {
                name = "FireEmitter",
                type = "entity",
            },
            [2] = {
                name = "Idle_STP",
                type = "entity",
            },
            [3] = {
                name = "PawnEntity",
                type = "entity",
            },
            [4] = {
                name = "Shoot_STP",
                type = "entity",
            },
            [5] = {
                name = "SoundPoint",
                type = "entity",
            },
            [6] = {
                name = "Stim_Emitter",
                type = "entity",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI35_005_SE_Flamer";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer";
    self.Out = DummyFunction;
    self.StopHealthListeners = DummyFunction;
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|13123575");
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
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|150521722");
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
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|247865779");
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
    self.box_UNI35_005_STP_28 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_005/UNI35_005_B10.UNI35_005_STP.debug.lua");
    l0 = self.box_UNI35_005_STP_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_005_STP_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|533931597");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_UNI35_005_STP_28_Finished,
        -- Interrupted,
        [2] = self.f_box_UNI35_005_STP_28_Interrupted,
    });
    self.box_UNI35_005_STP_22 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_005/UNI35_005_B10.UNI35_005_STP.debug.lua");
    l0 = self.box_UNI35_005_STP_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_005_STP_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|563647209");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_UNI35_005_STP_22_Finished,
        -- Interrupted,
        [2] = self.f_box_UNI35_005_STP_22_Interrupted,
    });
    self.box_UNI35_005_STP_24 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_005/UNI35_005_B10.UNI35_005_STP.debug.lua");
    l0 = self.box_UNI35_005_STP_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_005_STP_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|601909924");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_UNI35_005_STP_24_Finished,
        -- Interrupted,
        [2] = self.f_box_UNI35_005_STP_24_Interrupted,
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|735220790");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_UNI35_005_STP_26 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_005/UNI35_005_B10.UNI35_005_STP.debug.lua");
    l0 = self.box_UNI35_005_STP_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_005_STP_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1034909712");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_UNI35_005_STP_26_Finished,
        -- Interrupted,
        [2] = self.f_box_UNI35_005_STP_26_Interrupted,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1137674426");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1776297941");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_Delay_v5_5 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1818884525");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_5_TimeElapsed,
    });
end;

function export:In()
    local l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1908202354", "1908202354", "UNI35_005_SE_Flamer", "In", "box_MultipleOR_1.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI35_005_STP_26();
    l0 = self.box_MultipleOR_3;
    l1 = self.box_UNI35_005_STP_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|142695409", "142695409", "UNI35_005_SE_Flamer", "box_MultipleOR_3.Out", "box_UNI35_005_STP_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI35_005_STP_24();
    l0 = self.box_MultipleOR_2;
    l1 = self.box_UNI35_005_STP_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1900437070", "1900437070", "UNI35_005_SE_Flamer", "box_MultipleOR_2.Out", "box_UNI35_005_STP_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI35_005_STP_28();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_UNI35_005_STP_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|765569155", "765569155", "UNI35_005_SE_Flamer", "box_MultipleOR_4.Out", "box_UNI35_005_STP_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UNI35_005_STP_28_Finished()
    local l0;
    l0 = self.box_UNI35_005_STP_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1227201585", "1227201585", "UNI35_005_SE_Flamer", "box_UNI35_005_STP_28.Finished", "StopHealthListeners", l0:GetLuaBox(), self);
    self:StopHealthListeners();
end;

function export:f_box_UNI35_005_STP_28_Interrupted()
    local l0, l1;
    l0 = self.box_UNI35_005_STP_28;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1486371887", "1486371887", "UNI35_005_SE_Flamer", "box_UNI35_005_STP_28.Interrupted", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UNI35_005_STP_22_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_UNI35_005_STP_22;
    l1 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1579532097", "1579532097", "UNI35_005_SE_Flamer", "box_UNI35_005_STP_22.Finished", "box_Delay_v5_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UNI35_005_STP_22_Interrupted()
    local l0, l1;
    l0 = self.box_UNI35_005_STP_22;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1971493014", "1971493014", "UNI35_005_SE_Flamer", "box_UNI35_005_STP_22.Interrupted", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UNI35_005_STP_24_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_UNI35_005_STP_24;
    l1 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1641016300", "1641016300", "UNI35_005_SE_Flamer", "box_UNI35_005_STP_24.Finished", "box_Delay_v5_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UNI35_005_STP_24_Interrupted()
    local l0, l1;
    l0 = self.box_UNI35_005_STP_24;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1936374575", "1936374575", "UNI35_005_SE_Flamer", "box_UNI35_005_STP_24.Interrupted", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_7;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1597026648", "1597026648", "UNI35_005_SE_Flamer", "box_Delay_v5_7.TimeElapsed", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UNI35_005_STP_26_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_UNI35_005_STP_26;
    l1 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1529074389", "1529074389", "UNI35_005_SE_Flamer", "box_UNI35_005_STP_26.Finished", "box_Delay_v5_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UNI35_005_STP_26_Interrupted()
    local l0, l1;
    l0 = self.box_UNI35_005_STP_26;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|2102877869", "2102877869", "UNI35_005_SE_Flamer", "box_UNI35_005_STP_26.Interrupted", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI35_005_STP_22();
    l0 = self.box_MultipleOR_1;
    l1 = self.box_UNI35_005_STP_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|461427132", "461427132", "UNI35_005_SE_Flamer", "box_MultipleOR_1.Out", "box_UNI35_005_STP_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_6;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1395118264", "1395118264", "UNI35_005_SE_Flamer", "box_Delay_v5_6.TimeElapsed", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_5_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_5;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_005\\UNI35_005_B10.domino|@UNI35_005_SE_Flamer|1984674381", "1984674381", "UNI35_005_SE_Flamer", "box_Delay_v5_5.TimeElapsed", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_UNI35_005_STP_28()
    local params;
    DrawTextToScreen("Comment: FLAMER HOSTAGE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UNI35_005_STP')-- Comment: FLAMER HOSTAGE");
    params = {
        -- Duration,
        [0] = 12,
        -- FireEmitter,
        [1] = "2100194969202500740",
        -- Idle_STP,
        [2] = "2100500586469271075",
        -- Shoot_STP,
        [4] = "2100512644927640854",
        -- SoundPoint,
        [5] = "2103261276789555556",
        -- Stim_Emitter,
        [6] = "2103238952528999310",
    };
    return params;
end;

function export:OnEnter_box_UNI35_005_STP_22()
    local params;
    DrawTextToScreen("Comment: FLAMER PILE 1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UNI35_005_STP')-- Comment: FLAMER PILE 1");
    params = {
        -- Duration,
        [0] = 12,
        -- FireEmitter,
        [1] = "2100194955109639204",
        -- Idle_STP,
        [2] = "2100500578326029851",
        -- Shoot_STP,
        [4] = "2102988993470681496",
        -- SoundPoint,
        [5] = "2103261244115927390",
        -- Stim_Emitter,
        [6] = "2103238936850690952",
    };
    return params;
end;

function export:OnEnter_box_UNI35_005_STP_24()
    local params;
    DrawTextToScreen("Comment: FLAMER PILE 2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UNI35_005_STP')-- Comment: FLAMER PILE 2");
    params = {
        -- Duration,
        [0] = 12,
        -- FireEmitter,
        [1] = "2100194956655240260",
        -- Idle_STP,
        [2] = "2100581671226092982",
        -- Shoot_STP,
        [4] = "2100500624117343800",
        -- SoundPoint,
        [5] = "2103261267302039904",
        -- Stim_Emitter,
        [6] = "2103238943555285898",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UNI35_005_STP_26()
    local params;
    DrawTextToScreen("Comment: FLAMER PILE 3", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UNI35_005_STP')-- Comment: FLAMER PILE 3");
    params = {
        -- Duration,
        [0] = 12,
        -- FireEmitter,
        [1] = "2100194967120028772",
        -- Idle_STP,
        [2] = "2100512633928078610",
        -- Shoot_STP,
        [4] = "2100500613340079668",
        -- SoundPoint,
        [5] = "2103261271345348962",
        -- Stim_Emitter,
        [6] = "2104366126547890363",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_5()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:StopHealthListeners()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="StopHealthListeners" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
