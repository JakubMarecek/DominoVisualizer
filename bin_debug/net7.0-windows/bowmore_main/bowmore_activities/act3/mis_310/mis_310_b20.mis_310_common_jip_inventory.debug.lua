LUAC�:  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_b20.domino
-- User graph: MIS_310_COMMON_JIP_Inventory
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
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryLoadoutModifier.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_JIP_Inventory.debug.lua")] = {
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
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/System/InventoryLoadoutModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Backup",
            },
            [1] = {
                name = "Restore",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "BackedUp",
                delayed = false,
            },
            [1] = {
                name = "Failed",
                delayed = false,
            },
            [2] = {
                name = "Restored",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "discardPreviousBackup",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/RestrictedItemModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddItemRestriction",
            },
            [1] = {
                name = "ClearRestrictions",
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
                name = "allowedItemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "allowedItemFilterID",
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
    self._name = "MIS_310_COMMON_JIP_Inventory";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_JIP_Inventory";
    self.Out = DummyFunction;
    self.box_RestrictedItemModifier_v2_1 = cbox:CreateBox("Domino/System/RestrictedItemModifier_v2.lua");
    l0 = self.box_RestrictedItemModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_JIP_Inventory|822680440");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_2 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_JIP_Inventory|1044957952");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_2_Out,
    });
    self.box_InventoryLoadoutModifier_3 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_JIP_Inventory|1068110991");
    l0:SetConnections({
        -- BackedUp,
        [0] = self.f_box_InventoryLoadoutModifier_3_BackedUp,
    });
    self.box_CoopActivePlayers_4 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_JIP_Inventory|1466227598");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_4_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_4_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_4_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_4_TwoPlayers,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_JIP_Inventory|857200255", "857200255", "MIS_310_COMMON_JIP_Inventory", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_JIP_Inventory|1579492771", "1579492771", "MIS_310_COMMON_JIP_Inventory", "box_OutputOrder_v2_5.Out", "box_CoopActivePlayers_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_JIP_Inventory|336925685", "336925685", "MIS_310_COMMON_JIP_Inventory", "box_OutputOrder_v2_5.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_InventoryItemModifier_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_v2_1();
    l0 = self.box_InventoryItemModifier_2;
    l1 = self.box_RestrictedItemModifier_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_JIP_Inventory|995004978", "995004978", "MIS_310_COMMON_JIP_Inventory", "box_InventoryItemModifier_2.Out", "box_RestrictedItemModifier_v2_1.AddItemRestriction", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItemRestriction
    l1:Exec(0, params);
end;

function export:f_box_InventoryLoadoutModifier_3_BackedUp()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_2();
    l0 = self.box_InventoryLoadoutModifier_3;
    l1 = self.box_InventoryItemModifier_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_JIP_Inventory|877013079", "877013079", "MIS_310_COMMON_JIP_Inventory", "box_InventoryLoadoutModifier_3.BackedUp", "box_InventoryItemModifier_2.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_CoopActivePlayers_4_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_4_PlayerAdded();
    params = self:OnEnter_box_InventoryLoadoutModifier_3();
    l0 = self.box_CoopActivePlayers_4;
    l1 = self.box_InventoryLoadoutModifier_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_JIP_Inventory|1467454559", "1467454559", "MIS_310_COMMON_JIP_Inventory", "box_CoopActivePlayers_4.PlayerAdded", "box_InventoryLoadoutModifier_3.Backup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Backup
    l1:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_4_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_4_PlayerRemoved();
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_JIP_Inventory|380360862");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_v2_1()
    local params, l0;
    l0 = self.box_CoopActivePlayers_4;
    params = {
        -- allowedItemFilterID,
        [1] = "9015346478206297",
        -- players,
        [2] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_2()
    local params, l0;
    l0 = self.box_CoopActivePlayers_4;
    params = {
        -- itemFilterID,
        [1] = "9015343512305705",
        -- players,
        [2] = l0:GetDataOutValue(2),
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_3()
    local params, l0;
    l0 = self.box_CoopActivePlayers_4;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnExit_box_CoopActivePlayers_4_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_4;
    l1 = self.box_InventoryItemModifier_2;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_RestrictedItemModifier_v2_1;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_InventoryLoadoutModifier_3;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_4_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_4;
    l1 = self.box_InventoryItemModifier_2;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_RestrictedItemModifier_v2_1;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_InventoryLoadoutModifier_3;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
