LUAC5/ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b20.domino
-- User graph: Intro_010_B20_PlayerAbility
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
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryPackModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InventoryWieldModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_PlayerAbility.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable_Abilities",
            },
            [1] = {
                name = "Enable_Abilities_Fight",
            },
            [2] = {
                name = "Restore_CompleteAbilities",
            },
            [3] = {
                name = "Restore_CompleteInventory",
            },
            [4] = {
                name = "Start_Inventory",
            },
        },
        controlInCount = 5,
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
    metadataTable[GetPathID("Domino/System/InventoryPackModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Load",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Failed",
                delayed = false,
            },
            [1] = {
                name = "Loaded",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "inventoryPackId",
                type = "genericdb",
            },
            [1] = {
                name = "players",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/Player/IgnoreSignal_v2.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "signal",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/InventoryWieldModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableAutoDraw",
            },
            [1] = {
                name = "EnableAutoDraw",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "AutoDrawDisabled",
                delayed = false,
            },
            [1] = {
                name = "AutoDrawEnabled",
                delayed = false,
            },
            [2] = {
                name = "Error",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/RestrictedItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddItem",
            },
            [1] = {
                name = "Clear",
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
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Intro_010_B20_PlayerAbility";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility";
    self.Out = DummyFunction;
    self.box_IgnoreSignal_v2_5 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|25549756");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_5_Enabled,
    });
    self.box_IgnoreSignal_v2_16 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|43357236");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_16_Disabled,
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_16_Enabled,
    });
    self.box_IgnoreSignal_v2_20 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|47513548");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_20_Enabled,
    });
    self.box_InventoryWieldModifier_v2_43 = cbox:CreateBox("Domino/System/Player/InventoryWieldModifier_v2.lua");
    l0 = self.box_InventoryWieldModifier_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryWieldModifier_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|110970148");
    l0:SetConnections({
        -- AutoDrawEnabled,
        [1] = self.f_box_InventoryWieldModifier_v2_43_AutoDrawEnabled,
    });
    self.box_InventoryItemModifier_1 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|185344285");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_1_Out,
    });
    self.box_IgnoreSignal_v2_28 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|239816210");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_28_Disabled,
    });
    self.box_IgnoreSignal_v2_51 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|257010131");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_51_Disabled,
    });
    self.box_InventoryItemModifier_2 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|308688869");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_2_Out,
    });
    self.box_RestrictedItemModifier_26 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|364225746");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_26_Out,
    });
    self.box_RestrictedItemModifier_48 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|654328947");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_48_Out,
    });
    self.box_IgnoreSignal_v2_36 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|662673794");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_36_Disabled,
    });
    self.box_IgnoreSignal_v2_31 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|732570257");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_31_Disabled,
    });
    self.box_IgnoreSignal_v2_18 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|750850536");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_18_Enabled,
    });
    self.box_IgnoreSignal_v2_7 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|778230020");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_7_Enabled,
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|871414411");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_IgnoreSignal_v2_45 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|877402282");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_45_Disabled,
    });
    self.box_InventoryItemModifier_46 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1047274297");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_46_Out,
    });
    self.box_IgnoreSignal_v2_17 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1069067384");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_17_Disabled,
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_17_Enabled,
    });
    self.box_IgnoreSignal_v2_29 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1098316253");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_29_Disabled,
    });
    self.box_InventoryItemModifier_47 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1130545680");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_47_Out,
    });
    self.box_InventoryWieldModifier_v2_10 = cbox:CreateBox("Domino/System/Player/InventoryWieldModifier_v2.lua");
    l0 = self.box_InventoryWieldModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryWieldModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1143880921");
    l0:SetConnections({
        -- AutoDrawDisabled,
        [0] = self.f_box_InventoryWieldModifier_v2_10_AutoDrawDisabled,
    });
    self.box_IgnoreSignal_v2_12 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1156285244");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_12_Enabled,
    });
    self.box_IgnoreSignal_v2_40 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1160774820");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_40_Disabled,
    });
    self.box_RestrictedItemModifier_4 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1196049416");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_4_Out,
    });
    self.box_InventoryPackModifier_3 = cbox:CreateBox("Domino/System/InventoryPackModifier.lua");
    l0 = self.box_InventoryPackModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryPackModifier_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1237548789");
    l0:SetConnections({
        -- Loaded,
        [1] = self.f_box_InventoryPackModifier_3_Loaded,
    });
    self.box_IgnoreSignal_v2_50 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1238376583");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_50_Enabled,
    });
    self.box_InventoryItemModifier_25 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1284792346");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_25_Out,
    });
    self.box_IgnoreSignal_v2_21 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1290677283");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_21_Enabled,
    });
    self.box_IgnoreSignal_v2_15 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1319813551");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_15_Enabled,
    });
    self.box_IgnoreSignal_v2_34 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1368309946");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_34_Disabled,
    });
    self.box_IgnoreSignal_v2_32 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1406827163");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_32_Disabled,
    });
    self.box_IgnoreSignal_v2_39 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1425419177");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_39_Disabled,
    });
    self.box_IgnoreSignal_v2_9 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1443305946");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_9_Enabled,
    });
    self.box_IgnoreSignal_v2_38 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1471486897");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_38_Disabled,
    });
    self.box_IgnoreSignal_v2_52 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1516082251");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_52_Disabled,
    });
    self.box_IgnoreSignal_v2_22 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1529420703");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_22_Enabled,
    });
    self.box_IgnoreSignal_v2_23 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1552004024");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_23_Enabled,
    });
    self.box_IgnoreSignal_v2_19 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1568932765");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_19_Enabled,
    });
    self.box_IgnoreSignal_v2_37 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1591749199");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_37_Disabled,
    });
    self.box_IgnoreSignal_v2_6 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1598826216");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_6_Disabled,
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_6_Enabled,
    });
    self.box_IgnoreSignal_v2_42 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1624360664");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_42_Disabled,
    });
    self.box_IgnoreSignal_v2_8 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1647513106");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_8_Enabled,
    });
    self.box_IgnoreSignal_v2_44 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1693458536");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_44_Disabled,
    });
    self.box_IgnoreSignal_v2_11 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1708142634");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_11_Disabled,
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_11_Enabled,
    });
    self.box_IgnoreSignal_v2_30 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1814980857");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_30_Disabled,
    });
    self.box_IgnoreSignal_v2_27 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1931380632");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_27_Enabled,
    });
    self.box_IgnoreSignal_v2_14 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1946894327");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_14_Disabled,
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_14_Enabled,
    });
    self.box_IgnoreSignal_v2_33 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1948149574");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_33_Disabled,
    });
    self.box_IgnoreSignal_v2_35 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|2012796808");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_35_Disabled,
    });
    self.box_IgnoreSignal_v2_41 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|2029373692");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_41_Disabled,
    });
