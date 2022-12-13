LUAC�g  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_330/mis_330_b10.domino
-- User graph: MIS_330_GiveDriverOutfit
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="PlayerID" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/EquipWolfskinItem.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/WolfskinItemListener.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Female_Outfit",
            },
            [1] = {
                name = "Male_Outfit",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Equipped",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PlayerID",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/EquipWolfskinItem.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Equip",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equipped",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "itemDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/SimpleNode.lua")] = {
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
    metadataTable[GetPathID("Domino/System/WolfskinItemListener.lua")] = {
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
                name = "Equipped",
                delayed = true,
            },
            [3] = {
                name = "Unequipped",
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
                name = "itemDescriptor",
                type = "genericdb",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "itemEquipped",
                type = "genericdb",
            },
            [1] = {
                name = "wearer",
                type = "entity",
            },
        },
        dataOutCount = 2,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_330_GiveDriverOutfit";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit";
    self.Out = DummyFunction;
    self.Equipped = DummyFunction;
    self.box_WolfskinItemListener_2 = cbox:CreateBox("Domino/System/WolfskinItemListener.lua");
    l0 = self.box_WolfskinItemListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WolfskinItemListener_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|1374495381");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_WolfskinItemListener_2_Enabled,
        -- Equipped,
        [2] = self.f_box_WolfskinItemListener_2_Equipped,
    });
    self.box_WolfskinItemListener_9 = cbox:CreateBox("Domino/System/WolfskinItemListener.lua");
    l0 = self.box_WolfskinItemListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WolfskinItemListener_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|2020526726");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_WolfskinItemListener_9_Enabled,
        -- Equipped,
        [2] = self.f_box_WolfskinItemListener_9_Equipped,
    });
end;

function export:Female_Outfit()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|693754378", "693754378", "MIS_330_GiveDriverOutfit", "Female Outfit", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Male_Outfit()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|372555745", "372555745", "MIS_330_GiveDriverOutfit", "Male Outfit", "box_OutputOrder_v2_13.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|853463293", "853463293", "MIS_330_GiveDriverOutfit", "box_Simple_Node_15.Out", "Equipped", clone:GetLuaBox(), self);
    self:Equipped();
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|1229374589", "1229374589", "MIS_330_GiveDriverOutfit", "box_OutputOrder_v2_4.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_WolfskinItemListener_2();
    l0 = self.box_WolfskinItemListener_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|1357698221", "1357698221", "MIS_330_GiveDriverOutfit", "box_OutputOrder_v2_4.Out", "box_WolfskinItemListener_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_14();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|1394203715", "1394203715", "MIS_330_GiveDriverOutfit", "box_OutputOrder_v2_7.Out", "box_EquipWolfskinItem_14.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_8();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|69987611", "69987611", "MIS_330_GiveDriverOutfit", "box_OutputOrder_v2_7.Out", "box_EquipWolfskinItem_8.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_10();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|9016202", "9016202", "MIS_330_GiveDriverOutfit", "box_OutputOrder_v2_7.Out", "box_EquipWolfskinItem_10.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_6();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|448549399", "448549399", "MIS_330_GiveDriverOutfit", "box_OutputOrder_v2_7.Out", "box_EquipWolfskinItem_6.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|976154810", "976154810", "MIS_330_GiveDriverOutfit", "box_OutputOrder_v2_13.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_WolfskinItemListener_9();
    l0 = self.box_WolfskinItemListener_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|1364844371", "1364844371", "MIS_330_GiveDriverOutfit", "box_OutputOrder_v2_13.Out", "box_WolfskinItemListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_11();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|647951013", "647951013", "MIS_330_GiveDriverOutfit", "box_OutputOrder_v2_3.Out", "box_EquipWolfskinItem_11.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_5();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|146679230", "146679230", "MIS_330_GiveDriverOutfit", "box_OutputOrder_v2_3.Out", "box_EquipWolfskinItem_5.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_12();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|309540832", "309540832", "MIS_330_GiveDriverOutfit", "box_OutputOrder_v2_3.Out", "box_EquipWolfskinItem_12.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_1();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|150415585", "150415585", "MIS_330_GiveDriverOutfit", "box_OutputOrder_v2_3.Out", "box_EquipWolfskinItem_1.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_WolfskinItemListener_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_WolfskinItemListener_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|786899920", "786899920", "MIS_330_GiveDriverOutfit", "box_WolfskinItemListener_2.Enabled", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WolfskinItemListener_2_Equipped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = self.box_WolfskinItemListener_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|1245389466", "1245389466", "MIS_330_GiveDriverOutfit", "box_WolfskinItemListener_2.Equipped", "box_Simple_Node_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WolfskinItemListener_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_WolfskinItemListener_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|1517300925", "1517300925", "MIS_330_GiveDriverOutfit", "box_WolfskinItemListener_9.Enabled", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WolfskinItemListener_9_Equipped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = self.box_WolfskinItemListener_9;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|1663010691", "1663010691", "MIS_330_GiveDriverOutfit", "box_WolfskinItemListener_9.Equipped", "box_Simple_Node_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|@n_equipped");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|310157287");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|402653668");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|731301556");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015340962868334",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|763966732");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015340966919027",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|795682889");
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

function export:OnEnter_box_EquipWolfskinItem_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|838677781");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015340963294840",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|1004344525");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
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
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
                [3] = self.f_box_OutputOrder_v2_3_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|1129130887");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015340967451880",
    };
    return params;
end;

function export:OnEnter_box_WolfskinItemListener_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptor,
        [1] = "9015340967404167",
        -- pawns,
        [2] = self.PlayerID,
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|1634527247");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015340967404167",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|1939378560");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015340964168850",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|2019160015");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015340967114643",
    };
    return params;
end;

function export:OnEnter_box_WolfskinItemListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptor,
        [1] = "9015340967451880",
        -- pawns,
        [2] = self.PlayerID,
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_GiveDriverOutfit|2092699695");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015340964223217",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Equipped()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Female_Outfit" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Male_Outfit" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Equipped" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="PlayerID" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
