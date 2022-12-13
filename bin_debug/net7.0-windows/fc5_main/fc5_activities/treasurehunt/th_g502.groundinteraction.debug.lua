LUACr� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/treasurehunt/th_g502.domino
-- User graph: GroundInteraction
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
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2733127543.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.GroundInteraction.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "listenToGroupSizeChange",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
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
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "B",
                type = "float",
            },
            [1] = {
                name = "G",
                type = "float",
            },
            [2] = {
                name = "R",
                type = "float",
            },
            [3] = {
                name = "Speed",
                type = "float",
            },
            [4] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
            },
        },
        controlInCount = 4,
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Poop_Search_In",
            },
            [1] = {
                name = "Water_Flood_Start",
            },
            [2] = {
                name = "Water_Flood_Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Poop_Search_Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Poop_Search_Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Poop_Soundpoint",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "GroundInteraction";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction";
    self.Poop_Soundpoint = nil;
    self.Key = 0;
    self.box_Sound_Manager_51 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2683853");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_51_Poop_Search_Out,
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|18093159");
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
        [0] = self.f_box_MultipleOR_88_Out,
    });
    self.box_RemoveEntity_v2_32 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|101798604");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_32_Out,
    });
    self.box_InventoryItemModifier_68 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|156266667");
    l0:SetConnections({
    });
    self.box_Sound_Manager_43 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|247249694");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_43_Poop_Search_Out,
    });
    self.box_RemoveEntity_v2_25 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|248401956");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_25_Out,
    });
    self.box_InventoryItemModifier_95 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|250287021");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_78 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|263134084");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_78_Out,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|292272054");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_Sound_Manager_102 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|294583249");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_102_Poop_Search_Out,
    });
    self.box_Sound_Manager_13 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|325857582");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_13_Poop_Search_Out,
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|350334147");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_ProximityTrigger_v2_57 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|380869054");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_57_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_57_Use,
    });
    self.box_InventoryItemModifier_27 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|387230341");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_126 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|405693136");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_82 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|412650926");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_82_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_82_Use,
    });
    self.box_RemoveEntity_v2_73 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|438846836");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_73_Out,
    });
    self.box_RemoveEntity_v2_48 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|439199933");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_48_Out,
    });
    self.box_InventoryItemModifier_101 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|439248453");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_80 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|445034080");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_22 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|519005062");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_22_Out,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|532580557");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_Sound_Manager_4 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|535526642");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_4_Poop_Search_Out,
    });
    self.box_MultipleOR_54 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|559170830");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 18,
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
        [0] = self.f_box_MultipleOR_54_Out,
    });
    self.box_MultipleOR_67 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|570849456");
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
        [0] = self.f_box_MultipleOR_67_Out,
    });
    self.box_InventoryItemModifier_98 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|571133780");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_56 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|653860758");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_56_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_56_Use,
    });
    self.box_Sound_Manager_106 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|663054944");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_106_Poop_Search_Out,
    });
    self.box_Sound_Manager_85 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|729263305");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_85_Poop_Search_Out,
    });
    self.box_MultipleOR_90 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|730604927");
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
        [0] = self.f_box_MultipleOR_90_Out,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|741712321");
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
    self.box_ProximityTrigger_v2_108 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|744343702");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_108_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_108_Use,
    });
    self.box_RemoveEntity_v2_61 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|749441432");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_61_Out,
    });
    self.box_Sound_Manager_71 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|769813783");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_71_Poop_Search_Out,
    });
    self.box_InventoryItemListener_26 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|779737820");
    l0:SetConnections({
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_26_ItemAdded,
    });
    self.box_SoundModifier_v2_121 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|812278306");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_120 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|821994956");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_120_Enter,
    });
    self.box_InventoryItemModifier_34 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|824351149");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_34_Out,
    });
    self.box_RemoveEntity_v2_55 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|846453979");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_55_Out,
    });
    self.box_RemoveEntity_v2_115 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|874979061");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_115_Out,
    });
    self.box_ProximityTrigger_v2_28 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|899379083");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_28_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_28_Use,
    });
    self.box_ProximityTrigger_v2_33 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|922538069");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_33_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_33_Use,
    });
    self.box_ProximityTrigger_v2_60 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1009793385");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_60_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_60_Use,
    });
    self.box_InventoryItemModifier_84 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1016010343");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_112 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1016329608");
    l0:SetConnections({
    });
    self.box_Sound_Manager_99 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1064349151");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_99_Poop_Search_Out,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1090740995");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_ProximityTrigger_v2_70 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1096776120");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_70_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_70_Use,
    });
    self.box_RemoveEntity_v2_114 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1099969099");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_114_Out,
    });
    self.box_ProximityTrigger_v2_31 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1136134809");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_31_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_31_Use,
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1175594567");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_ProximityTrigger_v2_6 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1218278180");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_6_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_6_Use,
    });
    self.box_Sound_Manager_49 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1237637106");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_49_Poop_Search_Out,
    });
    self.box_MultipleOR_64 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1274677975");
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
        [0] = self.f_box_MultipleOR_64_Out,
    });
    self.box_InventoryItemModifier_36 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1291704181");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_116 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1423345760");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_116_Out,
    });
    self.box_ProximityTrigger_v2_92 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1458162640");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_92_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_92_Use,
    });
    self.box_Sound_Manager_81 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1468883339");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_81_Poop_Search_Out,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1503839076");
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
    self.box_InventoryItemModifier_59 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1579692557");
    l0:SetConnections({
    });
    self.box_Sound_Manager_58 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1609688820");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_58_Poop_Search_Out,
    });
    self.box_ProximityTrigger_v2_91 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1655666531");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_91_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_91_Use,
    });
    self.box_Random_89 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1750197222");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 14,
        },
        dataIn = {
            [1] = 14,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_89_Output_0,
                [1] = self.f_box_Random_89_Output_1,
                [2] = self.f_box_Random_89_Output_2,
                [3] = self.f_box_Random_89_Output_3,
                [4] = self.f_box_Random_89_Output_4,
                [5] = self.f_box_Random_89_Output_5,
                [6] = self.f_box_Random_89_Output_6,
                [7] = self.f_box_Random_89_Output_7,
                [8] = self.f_box_Random_89_Output_8,
                [9] = self.f_box_Random_89_Output_9,
                [10] = self.f_box_Random_89_Output_10,
                [11] = self.f_box_Random_89_Output_11,
                [12] = self.f_box_Random_89_Output_12,
                [13] = self.f_box_Random_89_Output_13,
            },
            count = 14,
        },
    });
    self.box_RemoveEntity_v2_30 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1765355550");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_30_Out,
    });
    self.box_InventoryItemModifier_21 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1838278606");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_63 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1854479766");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_63_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_63_Use,
    });
    self.box_MultipleOR_103 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1887334651");
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
        [0] = self.f_box_MultipleOR_103_Out,
    });
    self.box_RemoveEntity_v2_72 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1921366317");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_72_Out,
    });
    self.box_Sound_Manager_14 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1937477202");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_14_Poop_Search_Out,
    });
    self.box_MultipleOR_100 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1937599783");
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
        [0] = self.f_box_MultipleOR_100_Out,
    });
    self.box_Sound_Manager_110 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_G502.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2033900104");
    l0:SetConnections({
        -- Poop_Search_Out,
        [0] = self.f_box_Sound_Manager_110_Poop_Search_Out,
    });
    self.box_InventoryItemModifier_77 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2038513502");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_39 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2049356324");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_69 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2115449703");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_69_Disabled,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_69_Use,
    });
    self.box_RemoveEntity_v2_7 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2117835183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_7_Out,
    });
    self.box_MultipleOR_117 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2134109544");
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
        [0] = self.f_box_MultipleOR_117_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|361405532", "361405532", "GroundInteraction", "In", "box_OutputOrder_v2_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_70();
    l0 = self.box_ProximityTrigger_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1120251321", "1120251321", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_70.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_69();
    l0 = self.box_ProximityTrigger_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2024689079", "2024689079", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_69.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_28();
    l0 = self.box_ProximityTrigger_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2004683398", "2004683398", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_91();
    l0 = self.box_ProximityTrigger_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|896831328", "896831328", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_91.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_82();
    l0 = self.box_ProximityTrigger_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|408475622", "408475622", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_82.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_60();
    l0 = self.box_ProximityTrigger_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|824626235", "824626235", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_60.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_56();
    l0 = self.box_ProximityTrigger_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1595895411", "1595895411", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_33();
    l0 = self.box_ProximityTrigger_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|187280743", "187280743", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_6();
    l0 = self.box_ProximityTrigger_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1606539602", "1606539602", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_63();
    l0 = self.box_ProximityTrigger_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1826972977", "1826972977", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_63.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_31();
    l0 = self.box_ProximityTrigger_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1954531918", "1954531918", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_57();
    l0 = self.box_ProximityTrigger_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1714029992", "1714029992", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_57.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_108();
    l0 = self.box_ProximityTrigger_v2_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|198852392", "198852392", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_108.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_92();
    l0 = self.box_ProximityTrigger_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|632485226", "632485226", "GroundInteraction", "box_Simple_Node_29.Out", "box_ProximityTrigger_v2_92.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_123_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_121();
    l0 = self.box_SoundModifier_v2_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|593368911", "593368911", "GroundInteraction", "box_Simple_Node_123.Out", "box_SoundModifier_v2_121.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Sound_Manager_51_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_51_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_55();
    l0 = self.box_Sound_Manager_51;
    l1 = self.box_RemoveEntity_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1408756173", "1408756173", "GroundInteraction", "box_Sound_Manager_51.Poop_Search_Out", "box_RemoveEntity_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_111();
    l0 = self.box_MultipleOR_88;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|481131578", "481131578", "GroundInteraction", "box_MultipleOR_88.Out", "box_TriggerState_v2_111.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_32_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_32;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|919192074", "919192074", "GroundInteraction", "box_RemoveEntity_v2_32.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_118_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2132159809", "2132159809", "GroundInteraction", "box_OutputOrder_v2_118.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_118_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_43();
    l0 = self.box_Sound_Manager_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|443810205", "443810205", "GroundInteraction", "box_OutputOrder_v2_118.Out", "box_Sound_Manager_43.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_Sound_Manager_43_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_43_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_25();
    l0 = self.box_Sound_Manager_43;
    l1 = self.box_RemoveEntity_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2076992016", "2076992016", "GroundInteraction", "box_Sound_Manager_43.Poop_Search_Out", "box_RemoveEntity_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_25_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_25;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2079196882", "2079196882", "GroundInteraction", "box_RemoveEntity_v2_25.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RemoveEntity_v2_78_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_78;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1729497660", "1729497660", "GroundInteraction", "box_RemoveEntity_v2_78.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 13);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_17();
    l0 = self.box_MultipleOR_52;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1809479208", "1809479208", "GroundInteraction", "box_MultipleOR_52.Out", "box_TriggerState_v2_17.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Sound_Manager_102_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_102_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_61();
    l0 = self.box_Sound_Manager_102;
    l1 = self.box_RemoveEntity_v2_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|874646907", "874646907", "GroundInteraction", "box_Sound_Manager_102.Poop_Search_Out", "box_RemoveEntity_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Sound_Manager_13_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_13_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_32();
    l0 = self.box_Sound_Manager_13;
    l1 = self.box_RemoveEntity_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1433896580", "1433896580", "GroundInteraction", "box_Sound_Manager_13.Poop_Search_Out", "box_RemoveEntity_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ShimmerModifier_v2_94_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_119();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1715818137", "1715818137", "GroundInteraction", "box_ShimmerModifier_v2_94.Enabled", "box_ShimmerModifier_v2_119.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_79();
    l0 = self.box_MultipleOR_23;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2139218485", "2139218485", "GroundInteraction", "box_MultipleOR_23.Out", "box_TriggerState_v2_79.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_57_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_57;
    l1 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2008613241", "2008613241", "GroundInteraction", "box_ProximityTrigger_v2_57.Disabled", "box_MultipleOR_117.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_57_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_ProximityTrigger_v2_57;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|618622660", "618622660", "GroundInteraction", "box_ProximityTrigger_v2_57.Use", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_109_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_15();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1244854978", "1244854978", "GroundInteraction", "box_ShimmerModifier_v2_109.Enabled", "box_ShimmerModifier_v2_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_82_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_82;
    l1 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1426887128", "1426887128", "GroundInteraction", "box_ProximityTrigger_v2_82.Disabled", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_82_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = self.box_ProximityTrigger_v2_82;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1097881781", "1097881781", "GroundInteraction", "box_ProximityTrigger_v2_82.Use", "box_OutputOrder_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_73_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_73;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1199006287", "1199006287", "GroundInteraction", "box_RemoveEntity_v2_73.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 12);
