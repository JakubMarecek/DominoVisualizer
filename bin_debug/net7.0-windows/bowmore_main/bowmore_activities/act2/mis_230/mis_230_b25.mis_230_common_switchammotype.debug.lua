LUACX -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_230/mis_230_b25.domino
-- User graph: MIS_230_COMMON_SwitchAmmoType
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EquippableWieldListener.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnWeaponCheck_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SwitchAmmoType.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Fire",
            },
            [1] = {
                name = "Normal",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "out",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ClearRestriction",
            },
            [1] = {
                name = "DisableListeners",
            },
            [2] = {
                name = "RemoveItems",
            },
            [3] = {
                name = "RestrictItems",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Cleared",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
            [2] = {
                name = "Restricted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "ItemFilterDBID",
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/EquippableWieldListener.lua")] = {
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
                name = "Drawn",
                delayed = true,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "Holstered",
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
                name = "itemFilter",
                type = "genericdb",
            },
            [3] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ammo",
                type = "int",
            },
            [1] = {
                name = "wieldedItem",
                type = "genericdb",
            },
            [2] = {
                name = "wielder",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/InventoryItemListener.lua")] = {
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
                name = "ItemAdded",
                delayed = true,
            },
            [3] = {
                name = "ItemRemoved",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [2] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [3] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "itemQuantityRemain",
                type = "int",
            },
            [1] = {
                name = "outItemDescriptorID",
                type = "genericdb",
            },
            [2] = {
                name = "player",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InHands",
                delayed = false,
            },
            [1] = {
                name = "InInventory",
                delayed = false,
            },
            [2] = {
                name = "NotFound",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "categoryName",
                type = "string",
            },
            [1] = {
                name = "className",
                type = "string",
            },
            [2] = {
                name = "pawn",
                type = "entity",
            },
            [3] = {
                name = "weaponDesc",
                type = "genericdb",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/WieldInventory_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LuaDraw",
            },
            [1] = {
                name = "LuaHolster",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Drawn",
                delayed = false,
            },
            [1] = {
                name = "Holstered",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "itemDescriptorId",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterId",
                type = "genericdb",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
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
    self._name = "MIS_230_COMMON_SwitchAmmoType";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType";
    self.out = DummyFunction;
    self.CurrentAmmo = nil;
    self.Weapon = nil;
    self.box_InventoryItemModifier_24 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|31215157");
    l0:SetConnections({
    });
    self.box_ManagePlayerInventory_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|90966241");
    l0:SetConnections({
        -- Cleared,
        [0] = self.f_box_ManagePlayerInventory_2_Cleared,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|191331035");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_InventoryItemModifier_27 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|211806419");
    l0:SetConnections({
    });
    self.box_WieldInventory_v5_5 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|276333403");
    l0:SetConnections({
    });
    self.box_EquippableWieldListener_3 = cbox:CreateBox("Domino/System/EquippableWieldListener.lua");
    l0 = self.box_EquippableWieldListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquippableWieldListener_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|300463310");
    l0:SetConnections({
        -- Drawn,
        [1] = self.f_box_EquippableWieldListener_3_Drawn,
        -- Enabled,
        [2] = self.f_box_EquippableWieldListener_3_Enabled,
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|304815168");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_InventoryItemListener_4 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|367099301");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_InventoryItemListener_4_Enabled,
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_4_ItemAdded,
    });
    self.box_ManagePlayerInventory_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|413503587");
    l0:SetConnections({
        -- Cleared,
        [0] = self.f_box_ManagePlayerInventory_19_Cleared,
    });
    self.box_InventoryItemModifier_6 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|469334249");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_6_Out,
    });
    self.box_InventoryItemModifier_35 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|726752248");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_35_Out,
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1090778257");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_InventoryItemListener_7 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1119676174");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_InventoryItemListener_7_Enabled,
        -- ItemRemoved,
        [3] = self.f_box_InventoryItemListener_7_ItemRemoved,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1152551121");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_InventoryItemListener_21 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1188474946");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_InventoryItemListener_21_Enabled,
        -- ItemRemoved,
        [3] = self.f_box_InventoryItemListener_21_ItemRemoved,
    });
    self.box_ManagePlayerInventory_36 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1209723988");
    l0:SetConnections({
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1440221099");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1448749565");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_EquippableWieldListener_34 = cbox:CreateBox("Domino/System/EquippableWieldListener.lua");
    l0 = self.box_EquippableWieldListener_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquippableWieldListener_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1467178217");
    l0:SetConnections({
        -- Drawn,
        [1] = self.f_box_EquippableWieldListener_34_Drawn,
        -- Enabled,
        [2] = self.f_box_EquippableWieldListener_34_Enabled,
    });
    self.box_InventoryItemListener_29 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1489020955");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_InventoryItemListener_29_Enabled,
        -- ItemRemoved,
        [3] = self.f_box_InventoryItemListener_29_ItemRemoved,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1494818410");
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
    self.box_WieldInventory_v5_8 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1540480652");
    l0:SetConnections({
    });
    self.box_WieldInventory_v5_14 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1547575159");
    l0:SetConnections({
    });
    self.box_EquippableWieldListener_13 = cbox:CreateBox("Domino/System/EquippableWieldListener.lua");
    l0 = self.box_EquippableWieldListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquippableWieldListener_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1583775732");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_EquippableWieldListener_13_Enabled,
        -- Holstered,
        [3] = self.f_box_EquippableWieldListener_13_Holstered,
    });
    self.box_ManagePlayerInventory_37 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1651835209");
    l0:SetConnections({
    });
    self.box_WieldInventory_v5_25 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1669252673");
    l0:SetConnections({
    });
    self.box_EquippableWieldListener_30 = cbox:CreateBox("Domino/System/EquippableWieldListener.lua");
    l0 = self.box_EquippableWieldListener_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquippableWieldListener_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1821929356");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_EquippableWieldListener_30_Enabled,
        -- Holstered,
        [3] = self.f_box_EquippableWieldListener_30_Holstered,
    });
    self.box_InventoryItemModifier_26 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1922341313");
    l0:SetConnections({
    });
    self.box_InventoryItemListener_18 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1968437039");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_InventoryItemListener_18_Enabled,
        -- ItemRemoved,
        [3] = self.f_box_InventoryItemListener_18_ItemRemoved,
    });
    self.box_InventoryItemListener_20 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1991868394");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_InventoryItemListener_20_Enabled,
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_20_ItemAdded,
    });
    self.box_InventoryItemModifier_31 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|2053109981");
    l0:SetConnections({
    });
