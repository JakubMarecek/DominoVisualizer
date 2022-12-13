LUAC�}  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/dbg/exp_swamp_dbg.domino
-- User graph: AmmoAndThrowable
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
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/DBG/Exp_Swamp_DBG.AmmoAndThrowable.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/InventoryItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Refill",
            },
            [2] = {
                name = "RefillClip",
            },
            [3] = {
                name = "Remove",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
            [3] = {
                name = "quantity",
                type = "int",
            },
        },
        dataInCount = 4,
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
    self._name = "AmmoAndThrowable";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable";
    self.box_InventoryItemModifier_18 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|21971109");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_10 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|78075790");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_10_Execute,
    });
    self.box_InventoryItemModifier_12 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|293592085");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_9 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|363049647");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_9_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_9_Execute,
    });
    self.box_ConsoleCommand_v3_2 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|463991145");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_2_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_2_Execute,
    });
    self.box_ConsoleCommand_v3_1 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|735547103");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_1_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_1_Execute,
    });
    self.box_InventoryItemModifier_16 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1059801256");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_28 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1683469088");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_28_Execute,
    });
    self.box_InventoryItemModifier_3 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1751782728");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_14 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1761797021");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_8 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1784262612");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_8_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_8_Execute,
    });
    self.box_InventoryItemModifier_21 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1917585883");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1159256208", "1159256208", "AmmoAndThrowable", "In", "box_OutputOrder_v2_22.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_10_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_ConsoleCommand_v3_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|2072158327", "2072158327", "AmmoAndThrowable", "box_ConsoleCommand_v3_10.Execute", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_14();
    l0 = self.box_InventoryItemModifier_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1976581792", "1976581792", "AmmoAndThrowable", "box_OutputOrder_v2_23.Out", "box_InventoryItemModifier_14.Refill", clone:GetLuaBox(), l0:GetLuaBox());
    -- Refill
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_14();
    l0 = self.box_InventoryItemModifier_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|831436081", "831436081", "AmmoAndThrowable", "box_OutputOrder_v2_23.Out", "box_InventoryItemModifier_14.RefillClip", clone:GetLuaBox(), l0:GetLuaBox());
    -- RefillClip
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_18();
    l0 = self.box_InventoryItemModifier_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1057381347", "1057381347", "AmmoAndThrowable", "box_OutputOrder_v2_17.Out", "box_InventoryItemModifier_18.Refill", clone:GetLuaBox(), l0:GetLuaBox());
    -- Refill
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_18();
    l0 = self.box_InventoryItemModifier_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1406402123", "1406402123", "AmmoAndThrowable", "box_OutputOrder_v2_17.Out", "box_InventoryItemModifier_18.RefillClip", clone:GetLuaBox(), l0:GetLuaBox());
    -- RefillClip
    l0:Exec(2, params);
end;

function export:f_box_ConsoleCommand_v3_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_10();
    l0 = self.box_ConsoleCommand_v3_9;
    l1 = self.box_ConsoleCommand_v3_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1991518082", "1991518082", "AmmoAndThrowable", "box_ConsoleCommand_v3_9.Enabled", "box_ConsoleCommand_v3_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_9_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_ConsoleCommand_v3_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1980698225", "1980698225", "AmmoAndThrowable", "box_ConsoleCommand_v3_9.Execute", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_8();
    l0 = self.box_ConsoleCommand_v3_2;
    l1 = self.box_ConsoleCommand_v3_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|157326647", "157326647", "AmmoAndThrowable", "box_ConsoleCommand_v3_2.Enabled", "box_ConsoleCommand_v3_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_2_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_ConsoleCommand_v3_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1055445712", "1055445712", "AmmoAndThrowable", "box_ConsoleCommand_v3_2.Execute", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_12();
    l0 = self.box_InventoryItemModifier_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1368621596", "1368621596", "AmmoAndThrowable", "box_OutputOrder_v2_13.Out", "box_InventoryItemModifier_12.Refill", clone:GetLuaBox(), l0:GetLuaBox());
    -- Refill
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_12();
    l0 = self.box_InventoryItemModifier_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|255490471", "255490471", "AmmoAndThrowable", "box_OutputOrder_v2_13.Out", "box_InventoryItemModifier_12.RefillClip", clone:GetLuaBox(), l0:GetLuaBox());
    -- RefillClip
    l0:Exec(2, params);
