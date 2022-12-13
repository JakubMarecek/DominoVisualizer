LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_main.domino
-- User graph: Canyon_H2_CTP_010_FlareSpawn
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="PackagePositionID" Type="Core|int" />
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
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_FlareSpawn.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Handled",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "PackagePositionID",
                type = "int",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Canyon_H2_CTP_010_FlareSpawn";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn";
    self.Handled = DummyFunction;
    self.box_VisibilityModifier_21 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|84596503");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_21_Enabled,
    });
    self.box_VisibilityModifier_15 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|171501826");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_15_Enabled,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|391308121");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|559098155");
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
    self.box_VisibilityModifier_19 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|798614655");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_19_Enabled,
    });
    self.box_IndexList_v2_7 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1025896969");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [0] = self.f_box_IndexList_v2_7_Output_0,
                [1] = self.f_box_IndexList_v2_7_Output_1,
                [2] = self.f_box_IndexList_v2_7_Output_2,
                [3] = self.f_box_IndexList_v2_7_Output_3,
                [4] = self.f_box_IndexList_v2_7_Output_4,
                [5] = self.f_box_IndexList_v2_7_Output_5,
            },
            count = 6,
        },
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1167187688");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_VisibilityModifier_16 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1250901962");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_16_Disabled,
    });
    self.box_VisibilityModifier_18 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1257240681");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_18_Enabled,
    });
    self.box_OnceOnly_v3_12 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1279168375");
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
                [0] = self.f_box_OnceOnly_v3_12_Out_0,
            },
            count = 2,
        },
    });
    self.box_VisibilityModifier_20 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1864030130");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_20_Enabled,
    });
    self.box_VisibilityModifier_17 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1982246552");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_17_Enabled,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1990658247");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|556500065", "556500065", "Canyon_H2_CTP_010_FlareSpawn", "In", "box_ParticleSystem_v3_4.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_21_Enabled()
    local l0, l1;
    l0 = self.box_VisibilityModifier_21;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|771210026", "771210026", "Canyon_H2_CTP_010_FlareSpawn", "box_VisibilityModifier_21.Enabled", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_ParticleSystem_v3_14_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_19();
    l0 = self.box_VisibilityModifier_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1974284867", "1974284867", "Canyon_H2_CTP_010_FlareSpawn", "box_ParticleSystem_v3_14.Started", "box_VisibilityModifier_19.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_4_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_16();
    l0 = self.box_VisibilityModifier_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|389368696", "389368696", "Canyon_H2_CTP_010_FlareSpawn", "box_ParticleSystem_v3_4.Stopped", "box_VisibilityModifier_16.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_VisibilityModifier_15_Enabled()
    local l0, l1;
    l0 = self.box_VisibilityModifier_15;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|27631963", "27631963", "Canyon_H2_CTP_010_FlareSpawn", "box_VisibilityModifier_15.Enabled", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local l0;
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1433645085", "1433645085", "Canyon_H2_CTP_010_FlareSpawn", "box_Delay_v5_13.TimeElapsed", "Handled", l0:GetLuaBox(), self);
    self:Handled();
end;

