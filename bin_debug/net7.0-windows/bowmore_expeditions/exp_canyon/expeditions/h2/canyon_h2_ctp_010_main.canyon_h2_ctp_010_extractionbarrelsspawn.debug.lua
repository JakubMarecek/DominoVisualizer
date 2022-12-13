LUACT  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_main.domino
-- User graph: Canyon_H2_CTP_010_ExtractionBarrelsSpawn
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="ExtractionPositionID" Type="Core|int" />
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
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Canyon_H2_CTP_010_Main = nil;
    Globals.Canyon_H2_CTP_010_Main = {
        iExtractionPOIIndex = 0,
        iPackagePositionIndex = 0,
        iDifficulty = 0,
        iPlayerSpawnPOIIndex = 0,
        ePackageSpawner = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_ExtractionBarrelsSpawn.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "ExtractionPositionID",
                type = "int",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "SpawnEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Canyon_H2_CTP_010_ExtractionBarrelsSpawn";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn";
    self.Success = DummyFunction;
    self.box_Canyon_H2_CTP_010_LoadSpawn_4 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|85719248");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_4_Success,
    });
    self.box_IndexList_v2_1 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|629526777");
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
                [0] = self.f_box_IndexList_v2_1_Output_0,
                [1] = self.f_box_IndexList_v2_1_Output_1,
                [2] = self.f_box_IndexList_v2_1_Output_2,
            },
            count = 3,
        },
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_6 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|656516190");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_6_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_3 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|721441643");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_3_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_7 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|756927046");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_7_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_9 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|889555198");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_9_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_5 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|1054773658");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_5_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_8 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|1787265341");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_8_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_10 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|1963192794");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_10_Success,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|1967583599");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_2 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|2006937260");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_2_Success,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_IndexList_v2_1();
    l0 = self.box_IndexList_v2_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|720818766", "720818766", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "In", "box_IndexList_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_4_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_9();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_4;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|232749157", "232749157", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_Canyon_H2_CTP_010_LoadSpawn_4.Success", "box_Canyon_H2_CTP_010_LoadSpawn_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_1_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_2();
    l0 = self.box_IndexList_v2_1;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|1185042096", "1185042096", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_IndexList_v2_1.Output", "box_Canyon_H2_CTP_010_LoadSpawn_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_1_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_3();
    l0 = self.box_IndexList_v2_1;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|1613692223", "1613692223", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_IndexList_v2_1.Output", "box_Canyon_H2_CTP_010_LoadSpawn_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_1_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_4();
    l0 = self.box_IndexList_v2_1;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|1749764854", "1749764854", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_IndexList_v2_1.Output", "box_Canyon_H2_CTP_010_LoadSpawn_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_6_Success()
    local l0, l1;
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_6;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|590627880", "590627880", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_Canyon_H2_CTP_010_LoadSpawn_6.Success", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_3_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_7();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_3;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|1470487673", "1470487673", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_Canyon_H2_CTP_010_LoadSpawn_3.Success", "box_Canyon_H2_CTP_010_LoadSpawn_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_7_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_8();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_7;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|1538439932", "1538439932", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_Canyon_H2_CTP_010_LoadSpawn_7.Success", "box_Canyon_H2_CTP_010_LoadSpawn_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_9_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_10();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_9;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|106338729", "106338729", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_Canyon_H2_CTP_010_LoadSpawn_9.Success", "box_Canyon_H2_CTP_010_LoadSpawn_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_5_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_6();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_5;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|1626251123", "1626251123", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_Canyon_H2_CTP_010_LoadSpawn_5.Success", "box_Canyon_H2_CTP_010_LoadSpawn_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_8_Success()
    local l0, l1;
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_8;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|135624697", "135624697", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_Canyon_H2_CTP_010_LoadSpawn_8.Success", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_10_Success()
    local l0, l1;
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_10;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|576614127", "576614127", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_Canyon_H2_CTP_010_LoadSpawn_10.Success", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_11_Out()
    local l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|912408221", "912408221", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_MultipleOR_11.Out", "Success", l0:GetLuaBox(), self);
    self:Success();
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_2_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_5();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_2;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_ExtractionBarrelsSpawn|1879071979", "1879071979", "Canyon_H2_CTP_010_ExtractionBarrelsSpawn", "box_Canyon_H2_CTP_010_LoadSpawn_2.Success", "box_Canyon_H2_CTP_010_LoadSpawn_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_4()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2109506214877471716",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_1()
    local params;
    params = {
        -- Index,
        [0] = self.ExtractionPositionID,
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_6()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2109506252968043569",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_3()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2109506235274372101",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_7()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2109506241637131278",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_9()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2109506222477550574",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_5()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2109506252074656808",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_8()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2109506242943656982",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_10()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2109506228917904379",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_2()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2109506248519984159",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Success()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Success" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="ExtractionPositionID" AnchorDynType="0" DataTypeID="int" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
