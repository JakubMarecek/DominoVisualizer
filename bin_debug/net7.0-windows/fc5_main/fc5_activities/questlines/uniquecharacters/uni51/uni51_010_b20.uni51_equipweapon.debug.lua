LUACL5 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni51/uni51_010_b20.domino
-- User graph: UNI51_EquipWeapon
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Weapon" Type="Nomad|genericdb" />
    <DataIn Name="oHostObjective" Type="Nomad|oasis" />
    <DataIn Name="eHostMarker" Type="Nomad|entity{}" />
    <DataIn Name="oClientObjective" Type="Nomad|oasis" />
    <DataIn Name="eClientMarker" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnWeaponCheck_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B20.UNI51_EquipWeapon.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "eClientMarker",
                type = "entity",
            },
            [1] = {
                name = "eHostMarker",
                type = "entity",
            },
            [2] = {
                name = "oClientObjective",
                type = "oasis",
            },
            [3] = {
                name = "oHostObjective",
                type = "oasis",
            },
            [4] = {
                name = "Weapon",
                type = "genericdb",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")] = {
        stateless = true,
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
                name = "CharacterId",
                type = "genericdb",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
            [2] = {
                name = "ObjectiveId",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
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
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "bool",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
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
    metadataTable[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetNumberOfItems",
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
            [0] = {
                name = "numItems",
                type = "int",
            },
        },
        dataOutCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI51_EquipWeapon";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon";
    self.Done = DummyFunction;
    self.NumberOfPlayers = 0;
    self.FriendlyPlayers = nil;
    self.ItemAquiredbyPlayer = 0;
    self.Host = nil;
    self.Client = nil;
    self.box_InventoryItemListener_51 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|56863616");
    l0:SetConnections({
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_51_ItemAdded,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|170159730");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_WieldInventory_v5_45 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|283312287");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_45_Drawn,
    });
    self.box_RestrictedItemModifier_50 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|368354148");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_50_Out,
    });
    self.box_OnceOnly_v3_1 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|425169470");
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
                [0] = self.f_box_OnceOnly_v3_1_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|455542013");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|679952602");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_CoopActivePlayers_31 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|743846477");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_31_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_31_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_31_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_31_TwoPlayers,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1078722940");
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
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1184177618");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
    self.box_InventoryItemListener_42 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1189833670");
    l0:SetConnections({
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_42_ItemAdded,
    });
    self.box_WieldInventory_v5_18 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1208176079");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_18_Drawn,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1365001053");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1402215582");
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
    self.box_OnceOnly_v3_5 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1817706500");
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
                [0] = self.f_box_OnceOnly_v3_5_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1992873774");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_WieldInventory_v5_49 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1996316326");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_49_Drawn,
    });
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|2055111909");
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
        [0] = self.f_box_MultipleOR_47_Out,
    });
    self.box_MultipleAND_v2_25 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|2095702676");
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
        [0] = self.f_box_MultipleAND_v2_25_Out,
    });
    self.box_OnceOnly_v3_6 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|2101580896");
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
                [0] = self.f_box_OnceOnly_v3_6_Out_0,
            },
            count = 2,
        },
    });
    self.box_InventoryItemListener_20 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|2121261024");
    l0:SetConnections({
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_20_ItemAdded,
    });
    self.box_RestrictedItemModifier_44 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|2126579496");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_44_Out,
    });
    self.box_RestrictedItemModifier_2 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|2128109537");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_2_Out,
    });
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_AddActivityObjective_v2_60();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1105107997", "1105107997", "UNI51_EquipWeapon", "Start", "box_AddActivityObjective_v2_60.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_73_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|241028359", "241028359", "UNI51_EquipWeapon", "box_Simple_Node_73.Out", "box_CoopActivePlayers_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_PawnWeaponCheck_v3_40_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|691835196", "691835196", "UNI51_EquipWeapon", "box_PawnWeaponCheck_v3_40.InHands", "box_MultipleOR_43.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_40_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_49();
    l0 = self.box_WieldInventory_v5_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1224200996", "1224200996", "UNI51_EquipWeapon", "box_PawnWeaponCheck_v3_40.InInventory", "box_WieldInventory_v5_49.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_InventoryItemListener_51_ItemAdded()
    local l0, l1;
    l0 = self.box_InventoryItemListener_51;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1578801245", "1578801245", "UNI51_EquipWeapon", "box_InventoryItemListener_51.ItemAdded", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Entity_10_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|2077568492", "2077568492", "UNI51_EquipWeapon", "box_Compare_Entity_10.Equal", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Entity_32_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1222032334", "1222032334", "UNI51_EquipWeapon", "box_Compare_Entity_32.Equal", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Entity_32_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_10();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|541988912", "541988912", "UNI51_EquipWeapon", "box_Compare_Entity_32.NotEqual", "box_Compare_Entity_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_35_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1802844519", "1802844519", "UNI51_EquipWeapon", "box_Compare_Integers_35.A_ge_B", "box_MultipleOR_47.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_35_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_51();
    l0 = self.box_InventoryItemListener_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|823048770", "823048770", "UNI51_EquipWeapon", "box_Compare_Integers_35.A_lt_B", "box_InventoryItemListener_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_50();
    l0 = self.box_MultipleOR_43;
    l1 = self.box_RestrictedItemModifier_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|922454920", "922454920", "UNI51_EquipWeapon", "box_MultipleOR_43.Out", "box_RestrictedItemModifier_50.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_WieldInventory_v5_45_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_45;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|456251326", "456251326", "UNI51_EquipWeapon", "box_WieldInventory_v5_45.Drawn", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetInventoryItemQuantity_41_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_41_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_35();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|986207822", "986207822", "UNI51_EquipWeapon", "box_GetInventoryItemQuantity_41.Out", "box_Compare_Integers_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RestrictedItemModifier_50_Out()
    local l0, l1;
    l0 = self.box_RestrictedItemModifier_50;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|727351049", "727351049", "UNI51_EquipWeapon", "box_RestrictedItemModifier_50.Out", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_1_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_OnceOnly_v3_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1882336032", "1882336032", "UNI51_EquipWeapon", "box_OnceOnly_v3_1.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_9;
    l1 = self.box_OnceOnly_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1896088170", "1896088170", "UNI51_EquipWeapon", "box_MultipleOR_9.Out", "box_OnceOnly_v3_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_2();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_RestrictedItemModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|2143779788", "2143779788", "UNI51_EquipWeapon", "box_MultipleOR_14.Out", "box_RestrictedItemModifier_2.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_36_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1433488304", "1433488304", "UNI51_EquipWeapon", "box_ActivityObjectiveMarkerModifier_v3_36.Enabled", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_62_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|873262490", "873262490", "UNI51_EquipWeapon", "box_EndActivityObjective_v2_62.Out", "Done", clone:GetLuaBox(), self);
    self:Done();
