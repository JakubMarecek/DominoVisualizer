LUAC_T  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_b20.domino
-- User graph: MIS_310_COMMON_RELOAD_InventoryBackup
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="ItemFilterDBID" Type="Nomad|genericdb" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryLoadoutModifier.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_COMMON_RELOAD_InventoryBackup.debug.lua")] = {
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
                name = "ItemFilterDBID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
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
    self._name = "MIS_310_COMMON_RELOAD_InventoryBackup";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup";
    self.Out = DummyFunction;
    self.box_InventoryItemModifier_8 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|201652832");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_1 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|1414626449");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_1_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_1_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_1_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_1_TwoPlayers,
    });
    self.box_InventoryLoadoutModifier_2 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|1568825289");
    l0:SetConnections({
        -- BackedUp,
        [0] = self.f_box_InventoryLoadoutModifier_2_BackedUp,
    });
    self.box_InventoryLoadoutModifier_3 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|2062018740");
    l0:SetConnections({
        -- BackedUp,
        [0] = self.f_box_InventoryLoadoutModifier_3_BackedUp,
        -- Failed,
        [1] = self.f_box_InventoryLoadoutModifier_3_Failed,
    });
    self.box_ManagePlayerInventory_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|2084611906");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|1667620646", "1667620646", "MIS_310_COMMON_RELOAD_InventoryBackup", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ManagePlayerInventory_6();
    l0 = self.box_ManagePlayerInventory_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|1115164633", "1115164633", "MIS_310_COMMON_RELOAD_InventoryBackup", "box_OutputOrder_v2_7.Out", "box_ManagePlayerInventory_6.RestrictItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- RestrictItems
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|265817139", "265817139", "MIS_310_COMMON_RELOAD_InventoryBackup", "box_OutputOrder_v2_7.Out", "box_CoopActivePlayers_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_CoopActivePlayers_1_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_1_PlayerAdded();
    params = self:OnEnter_box_InventoryLoadoutModifier_2();
    l0 = self.box_CoopActivePlayers_1;
    l1 = self.box_InventoryLoadoutModifier_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|887918827", "887918827", "MIS_310_COMMON_RELOAD_InventoryBackup", "box_CoopActivePlayers_1.PlayerAdded", "box_InventoryLoadoutModifier_2.Backup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Backup
    l1:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_1_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_1_PlayerRemoved();
end;

function export:f_box_InventoryLoadoutModifier_2_BackedUp()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_8();
    l0 = self.box_InventoryLoadoutModifier_2;
    l1 = self.box_InventoryItemModifier_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|1739255088", "1739255088", "MIS_310_COMMON_RELOAD_InventoryBackup", "box_InventoryLoadoutModifier_2.BackedUp", "box_InventoryItemModifier_8.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryLoadoutModifier_3();
    l0 = self.box_InventoryLoadoutModifier_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|1244975369", "1244975369", "MIS_310_COMMON_RELOAD_InventoryBackup", "box_OutputOrder_v2_5.Out", "box_InventoryLoadoutModifier_3.Backup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Backup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|479459574", "479459574", "MIS_310_COMMON_RELOAD_InventoryBackup", "box_OutputOrder_v2_5.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_InventoryLoadoutModifier_3_BackedUp()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_InventoryLoadoutModifier_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|264203747", "264203747", "MIS_310_COMMON_RELOAD_InventoryBackup", "box_InventoryLoadoutModifier_3.BackedUp", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryLoadoutModifier_3_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_4();
    l0 = self.box_InventoryLoadoutModifier_3;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|1980713499", "1980713499", "MIS_310_COMMON_RELOAD_InventoryBackup", "box_InventoryLoadoutModifier_3.Failed", "box_Print_v2_4.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_InventoryItemModifier_8()
    local params, l0;
    l0 = self.box_CoopActivePlayers_1;
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

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|273490575");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 30,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "INVENTORY LOADOUTMODIFIER - BACKUP FAILED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|1230917416");
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

function export:OnEnter_box_InventoryLoadoutModifier_2()
    local params, l0;
    l0 = self.box_CoopActivePlayers_1;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_COMMON_RELOAD_InventoryBackup|1596347260");
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

function export:OnEnter_box_InventoryLoadoutModifier_3()
    local params;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_6()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015346478206297",
    };
    return params;
end;

function export:OnExit_box_CoopActivePlayers_1_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_1;
    l1 = self.box_InventoryItemModifier_8;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_InventoryLoadoutModifier_2;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_1_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_1;
    l1 = self.box_InventoryItemModifier_8;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_InventoryLoadoutModifier_2;
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
	<DatasIn>
		<DataIn Name="ItemFilterDBID" AnchorDynType="0" DataTypeID="genericdb" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
