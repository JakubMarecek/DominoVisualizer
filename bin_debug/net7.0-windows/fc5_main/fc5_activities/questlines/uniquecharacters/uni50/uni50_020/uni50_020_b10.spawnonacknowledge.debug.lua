LUAC:f  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni50/uni50_020/uni50_020_b10.domino
-- User graph: SpawnOnAcknowledge
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
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.UNI50_020_B10 = nil;
    Globals.UNI50_020_B10 = {
        IsWaveStarted = false,
        bPriestessSpawned = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.SpawnOnAcknowledge.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/SpawnAI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = true,
            },
            [3] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntitySpawner",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "mercsSpawned",
                type = "list",
            },
            [1] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v5.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberRemoved",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "SpawnOnAcknowledge";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge";
    self.Out = DummyFunction;
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|314026316");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|662671833");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_GroupSizeListener_v5_11 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|741946784");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_11_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_11_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_11_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_11_MemberRemoved,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|792692396");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_SpawnAI_1 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|812548038");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_1_Out,
    });
    self.box_SpawnAI_2 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1574503249");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_2_Out,
    });
    self.box_SpawnAI_4 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1579726083");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_4_Out,
    });
    self.box_SpawnAI_3 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1816132887");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_3_Out,
    });
    self.box_OnceOnly_v3_5 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1902358742");
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
                [0] = self.f_box_OnceOnly_v3_5_Out_0,
            },
            count = 2,
        },
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GroupSizeListener_v5_11();
    l0 = self.box_GroupSizeListener_v5_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|653549531", "653549531", "SpawnOnAcknowledge", "In", "box_GroupSizeListener_v5_11.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_10;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|599414433", "599414433", "SpawnOnAcknowledge", "box_Delay_v5_10.TimeElapsed", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_9_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_9;
    l1 = self.box_OnceOnly_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|769230412", "769230412", "SpawnOnAcknowledge", "box_MultipleOR_9.Out", "box_OnceOnly_v3_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_11_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_GroupSizeListener_v5_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|553094102", "553094102", "SpawnOnAcknowledge", "box_GroupSizeListener_v5_11.Enabled", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_11_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_11;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1010805377", "1010805377", "SpawnOnAcknowledge", "box_GroupSizeListener_v5_11.MemberAdded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1433199761", "1433199761", "SpawnOnAcknowledge", "box_MultipleOR_7.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_4();
    l0 = self.box_SpawnAI_1;
    l1 = self.box_SpawnAI_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1843277696", "1843277696", "SpawnOnAcknowledge", "box_SpawnAI_1.Out", "box_SpawnAI_4.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_12_A_ne_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|48031268", "48031268", "SpawnOnAcknowledge", "box_Compare_Integers_12.A_ne_B", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_SpawnAI_2;
    l1 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1864408149", "1864408149", "SpawnOnAcknowledge", "box_SpawnAI_2.Out", "box_Delay_v5_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_2();
    l0 = self.box_SpawnAI_4;
    l1 = self.box_SpawnAI_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|377433145", "377433145", "SpawnOnAcknowledge", "box_SpawnAI_4.Out", "box_SpawnAI_2.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_11();
    l0 = self.box_GroupSizeListener_v5_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|904680166", "904680166", "SpawnOnAcknowledge", "box_OutputOrder_v2_13.Out", "box_GroupSizeListener_v5_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1843491668", "1843491668", "SpawnOnAcknowledge", "box_OutputOrder_v2_13.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_SpawnAI_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_1();
    l0 = self.box_SpawnAI_3;
    l1 = self.box_SpawnAI_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1929763371", "1929763371", "SpawnOnAcknowledge", "box_SpawnAI_3.Out", "box_SpawnAI_1.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_3();
    l0 = self.box_SpawnAI_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|453173552", "453173552", "SpawnOnAcknowledge", "box_OutputOrder_v2_8.Out", "box_SpawnAI_3.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_12();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1217486333", "1217486333", "SpawnOnAcknowledge", "box_OutputOrder_v2_8.Out", "box_Compare_Integers_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_5_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_OnceOnly_v3_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1488222991", "1488222991", "SpawnOnAcknowledge", "box_OnceOnly_v3_5.Out", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
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

function export:OnEnter_box_GroupSizeListener_v5_11()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#0216E4EC",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_1()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100030074500679579",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1150606681");
    l0:SetConnections({
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_12_A_ne_B,
    });
    l0 = self.box_GroupSizeListener_v5_11;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_2()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099877315405162087",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_4()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103704089803110985",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1612881618");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_3()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100029294580346495",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@SpawnOnAcknowledge|1830129271");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
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
