LUAC�W  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/treasurehunt/th_d103.domino
-- User graph: TH_D103_Brief
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_D103.TH_D103_Brief.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityAcknowledgeGate.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Acknowledged",
                delayed = true,
            },
            [1] = {
                name = "Reloaded",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityInitialized.lua")] = {
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
                delayed = true,
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
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
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
    self._name = "TH_D103_Brief";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief";
    self.box_MultipleAND_v2_8 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|104838707");
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
        [0] = self.f_box_MultipleAND_v2_8_Out,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|244224023");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_OnceOnly_v3_11 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|576607734");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_11_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|620429273");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_SpawnAI_10 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|1360236296");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_10_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_10_Spawned,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|1647698497");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|1711465422");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|1915942609");
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
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|2121342059");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_7_Spawned,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|570601720", "570601720", "TH_D103_Brief", "In", "box_ActivityAcknowledgeGate_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_MultipleAND_v2_8_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_8;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|880468896", "880468896", "TH_D103_Brief", "box_MultipleAND_v2_8.Out", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_12_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_12;
    l1 = self.box_OnceOnly_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|171819469", "171819469", "TH_D103_Brief", "box_MultipleOR_12.Out", "box_OnceOnly_v3_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_10();
    l0 = self.box_SpawnAI_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|1991172937", "1991172937", "TH_D103_Brief", "box_OutputOrder_v2_2.Out", "box_SpawnAI_10.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|1571242633", "1571242633", "TH_D103_Brief", "box_OutputOrder_v2_2.Out", "box_Delay_v5_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_11_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = self.box_OnceOnly_v3_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|1556421630", "1556421630", "TH_D103_Brief", "box_OnceOnly_v3_11.Out", "box_ActivityEnd_3.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_9;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|1797169780", "1797169780", "TH_D103_Brief", "box_Delay_v5_9.TimeElapsed", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_SpawnAI_10;
    l1 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|425371926", "425371926", "TH_D103_Brief", "box_SpawnAI_10.Out", "box_SpawnAI_7.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_10_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_8();
    l0 = self.box_SpawnAI_10;
    l1 = self.box_MultipleAND_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|638962689", "638962689", "TH_D103_Brief", "box_SpawnAI_10.Spawned", "box_MultipleAND_v2_8.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_ActivityInitialized_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|1121630481", "1121630481", "TH_D103_Brief", "box_ActivityInitialized_1.Out", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|727561118", "727561118", "TH_D103_Brief", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|625489055", "625489055", "TH_D103_Brief", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|2061287972", "2061287972", "TH_D103_Brief", "box_MultipleOR_6.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SpawnAI_7_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_8();
    l0 = self.box_SpawnAI_7;
    l1 = self.box_MultipleAND_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|578101363", "578101363", "TH_D103_Brief", "box_SpawnAI_7.Spawned", "box_MultipleAND_v2_8.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:OnEnter_box_MultipleAND_v2_8()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|323164001");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_10()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103028125351813364",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D103.domino|@TH_D103_Brief|2068330660");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103029374650433348",
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
