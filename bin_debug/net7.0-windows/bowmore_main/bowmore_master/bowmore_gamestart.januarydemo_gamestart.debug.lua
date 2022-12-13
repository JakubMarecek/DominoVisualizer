LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_master/bowmore_gamestart.domino
-- User graph: JanuaryDemo_Gamestart
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EquipWolfskinItem.lua");
        cboxRes:RegisterBox("Domino/System/GetDemoType.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/InventoryPackModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Bowmore_GameStart = nil;
    Globals.Bowmore_GameStart = {
        sDemoType = "",
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Master/Bowmore_GameStart.JanuaryDemo_Gamestart.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Female",
                delayed = false,
            },
            [1] = {
                name = "Male",
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
    metadataTable[GetPathID("Domino/System/GetDemoType.lua")] = {
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
            [0] = {
                name = "type",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")] = {
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
            [0] = {
                name = "LocalPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "JanuaryDemo_Gamestart";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart";
    self.eLocalPlayer = nil;
    self.box_InventoryItemListener_10 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|11422769");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_InventoryItemListener_10_Enabled,
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_10_ItemAdded,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|87406210");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_UIMode_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|228925882");
    l0:SetConnections({
        -- OnCinematicMode,
        [0] = self.f_box_UIMode_11_OnCinematicMode,
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|287936023");
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|687022167");
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1342041988");
    l0:SetConnections({
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1345497198");
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
    self.box_UIMode_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1457354407");
    l0:SetConnections({
        -- OnNormalMode,
        [1] = self.f_box_UIMode_12_OnNormalMode,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1612997585");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_GetPlayerGender_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1783434777");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_22_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_22_Male,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|2061500388", "2061500388", "JanuaryDemo_Gamestart", "In", "box_ActivityAcknowledgeGate_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_InventoryItemListener_10_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryPackModifier_3();
    l0 = self.box_InventoryItemListener_10;
    l1 = self.box_InventoryPackModifier_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1115530587", "1115530587", "JanuaryDemo_Gamestart", "box_InventoryItemListener_10.Enabled", "box_InventoryPackModifier_3.Load", l0:GetLuaBox(), l1:GetLuaBox());
    -- Load
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemListener_10_ItemAdded()
    local l0, l1;
    l0 = self.box_InventoryItemListener_10;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|2023552580", "2023552580", "JanuaryDemo_Gamestart", "box_InventoryItemListener_10.ItemAdded", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemListener_10();
    l0 = self.box_Delay_v5_20;
    l1 = self.box_InventoryItemListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|2010551271", "2010551271", "JanuaryDemo_Gamestart", "box_Delay_v5_20.TimeElapsed", "box_InventoryItemListener_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetDemoType_9_Out()
    local params, l0;
    self:OnExit_box_GetDemoType_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|340835968", "340835968", "JanuaryDemo_Gamestart", "box_GetDemoType_9.Out", "box_OutputOrder_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UIMode_11_OnCinematicMode()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_4();
    l0 = self.box_UIMode_11;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|821394422", "821394422", "JanuaryDemo_Gamestart", "box_UIMode_11.OnCinematicMode", "box_SetTimeOfDay_4.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|10910243", "10910243", "JanuaryDemo_Gamestart", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|950380576", "950380576", "JanuaryDemo_Gamestart", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EquipWolfskinItem_19_Equipped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|947809923", "947809923", "JanuaryDemo_Gamestart", "box_EquipWolfskinItem_19.Equipped", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetTimeOfDay_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1921471271", "1921471271", "JanuaryDemo_Gamestart", "box_SetTimeOfDay_4.Out", "box_GetLocalPlayer_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_UIMode_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|784154550", "784154550", "JanuaryDemo_Gamestart", "box_MultipleOR_5.Out", "box_UIMode_11.CinematicMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- CinematicMode
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_13();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1298129101", "1298129101", "JanuaryDemo_Gamestart", "box_OutputOrder_v2_6.Out", "box_Print_v2_13.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1113260504", "1113260504", "JanuaryDemo_Gamestart", "box_OutputOrder_v2_6.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1106337684", "1106337684", "JanuaryDemo_Gamestart", "box_OutputOrder_v2_6.Out", "box_ActivityEnd_8.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_21_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_22();
    l0 = self.box_GetPlayerGender_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|340929956", "340929956", "JanuaryDemo_Gamestart", "box_GetLocalPlayer_v2_21.Out", "box_GetPlayerGender_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_EquipWolfskinItem_24_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_14();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|848926907", "848926907", "JanuaryDemo_Gamestart", "box_EquipWolfskinItem_24.Equipped", "box_EquipWolfskinItem_14.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EquipWolfskinItem_14_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_15();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|305047989", "305047989", "JanuaryDemo_Gamestart", "box_EquipWolfskinItem_14.Equipped", "box_EquipWolfskinItem_15.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_MultipleOR_23;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|829297954", "829297954", "JanuaryDemo_Gamestart", "box_MultipleOR_23.Out", "box_Delay_v5_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EquipWolfskinItem_17_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_18();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|354698963", "354698963", "JanuaryDemo_Gamestart", "box_EquipWolfskinItem_17.Equipped", "box_EquipWolfskinItem_18.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UIMode_12_OnNormalMode()
    local params, l0, l1;
    params = self:OnEnter_box_GetDemoType_9();
    l0 = self.box_UIMode_12;
    l1 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|235362113", "235362113", "JanuaryDemo_Gamestart", "box_UIMode_12.OnNormalMode", "box_GetDemoType_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_2;
    l1 = self.box_UIMode_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|2077195864", "2077195864", "JanuaryDemo_Gamestart", "box_ActivityInitialized_2.Out", "box_UIMode_12.NormalMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- NormalMode
    l1:Exec(1, {
    });
end;

function export:f_box_EquipWolfskinItem_25_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_24();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1353238304", "1353238304", "JanuaryDemo_Gamestart", "box_EquipWolfskinItem_25.Equipped", "box_EquipWolfskinItem_24.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EquipWolfskinItem_16_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_17();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1666663246", "1666663246", "JanuaryDemo_Gamestart", "box_EquipWolfskinItem_16.Equipped", "box_EquipWolfskinItem_17.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_22_Female()
    local params, l0, l1;
    params = self:OnEnter_box_EquipWolfskinItem_16();
    l0 = self.box_GetPlayerGender_22;
    l1 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|944706464", "944706464", "JanuaryDemo_Gamestart", "box_GetPlayerGender_22.Female", "box_EquipWolfskinItem_16.Equip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Equip
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_22_Male()
    local params, l0, l1;
    params = self:OnEnter_box_EquipWolfskinItem_25();
    l0 = self.box_GetPlayerGender_22;
    l1 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|862285688", "862285688", "JanuaryDemo_Gamestart", "box_GetPlayerGender_22.Male", "box_EquipWolfskinItem_25.Equip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Equip
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EquipWolfskinItem_15_Equipped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|948993758", "948993758", "JanuaryDemo_Gamestart", "box_EquipWolfskinItem_15.Equipped", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EquipWolfskinItem_18_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_19();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1268443782", "1268443782", "JanuaryDemo_Gamestart", "box_EquipWolfskinItem_18.Equipped", "box_EquipWolfskinItem_19.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_InventoryItemListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015213189219337",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_GetDemoType_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDemoType_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|150992944");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDemoType_9_Out,
    });
    params = {
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|202047212");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|332097793");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_19_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eLocalPlayer,
        -- itemDescriptorID,
        [1] = "9015340962899126",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|604912080");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_4_Out,
    });
    params = {
        -- Hour,
        [0] = 9,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|854636714");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 3,
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|909733083");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1055098520");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_24_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eLocalPlayer,
        -- itemDescriptorID,
        [1] = "9015340967148987",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1108459856");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_14_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eLocalPlayer,
        -- itemDescriptorID,
        [1] = "9015340967484541",
    };
    return params;
end;

function export:OnEnter_box_InventoryPackModifier_3()
    local params;
    params = {
        -- inventoryPackId,
        [0] = "9015360166120708",
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1450909222");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_17_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eLocalPlayer,
        -- itemDescriptorID,
        [1] = "9015340964185720",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1673962385");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_25_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eLocalPlayer,
        -- itemDescriptorID,
        [1] = "9015340964285457",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1765321445");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_16_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eLocalPlayer,
        -- itemDescriptorID,
        [1] = "9015340966938238",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_22()
    local params;
    params = {
        -- PlayerID,
        [0] = self.eLocalPlayer,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1845356782");
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
        [8] = self._sld_type_box_GetDemoType_9,
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|1890742053");
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
        [8] = "JanuaryDemo Game Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|2020801443");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_15_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eLocalPlayer,
        -- itemDescriptorID,
        [1] = "9015340963376307",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@JanuaryDemo_Gamestart|2106877154");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_18_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eLocalPlayer,
        -- itemDescriptorID,
        [1] = "9015340967417913",
    };
    return params;
end;

function export:OnExit_box_GetDemoType_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    self._sld_type_box_GetDemoType_9 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
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