end;

function export:f_box_ConsoleCommand_v3_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_2();
    l0 = self.box_ConsoleCommand_v3_1;
    l1 = self.box_ConsoleCommand_v3_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|987951279", "987951279", "AmmoAndThrowable", "box_ConsoleCommand_v3_1.Enabled", "box_ConsoleCommand_v3_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_1_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_ConsoleCommand_v3_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1940031903", "1940031903", "AmmoAndThrowable", "box_ConsoleCommand_v3_1.Execute", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_21();
    l0 = self.box_InventoryItemModifier_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|685807530", "685807530", "AmmoAndThrowable", "box_OutputOrder_v2_29.Out", "box_InventoryItemModifier_21.Refill", clone:GetLuaBox(), l0:GetLuaBox());
    -- Refill
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_21();
    l0 = self.box_InventoryItemModifier_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|19403909", "19403909", "AmmoAndThrowable", "box_OutputOrder_v2_29.Out", "box_InventoryItemModifier_21.RefillClip", clone:GetLuaBox(), l0:GetLuaBox());
    -- RefillClip
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_16();
    l0 = self.box_InventoryItemModifier_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1319073416", "1319073416", "AmmoAndThrowable", "box_OutputOrder_v2_15.Out", "box_InventoryItemModifier_16.Refill", clone:GetLuaBox(), l0:GetLuaBox());
    -- Refill
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_16();
    l0 = self.box_InventoryItemModifier_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|700773843", "700773843", "AmmoAndThrowable", "box_OutputOrder_v2_15.Out", "box_InventoryItemModifier_16.RefillClip", clone:GetLuaBox(), l0:GetLuaBox());
    -- RefillClip
    l0:Exec(2, params);
end;

function export:f_box_ConsoleCommand_v3_28_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_ConsoleCommand_v3_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|744318828", "744318828", "AmmoAndThrowable", "box_ConsoleCommand_v3_28.Execute", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_1();
    l0 = self.box_ConsoleCommand_v3_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|320188364", "320188364", "AmmoAndThrowable", "box_OutputOrder_v2_22.Out", "box_ConsoleCommand_v3_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_28();
    l0 = self.box_ConsoleCommand_v3_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|799320329", "799320329", "AmmoAndThrowable", "box_OutputOrder_v2_22.Out", "box_ConsoleCommand_v3_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_9();
    l0 = self.box_ConsoleCommand_v3_8;
    l1 = self.box_ConsoleCommand_v3_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1677277817", "1677277817", "AmmoAndThrowable", "box_ConsoleCommand_v3_8.Enabled", "box_ConsoleCommand_v3_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_8_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_ConsoleCommand_v3_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|2029662304", "2029662304", "AmmoAndThrowable", "box_ConsoleCommand_v3_8.Execute", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_3();
    l0 = self.box_InventoryItemModifier_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|431900582", "431900582", "AmmoAndThrowable", "box_OutputOrder_v2_26.Out", "box_InventoryItemModifier_3.Refill", clone:GetLuaBox(), l0:GetLuaBox());
    -- Refill
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_3();
    l0 = self.box_InventoryItemModifier_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|465987522", "465987522", "AmmoAndThrowable", "box_OutputOrder_v2_26.Out", "box_InventoryItemModifier_3.RefillClip", clone:GetLuaBox(), l0:GetLuaBox());
    -- RefillClip
    l0:Exec(2, params);
end;

function export:OnEnter_box_InventoryItemModifier_18()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015346581699014",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_10()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "refill_05",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|180470036");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|286853419");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_12()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015271283550565",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_9()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "refill_04",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_2()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "refill_02",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|598093668");
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

function export:OnEnter_box_ConsoleCommand_v3_1()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "refill_01",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_16()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015268885567900",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1455338920");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1670445307");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_28()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "refill",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1697144083");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_3()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015271178428520",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_14()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015271283566047",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_8()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "refill_03",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@AmmoAndThrowable|1808856301");
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

function export:OnEnter_box_InventoryItemModifier_21()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015354108522703",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
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