end;

function export:Fire()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1905417883", "1905417883", "MIS_230_COMMON_SwitchAmmoType", "Fire", "box_OutputOrder_v2_17.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Normal()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|202074456", "202074456", "MIS_230_COMMON_SwitchAmmoType", "Normal", "box_OutputOrder_v2_10.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ManagePlayerInventory_2_Cleared()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_37();
    l0 = self.box_ManagePlayerInventory_2;
    l1 = self.box_ManagePlayerInventory_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1299503212", "1299503212", "MIS_230_COMMON_SwitchAmmoType", "box_ManagePlayerInventory_2.Cleared", "box_ManagePlayerInventory_37.RestrictItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- RestrictItems
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_MultipleOR_32;
    l1 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|2047894644", "2047894644", "MIS_230_COMMON_SwitchAmmoType", "box_MultipleOR_32.Out", "box_Delay_v5_39.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EquippableWieldListener_3_Drawn()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_6();
    l0 = self.box_EquippableWieldListener_3;
    l1 = self.box_InventoryItemModifier_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|117134221", "117134221", "MIS_230_COMMON_SwitchAmmoType", "box_EquippableWieldListener_3.Drawn", "box_InventoryItemModifier_6.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_EquippableWieldListener_3_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_5();
    l0 = self.box_EquippableWieldListener_3;
    l1 = self.box_WieldInventory_v5_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1037421542", "1037421542", "MIS_230_COMMON_SwitchAmmoType", "box_EquippableWieldListener_3.Enabled", "box_WieldInventory_v5_5.LuaDraw", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaDraw
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemListener_20();
    l0 = self.box_Delay_v5_39;
    l1 = self.box_InventoryItemListener_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1577203258", "1577203258", "MIS_230_COMMON_SwitchAmmoType", "box_Delay_v5_39.TimeElapsed", "box_InventoryItemListener_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_InventoryItemListener_4_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_31();
    l0 = self.box_InventoryItemListener_4;
    l1 = self.box_InventoryItemModifier_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1786213574", "1786213574", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemListener_4.Enabled", "box_InventoryItemModifier_31.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemListener_4_ItemAdded()
    local params, l0, l1;
    params = self:OnEnter_box_EquippableWieldListener_3();
    l0 = self.box_InventoryItemListener_4;
    l1 = self.box_EquippableWieldListener_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1539055828", "1539055828", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemListener_4.ItemAdded", "box_EquippableWieldListener_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ManagePlayerInventory_19_Cleared()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_36();
    l0 = self.box_ManagePlayerInventory_19;
    l1 = self.box_ManagePlayerInventory_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|476228903", "476228903", "MIS_230_COMMON_SwitchAmmoType", "box_ManagePlayerInventory_19.Cleared", "box_ManagePlayerInventory_36.RestrictItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- RestrictItems
    l1:Exec(3, params);