end;

function export:f_box_CoopActivePlayers_31_OnePlayer()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_31_OnePlayer();
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_61();
    l0 = self.box_CoopActivePlayers_31;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|273173418", "273173418", "UNI51_EquipWeapon", "box_CoopActivePlayers_31.OnePlayer", "box_ActivityObjectiveMarkerModifier_v3_61.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_31_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_3();
    l0 = self.box_CoopActivePlayers_31;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1304873435", "1304873435", "UNI51_EquipWeapon", "box_CoopActivePlayers_31.PlayerAdded", "box_Simple_Node_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_31_PlayerRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_32();
    l0 = self.box_CoopActivePlayers_31;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1552719864", "1552719864", "UNI51_EquipWeapon", "box_CoopActivePlayers_31.PlayerRemoved", "box_Compare_Entity_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_31_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_31_TwoPlayers();
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_36();
    l0 = self.box_CoopActivePlayers_31;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|991019442", "991019442", "UNI51_EquipWeapon", "box_CoopActivePlayers_31.TwoPlayers", "box_ActivityObjectiveMarkerModifier_v3_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PawnWeaponCheck_v3_46_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|538513878", "538513878", "UNI51_EquipWeapon", "box_PawnWeaponCheck_v3_46.InHands", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_46_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_45();
    l0 = self.box_WieldInventory_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|969500500", "969500500", "UNI51_EquipWeapon", "box_PawnWeaponCheck_v3_46.InInventory", "box_WieldInventory_v5_45.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_60_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|101093794", "101093794", "UNI51_EquipWeapon", "box_AddActivityObjective_v2_60.Out", "box_CoopActivePlayers_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_73();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|187544617", "187544617", "UNI51_EquipWeapon", "box_OutputOrder_v2_7.Out", "box_Simple_Node_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_62();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1126083346", "1126083346", "UNI51_EquipWeapon", "box_OutputOrder_v2_7.Out", "box_EndActivityObjective_v2_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_11;
    l1 = self.box_OnceOnly_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1372412558", "1372412558", "UNI51_EquipWeapon", "box_MultipleOR_11.Out", "box_OnceOnly_v3_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetInventoryItemQuantity_28_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_28_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_19();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|2056959222", "2056959222", "UNI51_EquipWeapon", "box_GetInventoryItemQuantity_28.Out", "box_Compare_Integers_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PawnWeaponCheck_v3_40();
    l0 = self.box_MultipleOR_38;
    l1 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|202160481", "202160481", "UNI51_EquipWeapon", "box_MultipleOR_38.Out", "box_PawnWeaponCheck_v3_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemListener_42_ItemAdded()
    local l0, l1;
    l0 = self.box_InventoryItemListener_42;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1279528504", "1279528504", "UNI51_EquipWeapon", "box_InventoryItemListener_42.ItemAdded", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_WieldInventory_v5_18_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_18;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|163564505", "163564505", "UNI51_EquipWeapon", "box_WieldInventory_v5_18.Drawn", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_44();
    l0 = self.box_MultipleOR_37;
    l1 = self.box_RestrictedItemModifier_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|520581321", "520581321", "UNI51_EquipWeapon", "box_MultipleOR_37.Out", "box_RestrictedItemModifier_44.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_13_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_13;
    l1 = self.box_OnceOnly_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1792671649", "1792671649", "UNI51_EquipWeapon", "box_MultipleOR_13.Out", "box_OnceOnly_v3_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_4_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1617399613", "1617399613", "UNI51_EquipWeapon", "box_PawnWeaponCheck_v3_4.InHands", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_4_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_18();
    l0 = self.box_WieldInventory_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1305070889", "1305070889", "UNI51_EquipWeapon", "box_PawnWeaponCheck_v3_4.InInventory", "box_WieldInventory_v5_18.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_61_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_28();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1371845135", "1371845135", "UNI51_EquipWeapon", "box_ActivityObjectiveMarkerModifier_v3_61.Enabled", "box_GetInventoryItemQuantity_28.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_48_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|797429028", "797429028", "UNI51_EquipWeapon", "box_Compare_Integers_48.A_ge_B", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_48_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_42();
    l0 = self.box_InventoryItemListener_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1385700623", "1385700623", "UNI51_EquipWeapon", "box_Compare_Integers_48.A_lt_B", "box_InventoryItemListener_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_5_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_25();
    l0 = self.box_OnceOnly_v3_5;
    l1 = self.box_MultipleAND_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1902243782", "1902243782", "UNI51_EquipWeapon", "box_OnceOnly_v3_5.Out", "box_MultipleAND_v2_25.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Compare_Integers_19_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1705546895", "1705546895", "UNI51_EquipWeapon", "box_Compare_Integers_19.A_ge_B", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_19_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_20();
    l0 = self.box_InventoryItemListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|522107572", "522107572", "UNI51_EquipWeapon", "box_Compare_Integers_19.A_lt_B", "box_InventoryItemListener_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetInventoryItemQuantity_39_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_39_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_48();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1780762041", "1780762041", "UNI51_EquipWeapon", "box_GetInventoryItemQuantity_39.Out", "box_Compare_Integers_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_41();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1384719243", "1384719243", "UNI51_EquipWeapon", "box_OutputOrder_v2_27.Out", "box_GetInventoryItemQuantity_41.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_39();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1606261148", "1606261148", "UNI51_EquipWeapon", "box_OutputOrder_v2_27.Out", "box_GetInventoryItemQuantity_39.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PawnWeaponCheck_v3_4();
    l0 = self.box_MultipleOR_29;
    l1 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|118661139", "118661139", "UNI51_EquipWeapon", "box_MultipleOR_29.Out", "box_PawnWeaponCheck_v3_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WieldInventory_v5_49_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_49;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|174445282", "174445282", "UNI51_EquipWeapon", "box_WieldInventory_v5_49.Drawn", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PawnWeaponCheck_v3_46();
    l0 = self.box_MultipleOR_47;
    l1 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1914458927", "1914458927", "UNI51_EquipWeapon", "box_MultipleOR_47.Out", "box_PawnWeaponCheck_v3_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_25_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_25;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1046490353", "1046490353", "UNI51_EquipWeapon", "box_MultipleAND_v2_25.Out", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_6_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_25();
    l0 = self.box_OnceOnly_v3_6;
    l1 = self.box_MultipleAND_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1070267715", "1070267715", "UNI51_EquipWeapon", "box_OnceOnly_v3_6.Out", "box_MultipleAND_v2_25.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_InventoryItemListener_20_ItemAdded()
    local l0, l1;
    l0 = self.box_InventoryItemListener_20;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|994413242", "994413242", "UNI51_EquipWeapon", "box_InventoryItemListener_20.ItemAdded", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RestrictedItemModifier_44_Out()
    local l0, l1;
    l0 = self.box_RestrictedItemModifier_44;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1226069941", "1226069941", "UNI51_EquipWeapon", "box_RestrictedItemModifier_44.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RestrictedItemModifier_2_Out()
    local l0, l1;
    l0 = self.box_RestrictedItemModifier_2;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|890757041", "890757041", "UNI51_EquipWeapon", "box_RestrictedItemModifier_2.Out", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|@Disable");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_73_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|39313855");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_40_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_40_InInventory,
    });
    params = {
        -- pawn,
        [2] = self.Client,
        -- weaponDesc,
        [3] = self.Weapon,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = self.Weapon,
        -- players,
        [3] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|126828981");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_10_Equal,
    });
    l0 = self.box_CoopActivePlayers_31;
    params = {
        -- Entity1,
        [0] = self.Client,
        -- Entity2,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|139289527");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_32_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_32_NotEqual,
    });
    l0 = self.box_CoopActivePlayers_31;
    params = {
        -- Entity1,
        [0] = self.Host,
        -- Entity2,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|147980816");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_35_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_35_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_41,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_45()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = self.Weapon,
        -- pawns,
        [2] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|342395255");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_41_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = self.Weapon,
        -- players,
        [2] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_50()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = self.Weapon,
        -- players,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|695233403");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_36_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eHostMarker,
        -- ObjectiveId,
        [2] = self.oHostObjective,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|718331189");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_62_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oHostObjective,
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|813099821");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_46_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_46_InInventory,
    });
    params = {
        -- pawn,
        [2] = self.Host,
        -- weaponDesc,
        [3] = self.Weapon,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|843467386");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_60_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = self.oHostObjective,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|977991822");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1150721615");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_28_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = self.Weapon,
        -- players,
        [2] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_42()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = self.Weapon,
        -- players,
        [3] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_18()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = self.Weapon,
        -- pawns,
        [2] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1626645682");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_4_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_4_InInventory,
    });
    params = {
        -- pawn,
        [2] = self.Host,
        -- weaponDesc,
        [3] = self.Weapon,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1653329809");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_61_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eHostMarker,
        -- ObjectiveId,
        [2] = self.oHostObjective,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1666830132");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_48_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_48_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_39,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1834973715");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_19_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_19_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_28,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1907690482");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_39_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = self.Weapon,
        -- players,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1983773148");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_EquipWeapon|1991147034");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_49()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = self.Weapon,
        -- pawns,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_25()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = self.Weapon,
        -- players,
        [3] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_44()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = self.Weapon,
        -- players,
        [2] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_2()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = self.Weapon,
        -- players,
        [2] = self.Host,
    };
    return params;
end;

function export:OnExit_box_GetInventoryItemQuantity_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_41 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_31_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_31;
    self.Host = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_31_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_31;
    self.Host = l0:GetDataOutValue(0);
    self.Client = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetInventoryItemQuantity_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_28 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_39 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Done()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Done" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eClientMarker" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eHostMarker" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="oClientObjective" AnchorDynType="0" DataTypeID="oasis" />
		<DataIn Name="oHostObjective" AnchorDynType="0" DataTypeID="oasis" />
		<DataIn Name="Weapon" AnchorDynType="0" DataTypeID="genericdb" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
