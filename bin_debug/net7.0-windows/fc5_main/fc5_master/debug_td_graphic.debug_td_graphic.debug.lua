LUACU% -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_master/debug_td_graphic.domino
-- User graph: Debug_TD_Graphic
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
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Master/Debug_TD_Graphic.Debug_TD_Graphic.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
            },
        },
        dataInCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Debug_TD_Graphic";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic";
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|113487360");
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|137812153");
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
    self.box_ConsoleCommand_v3_50 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|169829012");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_50_Execute,
    });
    self.box_ConsoleCommand_v3_28 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|258956840");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_28_Execute,
    });
    self.box_ConsoleCommand_v3_5 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|332305615");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_5_Execute,
    });
    self.box_ConsoleCommand_v3_21 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|336078510");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_21_Execute,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|587360134");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_ConsoleCommand_v3_29 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|740588926");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_29_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_29_Execute,
    });
    self.box_ConsoleCommand_v3_7 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|769096982");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_7_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_7_Execute,
    });
    self.box_ConsoleCommand_v3_35 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|974792983");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_35_Execute,
    });
    self.box_ConsoleCommand_v3_22 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|979203098");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_22_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_22_Execute,
    });
    self.box_ConsoleCommand_v3_15 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1008935653");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_15_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_15_Execute,
    });
    self.box_ConsoleCommand_v3_48 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1119108169");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_48_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_48_Execute,
    });
    self.box_ConsoleCommand_v3_43 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1327454011");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_43_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_43_Execute,
    });
    self.box_ConsoleCommand_v3_42 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1351676652");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_42_Execute,
    });
    self.box_ConsoleCommand_v3_14 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1505569502");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_14_Execute,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1607491836");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1695564599");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_ConsoleCommand_v3_36 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1881773322");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_36_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_36_Execute,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|2039383521");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|2055653306");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1988028737", "1988028737", "Debug_TD_Graphic", "In", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1683740475", "1683740475", "Debug_TD_Graphic", "box_OutputOrder_v2_33.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_30();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|158335440", "158335440", "Debug_TD_Graphic", "box_OutputOrder_v2_33.Out", "box_Print_v2_30.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_42();
    l0 = self.box_MultipleOR_41;
    l1 = self.box_ConsoleCommand_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|196717044", "196717044", "Debug_TD_Graphic", "box_MultipleOR_41.Out", "box_ConsoleCommand_v3_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_5();
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ConsoleCommand_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1602586011", "1602586011", "Debug_TD_Graphic", "box_MultipleOR_6.Out", "box_ConsoleCommand_v3_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_50_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_48();
    l0 = self.box_ConsoleCommand_v3_50;
    l1 = self.box_ConsoleCommand_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|86830225", "86830225", "Debug_TD_Graphic", "box_ConsoleCommand_v3_50.Execute", "box_ConsoleCommand_v3_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|29274614", "29274614", "Debug_TD_Graphic", "box_OutputOrder_v2_12.Out", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1722813666", "1722813666", "Debug_TD_Graphic", "box_OutputOrder_v2_12.Out", "box_Print_v2_9.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_28_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_29();
    l0 = self.box_ConsoleCommand_v3_28;
    l1 = self.box_ConsoleCommand_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|2026026876", "2026026876", "Debug_TD_Graphic", "box_ConsoleCommand_v3_28.Execute", "box_ConsoleCommand_v3_29.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_5_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_7();
    l0 = self.box_ConsoleCommand_v3_5;
    l1 = self.box_ConsoleCommand_v3_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1121323976", "1121323976", "Debug_TD_Graphic", "box_ConsoleCommand_v3_5.Execute", "box_ConsoleCommand_v3_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_21_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_22();
    l0 = self.box_ConsoleCommand_v3_21;
    l1 = self.box_ConsoleCommand_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1371470158", "1371470158", "Debug_TD_Graphic", "box_ConsoleCommand_v3_21.Execute", "box_ConsoleCommand_v3_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|245424021", "245424021", "Debug_TD_Graphic", "box_OutputOrder_v2_26.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_23();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1066441030", "1066441030", "Debug_TD_Graphic", "box_OutputOrder_v2_26.Out", "box_Print_v2_23.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1074417209", "1074417209", "Debug_TD_Graphic", "box_OutputOrder_v2_49.Out", "box_MultipleOR_45.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_46();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|936289815", "936289815", "Debug_TD_Graphic", "box_OutputOrder_v2_49.Out", "box_Print_v2_46.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1200866243", "1200866243", "Debug_TD_Graphic", "box_OutputOrder_v2_40.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_37();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|655934192", "655934192", "Debug_TD_Graphic", "box_OutputOrder_v2_40.Out", "box_Print_v2_37.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_21();
    l0 = self.box_MultipleOR_20;
    l1 = self.box_ConsoleCommand_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1763135413", "1763135413", "Debug_TD_Graphic", "box_MultipleOR_20.Out", "box_ConsoleCommand_v3_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1065682506", "1065682506", "Debug_TD_Graphic", "box_OutputOrder_v2_3.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1237804439", "1237804439", "Debug_TD_Graphic", "box_OutputOrder_v2_3.Out", "box_Print_v2_2.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1393715881", "1393715881", "Debug_TD_Graphic", "box_OutputOrder_v2_1.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1194869344", "1194869344", "Debug_TD_Graphic", "box_OutputOrder_v2_1.Out", "box_MultipleOR_45.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1264720421", "1264720421", "Debug_TD_Graphic", "box_OutputOrder_v2_1.Out", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|444555962", "444555962", "Debug_TD_Graphic", "box_OutputOrder_v2_1.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|598439982", "598439982", "Debug_TD_Graphic", "box_OutputOrder_v2_1.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1386057272", "1386057272", "Debug_TD_Graphic", "box_OutputOrder_v2_1.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|2114039602", "2114039602", "Debug_TD_Graphic", "box_OutputOrder_v2_1.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ConsoleCommand_v3_29_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_24();
    l0 = self.box_ConsoleCommand_v3_29;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1053299578", "1053299578", "Debug_TD_Graphic", "box_ConsoleCommand_v3_29.Enabled", "box_MissionBlockLayer_24.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_29_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_24();
    l0 = self.box_ConsoleCommand_v3_29;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1969663434", "1969663434", "Debug_TD_Graphic", "box_ConsoleCommand_v3_29.Execute", "box_MissionBlockLayer_24.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_7_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_8();
    l0 = self.box_ConsoleCommand_v3_7;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|578637834", "578637834", "Debug_TD_Graphic", "box_ConsoleCommand_v3_7.Enabled", "box_MissionBlockLayer_8.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_7_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_8();
    l0 = self.box_ConsoleCommand_v3_7;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1554643895", "1554643895", "Debug_TD_Graphic", "box_ConsoleCommand_v3_7.Execute", "box_MissionBlockLayer_8.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_35_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_36();
    l0 = self.box_ConsoleCommand_v3_35;
    l1 = self.box_ConsoleCommand_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|385889736", "385889736", "Debug_TD_Graphic", "box_ConsoleCommand_v3_35.Execute", "box_ConsoleCommand_v3_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = self.box_ConsoleCommand_v3_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1127565706", "1127565706", "Debug_TD_Graphic", "box_ConsoleCommand_v3_22.Enabled", "box_MissionBlockLayer_17.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_22_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = self.box_ConsoleCommand_v3_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1473565387", "1473565387", "Debug_TD_Graphic", "box_ConsoleCommand_v3_22.Execute", "box_MissionBlockLayer_17.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_10();
    l0 = self.box_ConsoleCommand_v3_15;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|2080899067", "2080899067", "Debug_TD_Graphic", "box_ConsoleCommand_v3_15.Enabled", "box_MissionBlockLayer_10.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_15_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_10();
    l0 = self.box_ConsoleCommand_v3_15;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|998740139", "998740139", "Debug_TD_Graphic", "box_ConsoleCommand_v3_15.Execute", "box_MissionBlockLayer_10.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_48_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_47();
    l0 = self.box_ConsoleCommand_v3_48;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1173462426", "1173462426", "Debug_TD_Graphic", "box_ConsoleCommand_v3_48.Enabled", "box_MissionBlockLayer_47.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_48_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_47();
    l0 = self.box_ConsoleCommand_v3_48;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|2012466930", "2012466930", "Debug_TD_Graphic", "box_ConsoleCommand_v3_48.Execute", "box_MissionBlockLayer_47.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_38_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_39();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1731975983", "1731975983", "Debug_TD_Graphic", "box_MissionBlockLayer_38.Activated", "box_Print_v2_39.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_38_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|166376327", "166376327", "Debug_TD_Graphic", "box_MissionBlockLayer_38.Disabled", "box_OutputOrder_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_43_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_38();
    l0 = self.box_ConsoleCommand_v3_43;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1425011541", "1425011541", "Debug_TD_Graphic", "box_ConsoleCommand_v3_43.Enabled", "box_MissionBlockLayer_38.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_43_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_38();
    l0 = self.box_ConsoleCommand_v3_43;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|905499757", "905499757", "Debug_TD_Graphic", "box_ConsoleCommand_v3_43.Execute", "box_MissionBlockLayer_38.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_42_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_43();
    l0 = self.box_ConsoleCommand_v3_42;
    l1 = self.box_ConsoleCommand_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|112584221", "112584221", "Debug_TD_Graphic", "box_ConsoleCommand_v3_42.Execute", "box_ConsoleCommand_v3_43.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_17_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_18();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1515754650", "1515754650", "Debug_TD_Graphic", "box_MissionBlockLayer_17.Activated", "box_Print_v2_18.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_17_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|370821720", "370821720", "Debug_TD_Graphic", "box_MissionBlockLayer_17.Disabled", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|2027795463", "2027795463", "Debug_TD_Graphic", "box_OutputOrder_v2_19.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_16();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1178624410", "1178624410", "Debug_TD_Graphic", "box_OutputOrder_v2_19.Out", "box_Print_v2_16.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_14_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_15();
    l0 = self.box_ConsoleCommand_v3_14;
    l1 = self.box_ConsoleCommand_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|787581259", "787581259", "Debug_TD_Graphic", "box_ConsoleCommand_v3_14.Execute", "box_ConsoleCommand_v3_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_8_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|649252311", "649252311", "Debug_TD_Graphic", "box_MissionBlockLayer_8.Activated", "box_Print_v2_4.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_8_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|528182701", "528182701", "Debug_TD_Graphic", "box_MissionBlockLayer_8.Disabled", "box_OutputOrder_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_47_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_44();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1085639521", "1085639521", "Debug_TD_Graphic", "box_MissionBlockLayer_47.Activated", "box_Print_v2_44.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_47_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1187956540", "1187956540", "Debug_TD_Graphic", "box_MissionBlockLayer_47.Disabled", "box_OutputOrder_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_50();
    l0 = self.box_MultipleOR_45;
    l1 = self.box_ConsoleCommand_v3_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|154798211", "154798211", "Debug_TD_Graphic", "box_MultipleOR_45.Out", "box_ConsoleCommand_v3_50.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_14();
    l0 = self.box_MultipleOR_13;
    l1 = self.box_ConsoleCommand_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|348954186", "348954186", "Debug_TD_Graphic", "box_MultipleOR_13.Out", "box_ConsoleCommand_v3_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_31_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_32();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|815204556", "815204556", "Debug_TD_Graphic", "box_MissionBlockLayer_31.Activated", "box_Print_v2_32.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_31_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|570172006", "570172006", "Debug_TD_Graphic", "box_MissionBlockLayer_31.Disabled", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_36_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_31();
    l0 = self.box_ConsoleCommand_v3_36;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1923195118", "1923195118", "Debug_TD_Graphic", "box_ConsoleCommand_v3_36.Enabled", "box_MissionBlockLayer_31.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_36_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_31();
    l0 = self.box_ConsoleCommand_v3_36;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|550162117", "550162117", "Debug_TD_Graphic", "box_ConsoleCommand_v3_36.Execute", "box_MissionBlockLayer_31.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_10_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1006341456", "1006341456", "Debug_TD_Graphic", "box_MissionBlockLayer_10.Activated", "box_Print_v2_11.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_10_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|646314473", "646314473", "Debug_TD_Graphic", "box_MissionBlockLayer_10.Disabled", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_24_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_25();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1482371838", "1482371838", "Debug_TD_Graphic", "box_MissionBlockLayer_24.Activated", "box_Print_v2_25.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|2047468628", "2047468628", "Debug_TD_Graphic", "box_MissionBlockLayer_24.Disabled", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_28();
    l0 = self.box_MultipleOR_27;
    l1 = self.box_ConsoleCommand_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1190047546", "1190047546", "Debug_TD_Graphic", "box_MultipleOR_27.Out", "box_ConsoleCommand_v3_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_35();
    l0 = self.box_MultipleOR_34;
    l1 = self.box_ConsoleCommand_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1647390738", "1647390738", "Debug_TD_Graphic", "box_MultipleOR_34.Out", "box_ConsoleCommand_v3_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|102346855");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|137878703");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "purple",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "DISABLE GVR4",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_50()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "light_art_on",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|175595203");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|208669328");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "purple",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "DISABLE GVR5",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_28()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "GVR3_on",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|267704962");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "purple",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "DISABLE GVR1",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|285958337");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "purple",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "DISABLE GVR3",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|326167647");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "purple",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "DISABLE LIGHT TEST",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_5()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "light_test_on",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_21()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "GVR2_on",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|403904748");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|414141989");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "magenta",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ENABLE GVR4",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|469801414");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|497692441");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "purple",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "DISABLE LIGHT ART",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|573629348");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|627933279");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|679915417");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
                [4] = self.f_box_OutputOrder_v2_1_Out_4,
                [5] = self.f_box_OutputOrder_v2_1_Out_5,
                [6] = self.f_box_OutputOrder_v2_1_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|686001311");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "purple",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "DISABLE GVR2",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_29()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "GVR3_off",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_7()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "light_test_off",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|925036375");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "magenta",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ENABLE GVR2",
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|972182353");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "magenta",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ENABLE LIGHT TEST",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_35()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "GVR4_on",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_22()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "GVR2_off",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_15()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "GVR1_off",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_48()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "light_art_off",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1129480409");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_38_Activated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_38_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152983738782031",
        -- missionLayerId,
        [1] = "63188980012535581",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1191693363");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "magenta",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ENABLE GVR3",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1271847257");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "magenta",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ENABLE GVR5",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_43()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "GVR5_off",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_42()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "GVR5_on",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1412186363");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_17_Activated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_17_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152983738782031",
        -- missionLayerId,
        [1] = "36167382248299788",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1454233491");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_14()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "GVR1_on",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1574621424");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_8_Activated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_8_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152983738782031",
        -- missionLayerId,
        [1] = "72196179267282488",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1597120762");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_47_Activated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_47_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152983738782031",
        -- missionLayerId,
        [1] = "81203378522300387",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1826417961");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "magenta",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ENABLE GVR1",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1830513378");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_31_Activated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_31_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152983738782031",
        -- missionLayerId,
        [1] = "54181780757790733",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_36()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "GVR4_off",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|1967545672");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_10_Activated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_10_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152983738782031",
        -- missionLayerId,
        [1] = "27160182993523024",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|2028942770");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_24_Activated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_24_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152983738782031",
        -- missionLayerId,
        [1] = "45174581503045059",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\Debug_TD_Graphic.domino|@Debug_TD_Graphic|2104035278");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "magenta",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ENABLE LIGHT ART",
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
