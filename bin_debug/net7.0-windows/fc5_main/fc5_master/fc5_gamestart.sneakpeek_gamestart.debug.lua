LUAC�h  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_master/fc5_gamestart.domino
-- User graph: SneakPeek_Gamestart
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/InventoryPackModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SystemConsoleCommand.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.FC5_GameStart = nil;
    Globals.FC5_GameStart = {
        sDemoType = "",
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Master/FC5_GameStart.SneakPeek_Gamestart.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.UIMode.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CinematicMode",
            },
            [1] = {
                name = "NormalMode",
            },
            [2] = {
                name = "OutpostMode",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "OnCinematicMode",
                delayed = false,
            },
            [1] = {
                name = "OnNormalMode",
                delayed = false,
            },
            [2] = {
                name = "OnOutpostMode",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityAcknowledgeGate.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Acknowledged",
                delayed = true,
            },
            [1] = {
                name = "Reloaded",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityInitialized.lua")] = {
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
                delayed = true,
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
    metadataTable[GetPathID("Domino/System/SetTimeOfDay.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "IncrementTimeOfDay",
            },
            [1] = {
                name = "SetTimeOfDay",
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
                name = "Hour",
                type = "int",
            },
            [1] = {
                name = "Minute",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SystemConsoleCommand.lua")] = {
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
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Command",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "SneakPeek_Gamestart";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart";
    self.box_InventoryItemListener_10 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|11422769");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_InventoryItemListener_10_Enabled,
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_10_ItemAdded,
    });
    self.box_UIMode_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|228925882");
    l0:SetConnections({
        -- OnCinematicMode,
        [0] = self.f_box_UIMode_11_OnCinematicMode,
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|287936023");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|687022167");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_InventoryPackModifier_3 = cbox:CreateBox("Domino/System/InventoryPackModifier.lua");
    l0 = self.box_InventoryPackModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryPackModifier_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|1342041988");
    l0:SetConnections({
        -- Loaded,
        [1] = self.f_box_InventoryPackModifier_3_Loaded,
    });
    self.box_UIMode_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|1457354407");
    l0:SetConnections({
        -- OnNormalMode,
        [1] = self.f_box_UIMode_12_OnNormalMode,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|1612997585");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|2061500388", "2061500388", "SneakPeek_Gamestart", "In", "box_ActivityAcknowledgeGate_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_InventoryItemListener_10_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryPackModifier_3();
    l0 = self.box_InventoryItemListener_10;
    l1 = self.box_InventoryPackModifier_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|1115530587", "1115530587", "SneakPeek_Gamestart", "box_InventoryItemListener_10.Enabled", "box_InventoryPackModifier_3.Load", l0:GetLuaBox(), l1:GetLuaBox());
    -- Load
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemListener_10_ItemAdded()
    local l0, l1;
    l0 = self.box_InventoryItemListener_10;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|1984441437", "1984441437", "SneakPeek_Gamestart", "box_InventoryItemListener_10.ItemAdded", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_UIMode_11_OnCinematicMode()
    local params, l0, l1;
    params = self:OnEnter_box_SystemConsoleCommand_9();
    l0 = self.box_UIMode_11;
    l1 = Boxes[GetPathID("Domino/System/SystemConsoleCommand.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|1496056196", "1496056196", "SneakPeek_Gamestart", "box_UIMode_11.OnCinematicMode", "box_SystemConsoleCommand_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|10910243", "10910243", "SneakPeek_Gamestart", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|950380576", "950380576", "SneakPeek_Gamestart", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetTimeOfDay_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_10();
    l0 = self.box_InventoryItemListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|530039369", "530039369", "SneakPeek_Gamestart", "box_SetTimeOfDay_4.Out", "box_InventoryItemListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SystemConsoleCommand_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SystemConsoleCommand.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_4();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|668545454", "668545454", "SneakPeek_Gamestart", "box_SystemConsoleCommand_9.Out", "box_SetTimeOfDay_4.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_UIMode_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|784154550", "784154550", "SneakPeek_Gamestart", "box_MultipleOR_5.Out", "box_UIMode_11.CinematicMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- CinematicMode
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|10929619", "10929619", "SneakPeek_Gamestart", "box_OutputOrder_v2_6.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|1573112732", "1573112732", "SneakPeek_Gamestart", "box_OutputOrder_v2_6.Out", "box_ActivityEnd_8.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryPackModifier_3_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SystemConsoleCommand_13();
    l0 = self.box_InventoryPackModifier_3;
    l1 = Boxes[GetPathID("Domino/System/SystemConsoleCommand.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|1518922888", "1518922888", "SneakPeek_Gamestart", "box_InventoryPackModifier_3.Loaded", "box_SystemConsoleCommand_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UIMode_12_OnNormalMode()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_UIMode_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|955464158", "955464158", "SneakPeek_Gamestart", "box_UIMode_12.OnNormalMode", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_2;
    l1 = self.box_UIMode_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|2077195864", "2077195864", "SneakPeek_Gamestart", "box_ActivityInitialized_2.Out", "box_UIMode_12.NormalMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- NormalMode
    l1:Exec(1, {
    });
end;

function export:OnEnter_box_InventoryItemListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015206220904735",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    DrawTextToScreen("Comment: ACTIVITY END", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ActivityEnd')-- Comment: ACTIVITY END");
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|202047212");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|604912080");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_4_Out,
    });
    params = {
        -- Hour,
        [0] = 15,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SystemConsoleCommand_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SystemConsoleCommand.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SystemConsoleCommand_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|683085577");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SystemConsoleCommand_9_Out,
    });
    params = {
        -- Command,
        [0] = "reputation_addpoints 0 250",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|854636714");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryPackModifier_3()
    local params;
    params = {
        -- inventoryPackId,
        [0] = "9015287666004245",
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SystemConsoleCommand_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SystemConsoleCommand.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SystemConsoleCommand_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|1475972101");
    l0:SetConnections({
    });
    params = {
        -- Command,
        [0] = "g_AddPerkPoints 5",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@SneakPeek_Gamestart|1890742053");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "magenta",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SneakPeek Game Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
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