end;

function export:f_box_InventoryItemModifier_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_19();
    l0 = self.box_InventoryItemModifier_6;
    l1 = self.box_ManagePlayerInventory_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|551785967", "551785967", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemModifier_6.Out", "box_ManagePlayerInventory_19.ClearRestriction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ClearRestriction
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_2();
    l0 = self.box_InventoryItemModifier_35;
    l1 = self.box_ManagePlayerInventory_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|257923698", "257923698", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemModifier_35.Out", "box_ManagePlayerInventory_2.ClearRestriction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ClearRestriction
    l1:Exec(0, params);
end;

function export:f_box_PawnWeaponCheck_v3_33_InHands()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_21();
    l0 = self.box_InventoryItemListener_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1268288233", "1268288233", "MIS_230_COMMON_SwitchAmmoType", "box_PawnWeaponCheck_v3_33.InHands", "box_InventoryItemListener_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PawnWeaponCheck_v3_33_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_29();
    l0 = self.box_InventoryItemListener_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1593842524", "1593842524", "MIS_230_COMMON_SwitchAmmoType", "box_PawnWeaponCheck_v3_33.InInventory", "box_InventoryItemListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PawnWeaponCheck_v3_33_NotFound()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|271479492", "271479492", "MIS_230_COMMON_SwitchAmmoType", "box_PawnWeaponCheck_v3_33.NotFound", "box_Print_v2_1.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponCheck_v3_28();
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|685020068", "685020068", "MIS_230_COMMON_SwitchAmmoType", "box_OutputOrder_v2_17.Out", "box_PawnWeaponCheck_v3_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1160835686", "1160835686", "MIS_230_COMMON_SwitchAmmoType", "box_OutputOrder_v2_17.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_MultipleOR_22;
    l1 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1543746561", "1543746561", "MIS_230_COMMON_SwitchAmmoType", "box_MultipleOR_22.Out", "box_Delay_v5_38.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_InventoryItemListener_7_Enabled()
    local l0, l1;
    l0 = self.box_InventoryItemListener_7;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1591870781", "1591870781", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemListener_7.Enabled", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InventoryItemListener_7_ItemRemoved()
    local l0, l1;
    l0 = self.box_InventoryItemListener_7;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1673990981", "1673990981", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemListener_7.ItemRemoved", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_27();
    l0 = self.box_MultipleOR_15;
    l1 = self.box_InventoryItemModifier_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|628861717", "628861717", "MIS_230_COMMON_SwitchAmmoType", "box_MultipleOR_15.Out", "box_InventoryItemModifier_27.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_InventoryItemListener_21_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EquippableWieldListener_13();
    l0 = self.box_InventoryItemListener_21;
    l1 = self.box_EquippableWieldListener_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|864916720", "864916720", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemListener_21.Enabled", "box_EquippableWieldListener_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_InventoryItemListener_21_ItemRemoved()
    local l0, l1;
    l0 = self.box_InventoryItemListener_21;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1669061337", "1669061337", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemListener_21.ItemRemoved", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponCheck_v3_33();
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1192150123", "1192150123", "MIS_230_COMMON_SwitchAmmoType", "box_OutputOrder_v2_10.Out", "box_PawnWeaponCheck_v3_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|808914990", "808914990", "MIS_230_COMMON_SwitchAmmoType", "box_OutputOrder_v2_10.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemListener_4();
    l0 = self.box_Delay_v5_38;
    l1 = self.box_InventoryItemListener_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1522641875", "1522641875", "MIS_230_COMMON_SwitchAmmoType", "box_Delay_v5_38.TimeElapsed", "box_InventoryItemListener_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_26();
    l0 = self.box_MultipleOR_16;
    l1 = self.box_InventoryItemModifier_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|2047472990", "2047472990", "MIS_230_COMMON_SwitchAmmoType", "box_MultipleOR_16.Out", "box_InventoryItemModifier_26.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_EquippableWieldListener_34_Drawn()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_35();
    l0 = self.box_EquippableWieldListener_34;
    l1 = self.box_InventoryItemModifier_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|773459569", "773459569", "MIS_230_COMMON_SwitchAmmoType", "box_EquippableWieldListener_34.Drawn", "box_InventoryItemModifier_35.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_EquippableWieldListener_34_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_8();
    l0 = self.box_EquippableWieldListener_34;
    l1 = self.box_WieldInventory_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1025635156", "1025635156", "MIS_230_COMMON_SwitchAmmoType", "box_EquippableWieldListener_34.Enabled", "box_WieldInventory_v5_8.LuaDraw", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaDraw
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemListener_29_Enabled()
    local l0, l1;
    l0 = self.box_InventoryItemListener_29;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|954219638", "954219638", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemListener_29.Enabled", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InventoryItemListener_29_ItemRemoved()
    local l0, l1;
    l0 = self.box_InventoryItemListener_29;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|114656143", "114656143", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemListener_29.ItemRemoved", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_12_Out()
    local l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|44813957", "44813957", "MIS_230_COMMON_SwitchAmmoType", "box_MultipleOR_12.Out", "out", l0:GetLuaBox(), self);
    self:out();