end;

function export:f_box_RemoveEntity_v2_48_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_48;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1656180227", "1656180227", "GroundInteraction", "box_RemoveEntity_v2_48.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1220157733", "1220157733", "GroundInteraction", "box_OutputOrder_v2_24.Out", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_49();
    l0 = self.box_Sound_Manager_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|729540419", "729540419", "GroundInteraction", "box_OutputOrder_v2_24.Out", "box_Sound_Manager_49.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|872649347", "872649347", "GroundInteraction", "box_OutputOrder_v2_12.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_14();
    l0 = self.box_Sound_Manager_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1149720871", "1149720871", "GroundInteraction", "box_OutputOrder_v2_12.Out", "box_Sound_Manager_14.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_22_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_22;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|891175390", "891175390", "GroundInteraction", "box_RemoveEntity_v2_22.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_11();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|729059043", "729059043", "GroundInteraction", "box_MultipleOR_1.Out", "box_TriggerState_v2_11.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Sound_Manager_4_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_4_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_116();
    l0 = self.box_Sound_Manager_4;
    l1 = self.box_RemoveEntity_v2_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|823463479", "823463479", "GroundInteraction", "box_Sound_Manager_4.Poop_Search_Out", "box_RemoveEntity_v2_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_89();
    l0 = self.box_MultipleOR_54;
    l1 = self.box_Random_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|559321364", "559321364", "GroundInteraction", "box_MultipleOR_54.Out", "box_Random_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_2();
    l0 = self.box_MultipleOR_67;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2127654542", "2127654542", "GroundInteraction", "box_MultipleOR_67.Out", "box_TriggerState_v2_2.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_120();
    l0 = self.box_ProximityTrigger_v2_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|990094746", "990094746", "GroundInteraction", "box_OutputOrder_v2_122.Out", "box_ProximityTrigger_v2_120.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_123();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|126300707", "126300707", "GroundInteraction", "box_OutputOrder_v2_122.Out", "box_Simple_Node_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1472176414", "1472176414", "GroundInteraction", "box_OutputOrder_v2_38.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_110();
    l0 = self.box_Sound_Manager_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|111256854", "111256854", "GroundInteraction", "box_OutputOrder_v2_38.Out", "box_Sound_Manager_110.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_ShimmerModifier_v2_87_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_96();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|827986601", "827986601", "GroundInteraction", "box_ShimmerModifier_v2_87.Enabled", "box_ShimmerModifier_v2_96.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_56_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_56;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|527459230", "527459230", "GroundInteraction", "box_ProximityTrigger_v2_56.Disabled", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_56_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_ProximityTrigger_v2_56;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1824286258", "1824286258", "GroundInteraction", "box_ProximityTrigger_v2_56.Use", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Sound_Manager_106_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_106_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_48();
    l0 = self.box_Sound_Manager_106;
    l1 = self.box_RemoveEntity_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1931805100", "1931805100", "GroundInteraction", "box_Sound_Manager_106.Poop_Search_Out", "box_RemoveEntity_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Sound_Manager_85_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_85_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_115();
    l0 = self.box_Sound_Manager_85;
    l1 = self.box_RemoveEntity_v2_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1603117228", "1603117228", "GroundInteraction", "box_Sound_Manager_85.Poop_Search_Out", "box_RemoveEntity_v2_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_90_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_75();
    l0 = self.box_MultipleOR_90;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|595082772", "595082772", "GroundInteraction", "box_MultipleOR_90.Out", "box_TriggerState_v2_75.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_9();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1914495513", "1914495513", "GroundInteraction", "box_MultipleOR_37.Out", "box_TriggerState_v2_9.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_108_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_108;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|351305789", "351305789", "GroundInteraction", "box_ProximityTrigger_v2_108.Disabled", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_108_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_113();
    l0 = self.box_ProximityTrigger_v2_108;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|711324325", "711324325", "GroundInteraction", "box_ProximityTrigger_v2_108.Use", "box_OutputOrder_v2_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_61_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_61;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|638351694", "638351694", "GroundInteraction", "box_RemoveEntity_v2_61.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_Sound_Manager_71_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_71_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_30();
    l0 = self.box_Sound_Manager_71;
    l1 = self.box_RemoveEntity_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2072970163", "2072970163", "GroundInteraction", "box_Sound_Manager_71.Poop_Search_Out", "box_RemoveEntity_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ShimmerModifier_v2_86_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_5();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1365222166", "1365222166", "GroundInteraction", "box_ShimmerModifier_v2_86.Enabled", "box_ShimmerModifier_v2_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryItemListener_26_ItemAdded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = self.box_InventoryItemListener_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|529160862", "529160862", "GroundInteraction", "box_InventoryItemListener_26.ItemAdded", "box_OutputOrder_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_120_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = self.box_ProximityTrigger_v2_120;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1461424680", "1461424680", "GroundInteraction", "box_ProximityTrigger_v2_120.Enter", "box_Simple_Node_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemListener_26();
    l0 = self.box_InventoryItemModifier_34;
    l1 = self.box_InventoryItemListener_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|525620207", "525620207", "GroundInteraction", "box_InventoryItemModifier_34.Out", "box_InventoryItemListener_26.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_55_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_55;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|805879801", "805879801", "GroundInteraction", "box_RemoveEntity_v2_55.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_RemoveEntity_v2_115_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_115;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|930503353", "930503353", "GroundInteraction", "box_RemoveEntity_v2_115.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_ShimmerModifier_v2_15_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_76();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1110699191", "1110699191", "GroundInteraction", "box_ShimmerModifier_v2_15.Enabled", "box_ShimmerModifier_v2_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_28_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_28;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|489296633", "489296633", "GroundInteraction", "box_ProximityTrigger_v2_28.Disabled", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_28_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_118();
    l0 = self.box_ProximityTrigger_v2_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1671005583", "1671005583", "GroundInteraction", "box_ProximityTrigger_v2_28.Use", "box_OutputOrder_v2_118.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_33_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_33;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2000837764", "2000837764", "GroundInteraction", "box_ProximityTrigger_v2_33.Disabled", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_33_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_ProximityTrigger_v2_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|946129337", "946129337", "GroundInteraction", "box_ProximityTrigger_v2_33.Use", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetInventoryItemQuantity_124_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_124_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_125();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|689608940", "689608940", "GroundInteraction", "box_GetInventoryItemQuantity_124.Out", "box_Compare_Integers_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_60_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_60;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|103984401", "103984401", "GroundInteraction", "box_ProximityTrigger_v2_60.Disabled", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_60_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = self.box_ProximityTrigger_v2_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|645022545", "645022545", "GroundInteraction", "box_ProximityTrigger_v2_60.Use", "box_OutputOrder_v2_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Sound_Manager_99_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_99_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_22();
    l0 = self.box_Sound_Manager_99;
    l1 = self.box_RemoveEntity_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|861755547", "861755547", "GroundInteraction", "box_Sound_Manager_99.Poop_Search_Out", "box_RemoveEntity_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_40();
    l0 = self.box_MultipleOR_62;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|221239360", "221239360", "GroundInteraction", "box_MultipleOR_62.Out", "box_TriggerState_v2_40.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_70_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_70;
    l1 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|864728156", "864728156", "GroundInteraction", "box_ProximityTrigger_v2_70.Disabled", "box_MultipleOR_100.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_70_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_ProximityTrigger_v2_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1335272690", "1335272690", "GroundInteraction", "box_ProximityTrigger_v2_70.Use", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_114_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_114;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|560229278", "560229278", "GroundInteraction", "box_RemoveEntity_v2_114.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 11);