end;

function export:Disable_Abilities()
    local params, l0;
    params = self:OnEnter_box_InventoryWieldModifier_v2_10();
    l0 = self.box_InventoryWieldModifier_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|772721281", "772721281", "Intro_010_B20_PlayerAbility", "Disable_Abilities", "box_InventoryWieldModifier_v2_10.DisableAutoDraw", self, l0:GetLuaBox());
    -- DisableAutoDraw
    l0:Exec(0, params);
end;

function export:Enable_Abilities_Fight()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1289613086", "1289613086", "Intro_010_B20_PlayerAbility", "Enable_Abilities_Fight", "box_OutputOrder_v2_24.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Restore_CompleteAbilities()
    local params, l0;
    params = self:OnEnter_box_IgnoreSignal_v2_41();
    l0 = self.box_IgnoreSignal_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|2093957963", "2093957963", "Intro_010_B20_PlayerAbility", "Restore_CompleteAbilities", "box_IgnoreSignal_v2_41.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:Restore_CompleteInventory()
    local params, l0;
    params = self:OnEnter_box_RestrictedItemModifier_48();
    l0 = self.box_RestrictedItemModifier_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|2119440217", "2119440217", "Intro_010_B20_PlayerAbility", "Restore_CompleteInventory", "box_RestrictedItemModifier_48.Clear", self, l0:GetLuaBox());
    -- Clear
    l0:Exec(1, params);
