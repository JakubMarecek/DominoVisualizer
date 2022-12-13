LUAC�p  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/world/infiniteammopile.domino
-- User graph: Interaction
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eAmmoPile" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/World/InfiniteAmmoPile.Interaction.debug.lua")] = {
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
            [0] = {
                name = "eAmmoPile",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/RandomInteger_v2.lua")] = {
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
            [0] = {
                name = "Max",
                type = "int",
            },
            [1] = {
                name = "Min",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Interaction";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction";
    self.ePlayer = nil;
    self.box_InventoryItemModifier_13 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|165855206");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_13_Out,
    });
    self.box_UniversalInteractionListener_1 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|274944417");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_1_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_1_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_1_Interacted,
    });
    self.box_InventoryItemModifier_11 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|765076586");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_11_Out,
    });
    self.box_InventoryItemModifier_2 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1049043288");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_2_Out,
    });
    self.box_InventoryItemModifier_15 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1233635728");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_15_Out,
    });
    self.box_InventoryItemModifier_14 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1408368380");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_14_Out,
    });
    self.box_InventoryItemModifier_6 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1472706860");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_6_Out,
    });
    self.box_InventoryItemModifier_5 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1474204097");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_8 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1647285183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_8_Out,
    });
    self.box_InventoryItemModifier_12 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1689153729");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_12_Out,
    });
    self.box_InventoryItemModifier_9 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1954642222");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_9_Out,
    });
    self.box_InventoryItemModifier_10 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|2012427430");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_10_Out,
    });
    self.box_InventoryItemModifier_17 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|2095167930");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_16 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|2101233459");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_16_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionListener_1();
    l0 = self.box_UniversalInteractionListener_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|336883384", "336883384", "Interaction", "In", "box_UniversalInteractionListener_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_InventoryItemModifier_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_14();
    l0 = self.box_InventoryItemModifier_13;
    l1 = self.box_InventoryItemModifier_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1786789095", "1786789095", "Interaction", "box_InventoryItemModifier_13.Out", "box_InventoryItemModifier_14.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionListener_1_Interacted()
    local params, l0, l1;
    self:OnExit_box_UniversalInteractionListener_1_Interacted();
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_UniversalInteractionListener_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|516374324", "516374324", "Interaction", "box_UniversalInteractionListener_1.Interacted", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_12();
    l0 = self.box_InventoryItemModifier_11;
    l1 = self.box_InventoryItemModifier_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1693796588", "1693796588", "Interaction", "box_InventoryItemModifier_11.Out", "box_InventoryItemModifier_12.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_RandomInteger_v2_3_Out()
    local params, l0;
    self:OnExit_box_RandomInteger_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_7();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|804656523", "804656523", "Interaction", "box_RandomInteger_v2_3.Out", "box_Compare_Integers_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_9();
    l0 = self.box_InventoryItemModifier_2;
    l1 = self.box_InventoryItemModifier_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|487741677", "487741677", "Interaction", "box_InventoryItemModifier_2.Out", "box_InventoryItemModifier_9.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_16();
    l0 = self.box_InventoryItemModifier_15;
    l1 = self.box_InventoryItemModifier_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|2103042547", "2103042547", "Interaction", "box_InventoryItemModifier_15.Out", "box_InventoryItemModifier_16.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_15();
    l0 = self.box_InventoryItemModifier_14;
    l1 = self.box_InventoryItemModifier_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1967138029", "1967138029", "Interaction", "box_InventoryItemModifier_14.Out", "box_InventoryItemModifier_15.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_8();
    l0 = self.box_InventoryItemModifier_6;
    l1 = self.box_InventoryItemModifier_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1251692312", "1251692312", "Interaction", "box_InventoryItemModifier_6.Out", "box_InventoryItemModifier_8.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_7_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_5();
    l0 = self.box_InventoryItemModifier_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|990867077", "990867077", "Interaction", "box_Compare_Integers_7.A_eq_B", "box_InventoryItemModifier_5.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_10();
    l0 = self.box_InventoryItemModifier_8;
    l1 = self.box_InventoryItemModifier_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1842027350", "1842027350", "Interaction", "box_InventoryItemModifier_8.Out", "box_InventoryItemModifier_10.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_13();
    l0 = self.box_InventoryItemModifier_12;
    l1 = self.box_InventoryItemModifier_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1928538792", "1928538792", "Interaction", "box_InventoryItemModifier_12.Out", "box_InventoryItemModifier_13.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_2();
    l0 = self.box_InventoryItemModifier_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1775124658", "1775124658", "Interaction", "box_OutputOrder_v2_4.Out", "box_InventoryItemModifier_2.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomInteger_v2_3();
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|719604946", "719604946", "Interaction", "box_OutputOrder_v2_4.Out", "box_RandomInteger_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_6();
    l0 = self.box_InventoryItemModifier_9;
    l1 = self.box_InventoryItemModifier_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|370348082", "370348082", "Interaction", "box_InventoryItemModifier_9.Out", "box_InventoryItemModifier_6.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_11();
    l0 = self.box_InventoryItemModifier_10;
    l1 = self.box_InventoryItemModifier_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|326128070", "326128070", "Interaction", "box_InventoryItemModifier_10.Out", "box_InventoryItemModifier_11.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_17();
    l0 = self.box_InventoryItemModifier_16;
    l1 = self.box_InventoryItemModifier_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|241213576", "241213576", "Interaction", "box_InventoryItemModifier_16.Out", "box_InventoryItemModifier_17.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:OnEnter_box_InventoryItemModifier_13()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234174810",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 50,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = self.eAmmoPile,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_11()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234118852",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 8,
    };
    return params;
end;

function export:OnEnter_box_RandomInteger_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomInteger_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|979223774");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomInteger_v2_3_Out,
    });
    params = {
        -- Max,
        [0] = 3,
        -- Min,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_2()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234130547",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 30,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_15()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234136155",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_14()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234143947",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 2,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_6()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234124204",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 40,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_5()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927638943126",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1565664297");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_7_A_eq_B,
    });
    params = {
        -- A,
        [0] = self._sld_Result_box_RandomInteger_v2_3,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_8()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234092606",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 8,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_12()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015251705383497",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\InfiniteAmmoPile.domino|@Interaction|1721201515");
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

function export:OnEnter_box_InventoryItemModifier_9()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015251705182346",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 30,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_10()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234183569",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 2,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_17()
    local params;
    DrawTextToScreen("Comment: ALL AMMO ADDED", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InventoryItemModifier')-- Comment: ALL AMMO ADDED");
    params = {
        -- itemDescriptorID,
        [0] = "9015330224936853",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 6,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_16()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015330224925369",
        -- players,
        [2] = self.ePlayer,
        -- quantity,
        [3] = 6,
    };
    return params;
end;

function export:OnExit_box_UniversalInteractionListener_1_Interacted()
    local l0;
    l0 = self.box_UniversalInteractionListener_1;
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomInteger_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    self._sld_Result_box_RandomInteger_v2_3 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="eAmmoPile" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