function export:f_box_ParticleSystem_v3_1_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_21();
    l0 = self.box_VisibilityModifier_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|670255834", "670255834", "Canyon_H2_CTP_010_FlareSpawn", "box_ParticleSystem_v3_1.Started", "box_VisibilityModifier_21.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_11_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_11;
    l1 = self.box_OnceOnly_v3_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1841319863", "1841319863", "Canyon_H2_CTP_010_FlareSpawn", "box_MultipleOR_11.Out", "box_OnceOnly_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_3_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_20();
    l0 = self.box_VisibilityModifier_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|68179593", "68179593", "Canyon_H2_CTP_010_FlareSpawn", "box_ParticleSystem_v3_3.Started", "box_VisibilityModifier_20.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_VisibilityModifier_19_Enabled()
    local l0, l1;
    l0 = self.box_VisibilityModifier_19;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1262837985", "1262837985", "Canyon_H2_CTP_010_FlareSpawn", "box_VisibilityModifier_19.Enabled", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ParticleSystem_v3_5_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_15();
    l0 = self.box_VisibilityModifier_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1966907283", "1966907283", "Canyon_H2_CTP_010_FlareSpawn", "box_ParticleSystem_v3_5.Started", "box_VisibilityModifier_15.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_IndexList_v2_7_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_2();
    l0 = self.box_IndexList_v2_7;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|17556760", "17556760", "Canyon_H2_CTP_010_FlareSpawn", "box_IndexList_v2_7.Output", "box_ParticleSystem_v3_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_7_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_5();
    l0 = self.box_IndexList_v2_7;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1111260960", "1111260960", "Canyon_H2_CTP_010_FlareSpawn", "box_IndexList_v2_7.Output", "box_ParticleSystem_v3_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_7_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_6();
    l0 = self.box_IndexList_v2_7;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1626435538", "1626435538", "Canyon_H2_CTP_010_FlareSpawn", "box_IndexList_v2_7.Output", "box_ParticleSystem_v3_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_7_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_14();
    l0 = self.box_IndexList_v2_7;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|767018778", "767018778", "Canyon_H2_CTP_010_FlareSpawn", "box_IndexList_v2_7.Output", "box_ParticleSystem_v3_14.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_7_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_3();
    l0 = self.box_IndexList_v2_7;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1383108772", "1383108772", "Canyon_H2_CTP_010_FlareSpawn", "box_IndexList_v2_7.Output", "box_ParticleSystem_v3_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_7_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_1();
    l0 = self.box_IndexList_v2_7;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|502587326", "502587326", "Canyon_H2_CTP_010_FlareSpawn", "box_IndexList_v2_7.Output", "box_ParticleSystem_v3_1.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_9;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1489038444", "1489038444", "Canyon_H2_CTP_010_FlareSpawn", "box_Delay_v5_9.TimeElapsed", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_2_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_17();
    l0 = self.box_VisibilityModifier_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1228758411", "1228758411", "Canyon_H2_CTP_010_FlareSpawn", "box_ParticleSystem_v3_2.Started", "box_VisibilityModifier_17.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_VisibilityModifier_16_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_VisibilityModifier_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1490163829", "1490163829", "Canyon_H2_CTP_010_FlareSpawn", "box_VisibilityModifier_16.Disabled", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_18_Enabled()
    local l0, l1;
    l0 = self.box_VisibilityModifier_18;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|227137190", "227137190", "Canyon_H2_CTP_010_FlareSpawn", "box_VisibilityModifier_18.Enabled", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1177304655", "1177304655", "Canyon_H2_CTP_010_FlareSpawn", "box_OutputOrder_v2_10.Out", "box_Delay_v5_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_7();
    l0 = self.box_IndexList_v2_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|898404686", "898404686", "Canyon_H2_CTP_010_FlareSpawn", "box_OutputOrder_v2_10.Out", "box_IndexList_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_12_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_OnceOnly_v3_12;
    l1 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|827049181", "827049181", "Canyon_H2_CTP_010_FlareSpawn", "box_OnceOnly_v3_12.Out", "box_Delay_v5_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_VisibilityModifier_20_Enabled()
    local l0, l1;
    l0 = self.box_VisibilityModifier_20;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1473617582", "1473617582", "Canyon_H2_CTP_010_FlareSpawn", "box_VisibilityModifier_20.Enabled", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_VisibilityModifier_17_Enabled()
    local l0, l1;
    l0 = self.box_VisibilityModifier_17;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|907985296", "907985296", "Canyon_H2_CTP_010_FlareSpawn", "box_VisibilityModifier_17.Enabled", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_8_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_8;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1353133926", "1353133926", "Canyon_H2_CTP_010_FlareSpawn", "box_MultipleOR_8.Out", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_6_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_18();
    l0 = self.box_VisibilityModifier_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|46620143", "46620143", "Canyon_H2_CTP_010_FlareSpawn", "box_ParticleSystem_v3_6.Started", "box_VisibilityModifier_18.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:OnEnter_box_VisibilityModifier_21()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2110057791333871268",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|108612140");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_14_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2110057786283929246",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|137725432");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_4_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "#9B0B66ED",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_15()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2110057779279441558",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|552138053");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_1_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2110057791333871268",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|657087473");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_3_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2110057793244376742",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_19()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2110057786283929246",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|826927358");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_5_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2110057779279441558",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_7()
    local params;
    params = {
        -- Index,
        [0] = self.PackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1244933647");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_2_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2110057784650247835",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_16()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#9B0B66ED",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_18()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2110057787986816673",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|1258647790");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_20()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2110057793244376742",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_17()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2110057784650247835",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_FlareSpawn|2075436576");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_6_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2110057787986816673",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Handled()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Handled" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="PackagePositionID" AnchorDynType="0" DataTypeID="int" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
