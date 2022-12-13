LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b80.domino
-- User graph: Intro_010_B80_AmmoMngr
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
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/UnlimitedInventoryItemModifier.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B80.Intro_010_B80_AmmoMngr.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "EnableInteraction",
            },
            [1] = {
                name = "In",
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/RequestTutorial_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "OnDisplayed",
                delayed = true,
            },
            [1] = {
                name = "OnHidden",
                delayed = true,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "RequestFailure",
                delayed = false,
            },
            [4] = {
                name = "RequestSuccess",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bypassPreconditions",
                type = "bool",
            },
            [1] = {
                name = "tutorialdb",
                type = "database",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
            },
        },
        controlInCount = 3,
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
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
            [5] = {
                name = "usageType",
                type = "string",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/UnlimitedInventoryItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetUnlimited",
            },
            [1] = {
                name = "UnsetUnlimited",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Set",
                delayed = false,
            },
            [1] = {
                name = "Unset",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "itemDescriptorID",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Intro_010_B80_AmmoMngr";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr";
    self.box_InventoryItemModifier_18 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|158491554");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_3 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|199090950");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_3_Out,
    });
    self.box_RemoveEntity_v2_19 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|224977305");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_19_Out,
    });
    self.box_RequestTutorial_v3_14 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|384676251");
    l0:SetConnections({
        -- RequestSuccess,
        [4] = self.f_box_RequestTutorial_v3_14_RequestSuccess,
    });
    self.box_UnlimitedInventoryItemModifier_2 = cbox:CreateBox("Domino/System/UnlimitedInventoryItemModifier.lua");
    l0 = self.box_UnlimitedInventoryItemModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlimitedInventoryItemModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|674186572");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_20 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|812133634");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_5 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|885884037");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_5_Disabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_5_Interacted,
    });
    self.box_UnlimitedInventoryItemModifier_4 = cbox:CreateBox("Domino/System/UnlimitedInventoryItemModifier.lua");
    l0 = self.box_UnlimitedInventoryItemModifier_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlimitedInventoryItemModifier_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1107912033");
    l0:SetConnections({
        -- Set,
        [0] = self.f_box_UnlimitedInventoryItemModifier_4_Set,
    });
    self.box_InventoryItemListener_17 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1155350079");
    l0:SetConnections({
        -- ItemRemoved,
        [3] = self.f_box_InventoryItemListener_17_ItemRemoved,
    });
    self.box_UniversalInteractionModifier_v2_16 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1463576050");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_16_Enabled,
    });
    self.box_WieldInventory_v5_9 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1476013378");
    l0:SetConnections({
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1715369350");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_8_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_InventoryItemModifier_1 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1725862879");
    l0:SetConnections({
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1929287451");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_InventoryItemModifier_13 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|2094074135");
    l0:SetConnections({
    });
end;

function export:EnableInteraction()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_16();
    l0 = self.box_UniversalInteractionModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1465593510", "1465593510", "Intro_010_B80_AmmoMngr", "EnableInteraction", "box_UniversalInteractionModifier_v2_16.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1966092682", "1966092682", "Intro_010_B80_AmmoMngr", "In", "box_OutputOrder_v2_12.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_1();
    l0 = self.box_InventoryItemModifier_3;
    l1 = self.box_InventoryItemModifier_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|892597863", "892597863", "Intro_010_B80_AmmoMngr", "box_InventoryItemModifier_3.Out", "box_InventoryItemModifier_1.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_9();
    l0 = self.box_RemoveEntity_v2_19;
    l1 = self.box_WieldInventory_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|321318917", "321318917", "Intro_010_B80_AmmoMngr", "box_RemoveEntity_v2_19.Out", "box_WieldInventory_v5_9.LuaDraw", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaDraw
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_5();
    l0 = self.box_UniversalInteractionListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|150863409", "150863409", "Intro_010_B80_AmmoMngr", "box_OutputOrder_v2_12.Out", "box_UniversalInteractionListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlimitedInventoryItemModifier_4();
    l0 = self.box_UnlimitedInventoryItemModifier_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|738916202", "738916202", "Intro_010_B80_AmmoMngr", "box_OutputOrder_v2_12.Out", "box_UnlimitedInventoryItemModifier_4.SetUnlimited", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnlimited
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_13();
    l0 = self.box_InventoryItemModifier_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|299156925", "299156925", "Intro_010_B80_AmmoMngr", "box_OutputOrder_v2_12.Out", "box_InventoryItemModifier_13.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_18();
    l0 = self.box_InventoryItemModifier_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1688553355", "1688553355", "Intro_010_B80_AmmoMngr", "box_OutputOrder_v2_12.Out", "box_InventoryItemModifier_18.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_20();
    l0 = self.box_InventoryItemModifier_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1333613667", "1333613667", "Intro_010_B80_AmmoMngr", "box_OutputOrder_v2_12.Out", "box_InventoryItemModifier_20.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_RequestTutorial_v3_14_RequestSuccess()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_RequestTutorial_v3_14;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1389163617", "1389163617", "Intro_010_B80_AmmoMngr", "box_RequestTutorial_v3_14.RequestSuccess", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionListener_5_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_UniversalInteractionListener_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|80413083", "80413083", "Intro_010_B80_AmmoMngr", "box_UniversalInteractionListener_5.Disabled", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_5_Interacted()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionListener_5();
    l0 = self.box_UniversalInteractionListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1358861580", "1358861580", "Intro_010_B80_AmmoMngr", "box_UniversalInteractionListener_5.Interacted", "box_UniversalInteractionListener_5.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UnlimitedInventoryItemModifier_4_Set()
    local params, l0, l1;
    params = self:OnEnter_box_UnlimitedInventoryItemModifier_2();
    l0 = self.box_UnlimitedInventoryItemModifier_4;
    l1 = self.box_UnlimitedInventoryItemModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|778923102", "778923102", "Intro_010_B80_AmmoMngr", "box_UnlimitedInventoryItemModifier_4.Set", "box_UnlimitedInventoryItemModifier_2.SetUnlimited", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnlimited
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemListener_17_ItemRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_InventoryItemListener_17;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1159625589", "1159625589", "Intro_010_B80_AmmoMngr", "box_InventoryItemListener_17.ItemRemoved", "box_Delay_v5_8.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_UniversalInteractionModifier_v2_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_11();
    l0 = self.box_UniversalInteractionModifier_v2_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|536044486", "536044486", "Intro_010_B80_AmmoMngr", "box_UniversalInteractionModifier_v2_16.Enabled", "box_SetActivityFact_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemListener_17();
    l0 = self.box_Delay_v5_8;
    l1 = self.box_InventoryItemListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|2062841533", "2062841533", "Intro_010_B80_AmmoMngr", "box_Delay_v5_8.Started", "box_InventoryItemListener_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_8;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1262672328", "1262672328", "Intro_010_B80_AmmoMngr", "box_Delay_v5_8.TimeElapsed", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestTutorial_v3_14();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_RequestTutorial_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|2008865112", "2008865112", "Intro_010_B80_AmmoMngr", "box_MultipleOR_7.Out", "box_RequestTutorial_v3_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1955507969", "1955507969", "Intro_010_B80_AmmoMngr", "box_OutputOrder_v2_6.Out", "box_SetActivityFact_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_3();
    l0 = self.box_InventoryItemModifier_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|2118192300", "2118192300", "Intro_010_B80_AmmoMngr", "box_OutputOrder_v2_6.Out", "box_InventoryItemModifier_3.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_16();
    l0 = self.box_UniversalInteractionModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1074392910", "1074392910", "Intro_010_B80_AmmoMngr", "box_OutputOrder_v2_6.Out", "box_UniversalInteractionModifier_v2_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_19();
    l0 = self.box_RemoveEntity_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1773777677", "1773777677", "Intro_010_B80_AmmoMngr", "box_OutputOrder_v2_6.Out", "box_RemoveEntity_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|359733389", "359733389", "Intro_010_B80_AmmoMngr", "box_OutputOrder_v2_6.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_InventoryItemModifier_18()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015251850182266",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_3()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015203377185800",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_19()
    local params;
    params = {
        -- Group,
        [0] = "2103801622332199591",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|334362436");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [3] = self.f_box_OutputOrder_v2_12_Out_3,
                [4] = self.f_box_OutputOrder_v2_12_Out_4,
                [5] = self.f_box_OutputOrder_v2_12_Out_5,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_14()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015281516205545",
    };
    return params;
end;

function export:OnEnter_box_UnlimitedInventoryItemModifier_2()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927234092606",
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_20()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7922137831195",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2103801622332199591",
    };
    return params;
end;

function export:OnEnter_box_UnlimitedInventoryItemModifier_4()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015251705182346",
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015203377185800",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1332305994");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "INTRO_010_B80_ShowDynMarker",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_16()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Hints",
            item = "LT04_010_B80_Dynamite_PROMPT",
            id = "846052",
        },
        -- usableEntity,
        [4] = "2103801622332199591",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_9()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015203377185800",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_1()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015203373652072",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1846592382");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "INTRO_010_B80_HideDynMarker",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_AmmoMngr|1990809113");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
                [4] = self.f_box_OutputOrder_v2_6_Out_4,
                [6] = self.f_box_OutputOrder_v2_6_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_13()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "7927638943126",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 3,
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="EnableInteraction" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