end;

function export:Start_Inventory()
    local params, l0;
    params = self:OnEnter_box_InventoryPackModifier_3();
    l0 = self.box_InventoryPackModifier_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1929532650", "1929532650", "Intro_010_B20_PlayerAbility", "Start_Inventory", "box_InventoryPackModifier_3.Load", self, l0:GetLuaBox());
    -- Load
    l0:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_20();
    l0 = self.box_IgnoreSignal_v2_5;
    l1 = self.box_IgnoreSignal_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|733574335", "733574335", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_5.Enabled", "box_IgnoreSignal_v2_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_16_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_25();
    l0 = self.box_IgnoreSignal_v2_16;
    l1 = self.box_InventoryItemModifier_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|579475011", "579475011", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_16.Disabled", "box_InventoryItemModifier_25.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_16_Enabled()
    local l0, l1;
    l0 = self.box_IgnoreSignal_v2_16;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|521120161", "521120161", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_16.Enabled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IgnoreSignal_v2_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_19();
    l0 = self.box_IgnoreSignal_v2_20;
    l1 = self.box_IgnoreSignal_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1041260197", "1041260197", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_20.Enabled", "box_IgnoreSignal_v2_19.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_InventoryWieldModifier_v2_43_AutoDrawEnabled()
    local l0, l1;
    l0 = self.box_InventoryWieldModifier_v2_43;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1852592599", "1852592599", "Intro_010_B20_PlayerAbility", "box_InventoryWieldModifier_v2_43.AutoDrawEnabled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_InventoryItemModifier_1_Out()
    local l0, l1;
    l0 = self.box_InventoryItemModifier_1;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|520042520", "520042520", "Intro_010_B20_PlayerAbility", "box_InventoryItemModifier_1.Out", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IgnoreSignal_v2_28_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_31();
    l0 = self.box_IgnoreSignal_v2_28;
    l1 = self.box_IgnoreSignal_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|588050216", "588050216", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_28.Disabled", "box_IgnoreSignal_v2_31.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_51_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_33();
    l0 = self.box_IgnoreSignal_v2_51;
    l1 = self.box_IgnoreSignal_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|58925108", "58925108", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_51.Disabled", "box_IgnoreSignal_v2_33.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_4();
    l0 = self.box_InventoryItemModifier_2;
    l1 = self.box_RestrictedItemModifier_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|842327259", "842327259", "Intro_010_B20_PlayerAbility", "box_InventoryItemModifier_2.Out", "box_RestrictedItemModifier_4.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_RestrictedItemModifier_26_Out()
    local l0, l1;
    l0 = self.box_RestrictedItemModifier_26;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|676012859", "676012859", "Intro_010_B20_PlayerAbility", "box_RestrictedItemModifier_26.Out", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_RestrictedItemModifier_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_47();
    l0 = self.box_RestrictedItemModifier_48;
    l1 = self.box_InventoryItemModifier_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|406652589", "406652589", "Intro_010_B20_PlayerAbility", "box_RestrictedItemModifier_48.Out", "box_InventoryItemModifier_47.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_IgnoreSignal_v2_36_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_37();
    l0 = self.box_IgnoreSignal_v2_36;
    l1 = self.box_IgnoreSignal_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|2094993606", "2094993606", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_36.Disabled", "box_IgnoreSignal_v2_37.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_31_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_34();
    l0 = self.box_IgnoreSignal_v2_31;
    l1 = self.box_IgnoreSignal_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1526250181", "1526250181", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_31.Disabled", "box_IgnoreSignal_v2_34.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_18_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_21();
    l0 = self.box_IgnoreSignal_v2_18;
    l1 = self.box_IgnoreSignal_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|811768180", "811768180", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_18.Enabled", "box_IgnoreSignal_v2_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_7_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_5();
    l0 = self.box_IgnoreSignal_v2_7;
    l1 = self.box_IgnoreSignal_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|442540972", "442540972", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_7.Enabled", "box_IgnoreSignal_v2_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_49_Out()
    local l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1472498927", "1472498927", "Intro_010_B20_PlayerAbility", "box_MultipleOR_49.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_IgnoreSignal_v2_45_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_28();
    l0 = self.box_IgnoreSignal_v2_45;
    l1 = self.box_IgnoreSignal_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1439670866", "1439670866", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_45.Disabled", "box_IgnoreSignal_v2_28.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_46_Out()
    local l0, l1;
    l0 = self.box_InventoryItemModifier_46;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|317438125", "317438125", "Intro_010_B20_PlayerAbility", "box_InventoryItemModifier_46.Out", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IgnoreSignal_v2_17_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_6();
    l0 = self.box_IgnoreSignal_v2_17;
    l1 = self.box_IgnoreSignal_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|986226739", "986226739", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_17.Disabled", "box_IgnoreSignal_v2_6.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_17_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_6();
    l0 = self.box_IgnoreSignal_v2_17;
    l1 = self.box_IgnoreSignal_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1179676677", "1179676677", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_17.Enabled", "box_IgnoreSignal_v2_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_29_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_40();
    l0 = self.box_IgnoreSignal_v2_29;
    l1 = self.box_IgnoreSignal_v2_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1754976112", "1754976112", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_29.Disabled", "box_IgnoreSignal_v2_40.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_46();
    l0 = self.box_InventoryItemModifier_47;
    l1 = self.box_InventoryItemModifier_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1631136015", "1631136015", "Intro_010_B20_PlayerAbility", "box_InventoryItemModifier_47.Out", "box_InventoryItemModifier_46.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_InventoryWieldModifier_v2_10_AutoDrawDisabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_8();
    l0 = self.box_InventoryWieldModifier_v2_10;
    l1 = self.box_IgnoreSignal_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|880472538", "880472538", "Intro_010_B20_PlayerAbility", "box_InventoryWieldModifier_v2_10.AutoDrawDisabled", "box_IgnoreSignal_v2_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_12_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_18();
    l0 = self.box_IgnoreSignal_v2_12;
    l1 = self.box_IgnoreSignal_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|597929391", "597929391", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_12.Enabled", "box_IgnoreSignal_v2_18.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_40_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_30();
    l0 = self.box_IgnoreSignal_v2_40;
    l1 = self.box_IgnoreSignal_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|121937515", "121937515", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_40.Disabled", "box_IgnoreSignal_v2_30.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_RestrictedItemModifier_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_1();
    l0 = self.box_RestrictedItemModifier_4;
    l1 = self.box_InventoryItemModifier_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|308373151", "308373151", "Intro_010_B20_PlayerAbility", "box_RestrictedItemModifier_4.Out", "box_InventoryItemModifier_1.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_InventoryPackModifier_3_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_2();
    l0 = self.box_InventoryPackModifier_3;
    l1 = self.box_InventoryItemModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|931439932", "931439932", "Intro_010_B20_PlayerAbility", "box_InventoryPackModifier_3.Loaded", "box_InventoryItemModifier_2.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_50_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_17();
    l0 = self.box_IgnoreSignal_v2_50;
    l1 = self.box_IgnoreSignal_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1711299998", "1711299998", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_50.Enabled", "box_IgnoreSignal_v2_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_InventoryItemModifier_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_26();
    l0 = self.box_InventoryItemModifier_25;
    l1 = self.box_RestrictedItemModifier_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1433248003", "1433248003", "Intro_010_B20_PlayerAbility", "box_InventoryItemModifier_25.Out", "box_RestrictedItemModifier_26.Clear", l0:GetLuaBox(), l1:GetLuaBox());
    -- Clear
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_21_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_22();
    l0 = self.box_IgnoreSignal_v2_21;
    l1 = self.box_IgnoreSignal_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1403968158", "1403968158", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_21.Enabled", "box_IgnoreSignal_v2_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_23();
    l0 = self.box_IgnoreSignal_v2_15;
    l1 = self.box_IgnoreSignal_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|870815905", "870815905", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_15.Enabled", "box_IgnoreSignal_v2_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_34_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_38();
    l0 = self.box_IgnoreSignal_v2_34;
    l1 = self.box_IgnoreSignal_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|278346865", "278346865", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_34.Disabled", "box_IgnoreSignal_v2_38.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_32_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_29();
    l0 = self.box_IgnoreSignal_v2_32;
    l1 = self.box_IgnoreSignal_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1794432792", "1794432792", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_32.Disabled", "box_IgnoreSignal_v2_29.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_39_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_52();
    l0 = self.box_IgnoreSignal_v2_39;
    l1 = self.box_IgnoreSignal_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1344588838", "1344588838", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_39.Disabled", "box_IgnoreSignal_v2_52.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_7();
    l0 = self.box_IgnoreSignal_v2_9;
    l1 = self.box_IgnoreSignal_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1114671974", "1114671974", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_9.Enabled", "box_IgnoreSignal_v2_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_17();
    l0 = self.box_IgnoreSignal_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|78768950", "78768950", "Intro_010_B20_PlayerAbility", "box_OutputOrder_v2_24.Out", "box_IgnoreSignal_v2_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryWieldModifier_v2_10();
    l0 = self.box_InventoryWieldModifier_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|488908392", "488908392", "Intro_010_B20_PlayerAbility", "box_OutputOrder_v2_24.Out", "box_InventoryWieldModifier_v2_10.EnableAutoDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnableAutoDraw
    l0:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_38_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_44();
    l0 = self.box_IgnoreSignal_v2_38;
    l1 = self.box_IgnoreSignal_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1003811690", "1003811690", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_38.Disabled", "box_IgnoreSignal_v2_44.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_52_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_51();
    l0 = self.box_IgnoreSignal_v2_52;
    l1 = self.box_IgnoreSignal_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1761173605", "1761173605", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_52.Disabled", "box_IgnoreSignal_v2_51.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_15();
    l0 = self.box_IgnoreSignal_v2_22;
    l1 = self.box_IgnoreSignal_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|346401296", "346401296", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_22.Enabled", "box_IgnoreSignal_v2_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_27();
    l0 = self.box_IgnoreSignal_v2_23;
    l1 = self.box_IgnoreSignal_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1243011769", "1243011769", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_23.Enabled", "box_IgnoreSignal_v2_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_19_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_12();
    l0 = self.box_IgnoreSignal_v2_19;
    l1 = self.box_IgnoreSignal_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1059346294", "1059346294", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_19.Enabled", "box_IgnoreSignal_v2_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_37_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_39();
    l0 = self.box_IgnoreSignal_v2_37;
    l1 = self.box_IgnoreSignal_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|641422617", "641422617", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_37.Disabled", "box_IgnoreSignal_v2_39.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_6_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_14();
    l0 = self.box_IgnoreSignal_v2_6;
    l1 = self.box_IgnoreSignal_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1826632107", "1826632107", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_6.Disabled", "box_IgnoreSignal_v2_14.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_6_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_14();
    l0 = self.box_IgnoreSignal_v2_6;
    l1 = self.box_IgnoreSignal_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|2138916181", "2138916181", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_6.Enabled", "box_IgnoreSignal_v2_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_42_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryWieldModifier_v2_43();
    l0 = self.box_IgnoreSignal_v2_42;
    l1 = self.box_InventoryWieldModifier_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|435300044", "435300044", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_42.Disabled", "box_InventoryWieldModifier_v2_43.EnableAutoDraw", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableAutoDraw
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_9();
    l0 = self.box_IgnoreSignal_v2_8;
    l1 = self.box_IgnoreSignal_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|2103380820", "2103380820", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_8.Enabled", "box_IgnoreSignal_v2_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_44_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_36();
    l0 = self.box_IgnoreSignal_v2_44;
    l1 = self.box_IgnoreSignal_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|102153441", "102153441", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_44.Disabled", "box_IgnoreSignal_v2_36.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_11_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_16();
    l0 = self.box_IgnoreSignal_v2_11;
    l1 = self.box_IgnoreSignal_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1193832389", "1193832389", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_11.Disabled", "box_IgnoreSignal_v2_16.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_11_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_16();
    l0 = self.box_IgnoreSignal_v2_11;
    l1 = self.box_IgnoreSignal_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1390446856", "1390446856", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_11.Enabled", "box_IgnoreSignal_v2_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_30_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_45();
    l0 = self.box_IgnoreSignal_v2_30;
    l1 = self.box_IgnoreSignal_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|702611377", "702611377", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_30.Disabled", "box_IgnoreSignal_v2_45.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_27_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_50();
    l0 = self.box_IgnoreSignal_v2_27;
    l1 = self.box_IgnoreSignal_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1662335919", "1662335919", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_27.Enabled", "box_IgnoreSignal_v2_50.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_14_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_11();
    l0 = self.box_IgnoreSignal_v2_14;
    l1 = self.box_IgnoreSignal_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|996145874", "996145874", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_14.Disabled", "box_IgnoreSignal_v2_11.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_14_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_11();
    l0 = self.box_IgnoreSignal_v2_14;
    l1 = self.box_IgnoreSignal_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1079516454", "1079516454", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_14.Enabled", "box_IgnoreSignal_v2_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_33_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_42();
    l0 = self.box_IgnoreSignal_v2_33;
    l1 = self.box_IgnoreSignal_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|991154986", "991154986", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_33.Disabled", "box_IgnoreSignal_v2_42.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_35_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_32();
    l0 = self.box_IgnoreSignal_v2_35;
    l1 = self.box_IgnoreSignal_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1816439286", "1816439286", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_35.Disabled", "box_IgnoreSignal_v2_32.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_41_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_35();
    l0 = self.box_IgnoreSignal_v2_41;
    l1 = self.box_IgnoreSignal_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|919044095", "919044095", "Intro_010_B20_PlayerAbility", "box_IgnoreSignal_v2_41.Disabled", "box_IgnoreSignal_v2_35.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:OnEnter_box_IgnoreSignal_v2_5()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "heal",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_16()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "press_ironsight",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_20()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "open_crafting",
    };
    return params;
