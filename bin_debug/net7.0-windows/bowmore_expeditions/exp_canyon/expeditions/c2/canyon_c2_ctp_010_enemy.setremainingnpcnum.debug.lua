LUAC�Z  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/c2/canyon_c2_ctp_010_enemy.domino
-- User graph: SetRemainingNPCNUM
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
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Main.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Canyon_C2_CTP_010_Enemy = nil;
    Globals.Canyon_C2_CTP_010_Enemy = {
        i_CurrentSize = 0,
        Wave_01_Spawner_a = nil,
        Wave_01_Spawner_b = nil,
        Wave_02_Spawner_a = nil,
        Wave_02_Spawner_b = nil,
        Wave_03_Spawner_a = nil,
        Wave_03_Spawner_b = nil,
        Wave_04_Spawner_a = nil,
        Wave_04_Spawner_b = nil,
        Wave_05_Spawner_a = nil,
        Wave_05_Spawner_b = nil,
        Wave_06_Spawner_a = nil,
        Wave_06_Spawner_b = nil,
        Wave_07_Spawner_a = nil,
        Wave_07_Spawner_b = nil,
        Wave_08_Spawner_a = nil,
        Wave_08_Spawner_b = nil,
        Wave_09_Spawner_a = nil,
        Wave_09_Spawner_b = nil,
        Wave_10_Spawner_a = nil,
        Wave_10_Spawner_b = nil,
        RemainingNPCNUM_Wave_01 = 3,
        RemainingNPCNUM_Wave_02 = 3,
        RemainingNPCNUM_Wave_03 = 3,
        RemainingNPCNUM_Wave_04 = 3,
        RemainingNPCNUM_Wave_05 = 3,
        RemainingNPCNUM_Wave_06 = 3,
        RemainingNPCNUM_Wave_07 = 3,
        RemainingNPCNUM_Wave_08 = 3,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetRemainingNPCNUM.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/SetInteger_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
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
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
            [3] = {
                name = "UseFloor",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "Target",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "SetRemainingNPCNUM";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM";
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|272025671");
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
    self.box_IndexList_v2_9 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|272717480");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_9_Output_0,
                [1] = self.f_box_IndexList_v2_9_Output_1,
                [2] = self.f_box_IndexList_v2_9_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|2049772842");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_SetInteger_v2_11();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|868885682", "868885682", "SetRemainingNPCNUM", "In", "box_SetInteger_v2_11.FromInteger", self, l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_1_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|2043568930", "2043568930", "SetRemainingNPCNUM", "box_SetInteger_v2_1.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_7();
    l0 = self.box_MultipleOR_4;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|1752005704", "1752005704", "SetRemainingNPCNUM", "box_MultipleOR_4.Out", "box_SetInteger_v2_7.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_9_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_1();
    l0 = self.box_IndexList_v2_9;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|1241128819", "1241128819", "SetRemainingNPCNUM", "box_IndexList_v2_9.Output", "box_SetInteger_v2_1.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_9_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_9;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|924575463", "924575463", "SetRemainingNPCNUM", "box_IndexList_v2_9.Output", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_9_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_9;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|1058624558", "1058624558", "SetRemainingNPCNUM", "box_IndexList_v2_9.Output", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_5_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|1520555861", "1520555861", "SetRemainingNPCNUM", "box_SetInteger_v2_5.Out", "box_SetInteger_v2_2.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_7_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|1918346363", "1918346363", "SetRemainingNPCNUM", "box_SetInteger_v2_7.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_10_Out()
    self:OnExit_box_SetInteger_v2_10_Out();
end;

function export:f_box_SetInteger_v2_2_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_10();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|1143394804", "1143394804", "SetRemainingNPCNUM", "box_SetInteger_v2_2.Out", "box_SetInteger_v2_10.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_12_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_9();
    l0 = self.box_IndexList_v2_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|883793036", "883793036", "SetRemainingNPCNUM", "box_SetInteger_v2_12.Out", "box_IndexList_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetInteger_v2_8_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_5();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|921928393", "921928393", "SetRemainingNPCNUM", "box_SetInteger_v2_8.Out", "box_SetInteger_v2_5.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_11_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_12();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|843630106", "843630106", "SetRemainingNPCNUM", "box_SetInteger_v2_11.Out", "box_SetInteger_v2_12.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_3();
    l0 = self.box_MultipleOR_6;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|1370984276", "1370984276", "SetRemainingNPCNUM", "box_MultipleOR_6.Out", "box_SetInteger_v2_3.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_3_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_8();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|2001223175", "2001223175", "SetRemainingNPCNUM", "box_SetInteger_v2_3.Out", "box_SetInteger_v2_8.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_SetInteger_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|268209775");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_1_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_9()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|332108766");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_5_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|445852380");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_7_Out,
    });
    params = {
        -- Integer,
        [1] = 8,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|735979701");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_10_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|786082231");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_2_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|820307775");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_12_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|1384941074");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_8_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|1755618802");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_11_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@SetRemainingNPCNUM|2080907576");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_3_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_06 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_08 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_07 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_05 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_04 = l0:GetDataOutValue(0);
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