end;

function export:f_box_Compare_Integers_125_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_126();
    l0 = self.box_InventoryItemModifier_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1759350533", "1759350533", "GroundInteraction", "box_Compare_Integers_125.A_gt_B", "box_InventoryItemModifier_126.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_125_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_34();
    l0 = self.box_InventoryItemModifier_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1351706658", "1351706658", "GroundInteraction", "box_Compare_Integers_125.A_le_B", "box_InventoryItemModifier_34.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_105_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2089802049", "2089802049", "GroundInteraction", "box_OutputOrder_v2_105.Out", "box_MultipleOR_103.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_105_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_106();
    l0 = self.box_Sound_Manager_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1550128783", "1550128783", "GroundInteraction", "box_OutputOrder_v2_105.Out", "box_Sound_Manager_106.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_31_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_31;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|850953102", "850953102", "GroundInteraction", "box_ProximityTrigger_v2_31.Disabled", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_31_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_ProximityTrigger_v2_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1105264977", "1105264977", "GroundInteraction", "box_ProximityTrigger_v2_31.Use", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_16();
    l0 = self.box_MultipleOR_44;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1232630334", "1232630334", "GroundInteraction", "box_MultipleOR_44.Out", "box_TriggerState_v2_16.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1970536772", "1970536772", "GroundInteraction", "box_OutputOrder_v2_18.Out", "box_MultipleOR_100.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_13();
    l0 = self.box_Sound_Manager_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2051889677", "2051889677", "GroundInteraction", "box_OutputOrder_v2_18.Out", "box_Sound_Manager_13.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_6_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_6;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|750434032", "750434032", "GroundInteraction", "box_ProximityTrigger_v2_6.Disabled", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_6_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_ProximityTrigger_v2_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2066708735", "2066708735", "GroundInteraction", "box_ProximityTrigger_v2_6.Use", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Sound_Manager_49_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_49_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_7();
    l0 = self.box_Sound_Manager_49;
    l1 = self.box_RemoveEntity_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|638651121", "638651121", "GroundInteraction", "box_Sound_Manager_49.Poop_Search_Out", "box_RemoveEntity_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_42();
    l0 = self.box_MultipleOR_64;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1925127191", "1925127191", "GroundInteraction", "box_MultipleOR_64.Out", "box_TriggerState_v2_42.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_97_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_19();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|456311860", "456311860", "GroundInteraction", "box_ShimmerModifier_v2_97.Enabled", "box_ShimmerModifier_v2_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_19_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_94();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1715606507", "1715606507", "GroundInteraction", "box_ShimmerModifier_v2_19.Enabled", "box_ShimmerModifier_v2_94.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2035131572", "2035131572", "GroundInteraction", "box_OutputOrder_v2_3.Out", "box_MultipleOR_88.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_85();
    l0 = self.box_Sound_Manager_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1147093297", "1147093297", "GroundInteraction", "box_OutputOrder_v2_3.Out", "box_Sound_Manager_85.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1444431172", "1444431172", "GroundInteraction", "box_OutputOrder_v2_74.Out", "box_MultipleOR_67.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_51();
    l0 = self.box_Sound_Manager_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1424656016", "1424656016", "GroundInteraction", "box_OutputOrder_v2_74.Out", "box_Sound_Manager_51.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1392218919", "1392218919", "GroundInteraction", "box_OutputOrder_v2_50.Out", "box_MultipleOR_117.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_81();
    l0 = self.box_Sound_Manager_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1366974418", "1366974418", "GroundInteraction", "box_OutputOrder_v2_50.Out", "box_Sound_Manager_81.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_116_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_116;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1292460247", "1292460247", "GroundInteraction", "box_RemoveEntity_v2_116.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_ShimmerModifier_v2_119_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_109();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|403942604", "403942604", "GroundInteraction", "box_ShimmerModifier_v2_119.Enabled", "box_ShimmerModifier_v2_109.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_92_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_92;
    l1 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|734736447", "734736447", "GroundInteraction", "box_ProximityTrigger_v2_92.Disabled", "box_MultipleOR_103.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_92_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_105();
    l0 = self.box_ProximityTrigger_v2_92;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1246307201", "1246307201", "GroundInteraction", "box_ProximityTrigger_v2_92.Use", "box_OutputOrder_v2_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Sound_Manager_81_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_81_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_114();
    l0 = self.box_Sound_Manager_81;
    l1 = self.box_RemoveEntity_v2_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|744680997", "744680997", "GroundInteraction", "box_Sound_Manager_81.Poop_Search_Out", "box_RemoveEntity_v2_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_65();
    l0 = self.box_MultipleOR_20;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1544821643", "1544821643", "GroundInteraction", "box_MultipleOR_20.Out", "box_TriggerState_v2_65.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_93_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_97();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|549634706", "549634706", "GroundInteraction", "box_ShimmerModifier_v2_93.Enabled", "box_ShimmerModifier_v2_97.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Sound_Manager_58_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_58_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_73();
    l0 = self.box_Sound_Manager_58;
    l1 = self.box_RemoveEntity_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|658984441", "658984441", "GroundInteraction", "box_Sound_Manager_58.Poop_Search_Out", "box_RemoveEntity_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_91_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_91;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|80321708", "80321708", "GroundInteraction", "box_ProximityTrigger_v2_91.Disabled", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_91_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_ProximityTrigger_v2_91;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|726355401", "726355401", "GroundInteraction", "box_ProximityTrigger_v2_91.Use", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_96_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_93();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1724005318", "1724005318", "GroundInteraction", "box_ShimmerModifier_v2_96.Enabled", "box_ShimmerModifier_v2_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_41_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_47();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|6435222", "6435222", "GroundInteraction", "box_ShimmerModifier_v2_41.Enabled", "box_ShimmerModifier_v2_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_63();
    l0 = self.box_ProximityTrigger_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|599938012", "599938012", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_60();
    l0 = self.box_ProximityTrigger_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1956886222", "1956886222", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_28();
    l0 = self.box_ProximityTrigger_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1831022892", "1831022892", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_70();
    l0 = self.box_ProximityTrigger_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|334127983", "334127983", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_31();
    l0 = self.box_ProximityTrigger_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|618049230", "618049230", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_33();
    l0 = self.box_ProximityTrigger_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|569312285", "569312285", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_56();
    l0 = self.box_ProximityTrigger_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1938057581", "1938057581", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_108();
    l0 = self.box_ProximityTrigger_v2_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1675291784", "1675291784", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_6();
    l0 = self.box_ProximityTrigger_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|938090546", "938090546", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_92();
    l0 = self.box_ProximityTrigger_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|330981099", "330981099", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_57();
    l0 = self.box_ProximityTrigger_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|920076697", "920076697", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_69();
    l0 = self.box_ProximityTrigger_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1945378569", "1945378569", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_82();
    l0 = self.box_ProximityTrigger_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1921548029", "1921548029", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_91();
    l0 = self.box_ProximityTrigger_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2032064503", "2032064503", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_41();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|649680841", "649680841", "GroundInteraction", "box_OutputOrder_v2_8.Out", "box_ShimmerModifier_v2_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_89_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_21();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|988166968", "988166968", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_21.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_112();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1569362319", "1569362319", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_112.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_59();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|592192912", "592192912", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_59.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_80();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1044454487", "1044454487", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_80.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_95();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1314556255", "1314556255", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_95.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_84();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1277899551", "1277899551", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_84.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_27();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1655234360", "1655234360", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_27.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_36();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1551643504", "1551643504", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_36.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_98();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1401897854", "1401897854", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_98.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_39();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|190370028", "190370028", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_39.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_101();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|179300252", "179300252", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_101.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_11()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_77();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1415178460", "1415178460", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_77.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_12()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_68();
    l0 = self.box_Random_89;
    l1 = self.box_InventoryItemModifier_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1635911258", "1635911258", "GroundInteraction", "box_Random_89.Output", "box_InventoryItemModifier_68.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Random_89_Output_13()
    local params, l0, l1;
    params = self:OnEnter_box_GetInventoryItemQuantity_124();
    l0 = self.box_Random_89;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1226720180", "1226720180", "GroundInteraction", "box_Random_89.Output", "box_GetInventoryItemQuantity_124.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_30_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_30;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1276143819", "1276143819", "GroundInteraction", "box_RemoveEntity_v2_30.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1040390758", "1040390758", "GroundInteraction", "box_OutputOrder_v2_104.Out", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_99();
    l0 = self.box_Sound_Manager_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1471678737", "1471678737", "GroundInteraction", "box_OutputOrder_v2_104.Out", "box_Sound_Manager_99.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_63_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_63;
    l1 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|934500147", "934500147", "GroundInteraction", "box_ProximityTrigger_v2_63.Disabled", "box_MultipleOR_64.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_63_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = self.box_ProximityTrigger_v2_63;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1797184976", "1797184976", "GroundInteraction", "box_ProximityTrigger_v2_63.Use", "box_OutputOrder_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2076479719", "2076479719", "GroundInteraction", "box_OutputOrder_v2_53.Out", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_58();
    l0 = self.box_Sound_Manager_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|774419995", "774419995", "GroundInteraction", "box_OutputOrder_v2_53.Out", "box_Sound_Manager_58.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_35();
    l0 = self.box_MultipleOR_103;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|586693226", "586693226", "GroundInteraction", "box_MultipleOR_103.Out", "box_TriggerState_v2_35.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_72_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_72;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1861912800", "1861912800", "GroundInteraction", "box_RemoveEntity_v2_72.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_ShimmerModifier_v2_5_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_87();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1705427045", "1705427045", "GroundInteraction", "box_ShimmerModifier_v2_5.Enabled", "box_ShimmerModifier_v2_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Sound_Manager_14_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_14_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_72();
    l0 = self.box_Sound_Manager_14;
    l1 = self.box_RemoveEntity_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1467544303", "1467544303", "GroundInteraction", "box_Sound_Manager_14.Poop_Search_Out", "box_RemoveEntity_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_100_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_66();
    l0 = self.box_MultipleOR_100;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1405282996", "1405282996", "GroundInteraction", "box_MultipleOR_100.Out", "box_TriggerState_v2_66.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_47_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_86();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|792680455", "792680455", "GroundInteraction", "box_ShimmerModifier_v2_47.Enabled", "box_ShimmerModifier_v2_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Sound_Manager_110_Poop_Search_Out()
    local params, l0, l1;
    self:OnExit_box_Sound_Manager_110_Poop_Search_Out();
    params = self:OnEnter_box_RemoveEntity_v2_78();
    l0 = self.box_Sound_Manager_110;
    l1 = self.box_RemoveEntity_v2_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|986809037", "986809037", "GroundInteraction", "box_Sound_Manager_110.Poop_Search_Out", "box_RemoveEntity_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|735498018", "735498018", "GroundInteraction", "box_OutputOrder_v2_10.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_102();
    l0 = self.box_Sound_Manager_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1601609815", "1601609815", "GroundInteraction", "box_OutputOrder_v2_10.Out", "box_Sound_Manager_102.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|715352273", "715352273", "GroundInteraction", "box_OutputOrder_v2_83.Out", "box_MultipleOR_64.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_71();
    l0 = self.box_Sound_Manager_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|693716804", "693716804", "GroundInteraction", "box_OutputOrder_v2_83.Out", "box_Sound_Manager_71.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_113_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1261237765", "1261237765", "GroundInteraction", "box_OutputOrder_v2_113.Out", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_113_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_4();
    l0 = self.box_Sound_Manager_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1409583474", "1409583474", "GroundInteraction", "box_OutputOrder_v2_113.Out", "box_Sound_Manager_4.Poop_Search_In", clone:GetLuaBox(), l0:GetLuaBox());
    -- Poop_Search_In
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_69_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_69;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|721708000", "721708000", "GroundInteraction", "box_ProximityTrigger_v2_69.Disabled", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_69_Use()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_ProximityTrigger_v2_69;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|814363354", "814363354", "GroundInteraction", "box_ProximityTrigger_v2_69.Use", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_7_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_7;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1302056713", "1302056713", "GroundInteraction", "box_RemoveEntity_v2_7.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_MultipleOR_117_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_107();
    l0 = self.box_MultipleOR_117;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|756986866", "756986866", "GroundInteraction", "box_MultipleOR_117.Out", "box_TriggerState_v2_107.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|@Disable Interaction");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|@Key_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_123_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_51()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2102157729454943015",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_32()
    local params;
    params = {
        -- Group,
        [0] = "2100882400849440294",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|125330761");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2099734939774753213",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|132192380");
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
                [0] = self.f_box_OutputOrder_v2_118_Out_0,
                [1] = self.f_box_OutputOrder_v2_118_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_68()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015218944614550",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|191692455");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2099710926895715849",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_43()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2101329727236095460",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_25()
    local params;
    params = {
        -- Group,
        [0] = "2099710909946533384",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_95()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015251705035839",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_78()
    local params;
    params = {
        -- Group,
        [0] = "2101479690070934956",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_102()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2101329744011214316",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_13()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2101329735821835752",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|342955187");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_94_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2099734939242076604",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|370693897");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2099710962872358439",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_57()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101479678326883747",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_27()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015192908824097",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|402507103");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_109_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101479678324786594",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|403139541");
    l0:SetConnections({
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101479690070934956",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_126()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015254381742969",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_82()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101479683590735271",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_73()
    local params;
    params = {
        -- Group,
        [0] = "2101479683588638118",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_48()
    local params;
    params = {
        -- Group,
        [0] = "2099734939242076604",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_101()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015218944598521",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_80()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234092606",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|447906460");
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

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|464095481");
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

function export:OnEnter_box_TriggerState_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|488042051");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2101479690068837801",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_22()
    local params;
    params = {
        -- Group,
        [0] = "2099710962138355238",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|531514264");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2099710961284814363",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_4()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2101329739504434666",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|543391690");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2101479678326883747",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|570938709");
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
                [0] = self.f_box_OutputOrder_v2_122_Out_0,
                [1] = self.f_box_OutputOrder_v2_122_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_98()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015251705035839",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|575905531");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|597539730");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_87_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2099710958640305678",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|638435082");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2101479683590735271",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_56()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099710961284814363",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_106()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2101329731042426342",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_85()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2101329750558522864",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_108()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099710961788130847",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_61()
    local params;
    params = {
        -- Group,
        [0] = "2099710959508526610",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_71()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2101329718883139040",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|771551306");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2099710961788130847",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|773999620");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_86_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2099710909946533384",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015280687978715",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_121()
    local params;
    params = {
        -- Pawns,
        [0] = self.Poop_Soundpoint,
        -- SoundId,
        [1] = "2733127543",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_120()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101271075156398227",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_34()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015280687978715",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_55()
    local params;
    params = {
        -- Group,
        [0] = "2100882247258221994",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_115()
    local params;
    params = {
        -- Group,
        [0] = "2099710958640305678",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|877345609");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_15_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101479683588638118",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099710926895715849",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_33()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102157729454943017",
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|982154488");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_124_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015280687978715",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_60()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099710962138355235",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_84()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015251705035839",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_112()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015218944586538",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1059513971");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2099710958640305675",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_99()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2101329722962099682",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_70()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099710960429176339",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_114()
    local params;
    params = {
        -- Group,
        [0] = "2101479678324786594",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1112792932");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_125_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_125_A_le_B,
    });
    params = {
        -- A,
        [0] = self.Key,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1113977465");
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
                [0] = self.f_box_OutputOrder_v2_105_Out_0,
                [1] = self.f_box_OutputOrder_v2_105_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099710958640305675",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1176084493");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099734939774753213",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1230627994");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2099710962138355235",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_49()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2101329748060814830",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1279380019");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_97_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2099710960812955162",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1287002856");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2102157729454943017",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_36()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015254381742969",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1300829901");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_19_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2099734939776850368",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1365400676");
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

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1368443613");
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
                [0] = self.f_box_OutputOrder_v2_74_Out_0,
                [1] = self.f_box_OutputOrder_v2_74_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1374449776");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_116()
    local params;
    params = {
        -- Group,
        [0] = "2099710960812955162",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1435878791");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_119_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2099710959508526610",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_92()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099734939239979449",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_81()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2104546938478139821",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1562459750");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_93_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2099710961286911518",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_59()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015218942960009",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_58()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2104546891086698905",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_91()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101479690068837801",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1693841512");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_96_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2100882247258221994",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1743440386");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_41_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2103691673755204915",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1746389543");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 15,
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
                [3] = self.f_box_OutputOrder_v2_8_Out_3,
                [4] = self.f_box_OutputOrder_v2_8_Out_4,
                [5] = self.f_box_OutputOrder_v2_8_Out_5,
                [6] = self.f_box_OutputOrder_v2_8_Out_6,
                [7] = self.f_box_OutputOrder_v2_8_Out_7,
                [8] = self.f_box_OutputOrder_v2_8_Out_8,
                [9] = self.f_box_OutputOrder_v2_8_Out_9,
                [10] = self.f_box_OutputOrder_v2_8_Out_10,
                [11] = self.f_box_OutputOrder_v2_8_Out_11,
                [12] = self.f_box_OutputOrder_v2_8_Out_12,
                [13] = self.f_box_OutputOrder_v2_8_Out_13,
                [14] = self.f_box_OutputOrder_v2_8_Out_14,
            },
            count = 15,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_89()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
                [0] = 0.08,
                [1] = 0.08,
                [2] = 0.08,
                [3] = 0.07,
                [4] = 0.07,
                [5] = 0.07,
                [6] = 0.07,
                [7] = 0.07,
                [8] = 0.07,
                [9] = 0.07,
                [10] = 0.07,
                [11] = 0.07,
                [12] = 0.08,
                [13] = 0.05,
            },
            count = 14,
        },
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_30()
    local params;
    params = {
        -- Group,
        [0] = "2103691673755204915",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1815179288");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
                [1] = self.f_box_OutputOrder_v2_104_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1815652287");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2099734939239979449",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_21()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015218944708665",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_63()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099710962872358439",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1856485100");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_72()
    local params;
    params = {
        -- Group,
        [0] = "2099734939776850368",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1924607147");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2099710959506429455",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1927740356");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_5_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2100882400849440294",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_14()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2101329711685713374",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1954957802");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_47_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2099710962138355238",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|1956747438");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2099710960429176339",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_110()
    local params;
    params = {
        -- Poop_Search_Entity,
        [0] = "2104546909004765603",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_77()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015192908803977",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_39()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015192908824097",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2052307412");
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

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2053519318");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_G502.domino|@GroundInteraction|2058983905");
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
                [0] = self.f_box_OutputOrder_v2_113_Out_0,
                [1] = self.f_box_OutputOrder_v2_113_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_69()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099710959506429455",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_7()
    local params;
    params = {
        -- Group,
        [0] = "2099710961286911518",
    };
    return params;
end;

function export:OnExit_box_Sound_Manager_51_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_51;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_43_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_43;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_102_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_102;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_13_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_13;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_4_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_4;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_106_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_106;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_85_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_85;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_71_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_71;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_124_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self.Key = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_99_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_99;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_49_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_49;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_81_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_81;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_58_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_58;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_14_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_14;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Sound_Manager_110_Poop_Search_Out()
    local l0;
    l0 = self.box_Sound_Manager_110;
    self.Poop_Soundpoint = l0:GetDataOutValue(0);
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