end;

function export:OnEnter_box_InventoryWieldModifier_v2_43()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_1()
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

function export:OnEnter_box_IgnoreSignal_v2_28()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "melee_blocking",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_51()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "toggle_no_weapon",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_2()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015213189219337",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_26()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015287676933283",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_48()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015287676933283",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_36()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "ironsight",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_31()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "short_range_melee_start",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_18()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "vault",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_7()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "open_avatar_menu",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_45()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "sabotage",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_46()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015220298226478",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_17()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "short_range_melee_start",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_29()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "open_crafting",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_47()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015221917595682",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryWieldModifier_v2_10()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_12()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "release_rock",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_40()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "vault",
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_4()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015287676933283",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_InventoryPackModifier_3()
    local params;
    params = {
        -- inventoryPackId,
        [0] = "9015224054845487",
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_50()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "toggle_no_weapon",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_25()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015220298226478",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_21()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "climb",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_15()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "melee_blocking",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_34()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "short_range_melee_start_HACK",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_32()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "heal",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_39()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "select_last_weapon",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_9()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@Intro_010_B20_PlayerAbility|1455724669");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_38()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "open_inventory",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_52()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "toggle_binoculars",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_22()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "sabotage",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_23()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "select_last_weapon",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_19()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "throw_rock",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_37()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "press_ironsight",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_6()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "short_range_melee_start_HACK",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_42()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "release_rock",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_8()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "sprint",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_44()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "updateshooting",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_11()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "ironsight",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_30()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "climb",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_27()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "toggle_binoculars",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_14()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "updateshooting",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_33()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "throw_rock",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_35()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "open_inventory",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_41()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable_Abilities" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable_Abilities_Fight" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Restore_CompleteAbilities" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Restore_CompleteInventory" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start_Inventory" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
