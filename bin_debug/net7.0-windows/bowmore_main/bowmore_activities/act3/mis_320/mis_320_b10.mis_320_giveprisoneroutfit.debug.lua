LUACVh  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_320/mis_320_b10.domino
-- User graph: MIS_320_GivePrisonerOutfit
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua")] = {
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
    self._name = "MIS_320_GivePrisonerOutfit";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit";
    self.Equipped = DummyFunction;
    self.Out = DummyFunction;
    self.box_WolfskinItemListener_5 = cbox:CreateBox("Domino/System/WolfskinItemListener.lua");
    l0 = self.box_WolfskinItemListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WolfskinItemListener_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1620306817");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_WolfskinItemListener_5_Enabled,
        -- Equipped,
        [2] = self.f_box_WolfskinItemListener_5_Equipped,
    });
    self.box_WolfskinItemListener_1 = cbox:CreateBox("Domino/System/WolfskinItemListener.lua");
    l0 = self.box_WolfskinItemListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WolfskinItemListener_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1630978061");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_WolfskinItemListener_1_Enabled,
        -- Equipped,
        [2] = self.f_box_WolfskinItemListener_1_Equipped,
    });
end;

function export:Female_Outfit()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|95927123", "95927123", "MIS_320_GivePrisonerOutfit", "Female Outfit", "box_OutputOrder_v2_14.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Male_Outfit()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|688128980", "688128980", "MIS_320_GivePrisonerOutfit", "Male Outfit", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|563462560", "563462560", "MIS_320_GivePrisonerOutfit", "box_Simple_Node_15.Out", "Equipped", clone:GetLuaBox(), self);
    self:Equipped();
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_7();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|600061619", "600061619", "MIS_320_GivePrisonerOutfit", "box_OutputOrder_v2_6.Out", "box_EquipWolfskinItem_7.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_11();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1428879603", "1428879603", "MIS_320_GivePrisonerOutfit", "box_OutputOrder_v2_6.Out", "box_EquipWolfskinItem_11.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_12();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1023737319", "1023737319", "MIS_320_GivePrisonerOutfit", "box_OutputOrder_v2_6.Out", "box_EquipWolfskinItem_12.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_13();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|918263464", "918263464", "MIS_320_GivePrisonerOutfit", "box_OutputOrder_v2_6.Out", "box_EquipWolfskinItem_13.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|675391462", "675391462", "MIS_320_GivePrisonerOutfit", "box_OutputOrder_v2_14.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_WolfskinItemListener_5();
    l0 = self.box_WolfskinItemListener_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1653438640", "1653438640", "MIS_320_GivePrisonerOutfit", "box_OutputOrder_v2_14.Out", "box_WolfskinItemListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_8();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1913545966", "1913545966", "MIS_320_GivePrisonerOutfit", "box_OutputOrder_v2_4.Out", "box_EquipWolfskinItem_8.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_9();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|124357030", "124357030", "MIS_320_GivePrisonerOutfit", "box_OutputOrder_v2_4.Out", "box_EquipWolfskinItem_9.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_10();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|250767458", "250767458", "MIS_320_GivePrisonerOutfit", "box_OutputOrder_v2_4.Out", "box_EquipWolfskinItem_10.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_2();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1826605527", "1826605527", "MIS_320_GivePrisonerOutfit", "box_OutputOrder_v2_4.Out", "box_EquipWolfskinItem_2.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|11428039", "11428039", "MIS_320_GivePrisonerOutfit", "box_OutputOrder_v2_3.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_WolfskinItemListener_1();
    l0 = self.box_WolfskinItemListener_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|459534444", "459534444", "MIS_320_GivePrisonerOutfit", "box_OutputOrder_v2_3.Out", "box_WolfskinItemListener_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_WolfskinItemListener_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_WolfskinItemListener_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1787813605", "1787813605", "MIS_320_GivePrisonerOutfit", "box_WolfskinItemListener_5.Enabled", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WolfskinItemListener_5_Equipped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = self.box_WolfskinItemListener_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|10999465", "10999465", "MIS_320_GivePrisonerOutfit", "box_WolfskinItemListener_5.Equipped", "box_Simple_Node_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WolfskinItemListener_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_WolfskinItemListener_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1879595729", "1879595729", "MIS_320_GivePrisonerOutfit", "box_WolfskinItemListener_1.Enabled", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WolfskinItemListener_1_Equipped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = self.box_WolfskinItemListener_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1710650502", "1710650502", "MIS_320_GivePrisonerOutfit", "box_WolfskinItemListener_1.Equipped", "box_Simple_Node_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|@n_equipped");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|168840222");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015335596500420",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|826098110");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015335595880083",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|959050789");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015335596552352",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|985368059");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
                [3] = self.f_box_OutputOrder_v2_6_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1026763353");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1089118308");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015335595968954",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1090876205");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015260416397278",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1272688162");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
                [3] = self.f_box_OutputOrder_v2_4_Out_3,
            },
            count = 4,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1388383758");
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

function export:OnEnter_box_EquipWolfskinItem_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1586396751");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015335596702688",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1590240357");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015335597017479",
    };
    return params;
end;

function export:OnEnter_box_WolfskinItemListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptor,
        [1] = "9015335596500420",
        -- pawns,
        [2] = self.PlayerID,
    };
    return params;
end;

function export:OnEnter_box_WolfskinItemListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptor,
        [1] = "9015335596552352",
        -- pawns,
        [2] = self.PlayerID,
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_GivePrisonerOutfit|1757353005");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.PlayerID,
        -- itemDescriptorID,
        [1] = "9015266458262267",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Equipped()
    
end;
function export:Out()
    
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