end;

function export:f_box_EquippableWieldListener_13_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_25();
    l0 = self.box_EquippableWieldListener_13;
    l1 = self.box_WieldInventory_v5_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|2000521010", "2000521010", "MIS_230_COMMON_SwitchAmmoType", "box_EquippableWieldListener_13.Enabled", "box_WieldInventory_v5_25.LuaHolster", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaHolster
    l1:Exec(1, params);
end;

function export:f_box_EquippableWieldListener_13_Holstered()
    local l0, l1;
    l0 = self.box_EquippableWieldListener_13;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|763269779", "763269779", "MIS_230_COMMON_SwitchAmmoType", "box_EquippableWieldListener_13.Holstered", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EquippableWieldListener_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_14();
    l0 = self.box_EquippableWieldListener_30;
    l1 = self.box_WieldInventory_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|303199547", "303199547", "MIS_230_COMMON_SwitchAmmoType", "box_EquippableWieldListener_30.Enabled", "box_WieldInventory_v5_14.LuaHolster", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaHolster
    l1:Exec(1, params);
end;

function export:f_box_EquippableWieldListener_30_Holstered()
    local l0, l1;
    l0 = self.box_EquippableWieldListener_30;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1912566648", "1912566648", "MIS_230_COMMON_SwitchAmmoType", "box_EquippableWieldListener_30.Holstered", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_InventoryItemListener_18_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EquippableWieldListener_30();
    l0 = self.box_InventoryItemListener_18;
    l1 = self.box_EquippableWieldListener_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|670896624", "670896624", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemListener_18.Enabled", "box_EquippableWieldListener_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_InventoryItemListener_18_ItemRemoved()
    local l0, l1;
    l0 = self.box_InventoryItemListener_18;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|298632540", "298632540", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemListener_18.ItemRemoved", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InventoryItemListener_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_24();
    l0 = self.box_InventoryItemListener_20;
    l1 = self.box_InventoryItemModifier_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1762214127", "1762214127", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemListener_20.Enabled", "box_InventoryItemModifier_24.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemListener_20_ItemAdded()
    local params, l0, l1;
    params = self:OnEnter_box_EquippableWieldListener_34();
    l0 = self.box_InventoryItemListener_20;
    l1 = self.box_EquippableWieldListener_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|854656901", "854656901", "MIS_230_COMMON_SwitchAmmoType", "box_InventoryItemListener_20.ItemAdded", "box_EquippableWieldListener_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PawnWeaponCheck_v3_28_InHands()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_18();
    l0 = self.box_InventoryItemListener_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1252561778", "1252561778", "MIS_230_COMMON_SwitchAmmoType", "box_PawnWeaponCheck_v3_28.InHands", "box_InventoryItemListener_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PawnWeaponCheck_v3_28_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_7();
    l0 = self.box_InventoryItemListener_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|767321380", "767321380", "MIS_230_COMMON_SwitchAmmoType", "box_PawnWeaponCheck_v3_28.InInventory", "box_InventoryItemListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PawnWeaponCheck_v3_28_NotFound()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1192519113", "1192519113", "MIS_230_COMMON_SwitchAmmoType", "box_PawnWeaponCheck_v3_28.NotFound", "box_Print_v2_9.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_InventoryItemModifier_24()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015351296631242",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_2()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015349424264242",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_27()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015351296639748",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_5()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015351296639748",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EquippableWieldListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptor,
        [1] = "9015351296639748",
        -- pawns,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_39()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015351296639748",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_19()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015349424264242",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_6()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234136155",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 100,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_35()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7928175705766",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 100,
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|731192762");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_33_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_33_InInventory,
        -- NotFound,
        [2] = self.f_box_PawnWeaponCheck_v3_33_NotFound,
    });
    params = {
        -- weaponDesc,
        [3] = "9015351296631242",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1047832818");
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

function export:OnEnter_box_InventoryItemListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015351296639748",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015351296631242",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_36()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015349424264242",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1438436220");
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

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_EquippableWieldListener_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptor,
        [1] = "9015351296631242",
        -- pawns,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015351296631242",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_8()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015351296631242",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_14()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015351296639748",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EquippableWieldListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptor,
        [1] = "9015351296631242",
        -- pawns,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_37()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015349424257715",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_25()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015351296631242",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EquippableWieldListener_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptor,
        [1] = "9015351296639748",
        -- pawns,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_26()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015351296631242",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015351296639748",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|1974454291");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- db,
        [2] = "9015351296631242",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "NOT FOUND!!!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015351296631242",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_31()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015351296639748",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|2092556871");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_28_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_28_InInventory,
        -- NotFound,
        [2] = self.f_box_PawnWeaponCheck_v3_28_NotFound,
    });
    params = {
        -- weaponDesc,
        [3] = "9015351296639748",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B25.domino|@MIS_230_COMMON_SwitchAmmoType|2122805900");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- db,
        [2] = "9015351296639748",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "NOT FOUND!!!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

-- Empty out anchor definitions
function export:out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Fire" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Normal" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
