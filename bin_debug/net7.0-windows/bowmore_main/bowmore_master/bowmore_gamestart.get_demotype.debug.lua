LUAC�y  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_master/bowmore_gamestart.domino
-- User graph: Get_Demotype
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
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/GetDemoType.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/InventoryPackModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetString_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Master/Bowmore_GameStart.globals.lua");
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Master/Bowmore_GameStart.Get_Demotype.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/SetString_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromBoolean",
            },
            [1] = {
                name = "FromEntity",
            },
            [2] = {
                name = "FromFloat",
            },
            [3] = {
                name = "FromGSF",
            },
            [4] = {
                name = "FromInteger",
            },
            [5] = {
                name = "FromString",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Boolean",
                type = "bool",
            },
            [1] = {
                name = "Entity",
                type = "entity",
            },
            [2] = {
                name = "Float",
                type = "float",
            },
            [3] = {
                name = "GSF",
                type = "GSF",
            },
            [4] = {
                name = "Integer",
                type = "int",
            },
            [5] = {
                name = "String",
                type = "string",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "Target",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Get_Demotype";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype";
    self.Out = DummyFunction;
    self.sDemoType = "";
    self.sPrint = "";
    self.box_InventoryPackModifier_9 = cbox:CreateBox("Domino/System/InventoryPackModifier.lua");
    l0 = self.box_InventoryPackModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryPackModifier_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|989110272");
    l0:SetConnections({
    });
    self.box_InventoryItemListener_10 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|1211007516");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_InventoryItemListener_10_Enabled,
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_10_ItemAdded,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|1839916703");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|1919206241");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetDemoType_5();
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|1587456806", "1587456806", "Get_Demotype", "In", "box_GetDemoType_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|1916778951", "1916778951", "Get_Demotype", "box_OutputOrder_v2_6.Out", "box_Print_v2_7.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|1840020022", "1840020022", "Get_Demotype", "box_OutputOrder_v2_6.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_SetString_v2_3_Out()
    local l0;
    self:OnExit_box_SetString_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|542250522", "542250522", "Get_Demotype", "box_SetString_v2_3.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_8_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_1();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|572163512", "572163512", "Get_Demotype", "box_IsValueNil_v3_8.No", "box_Compare_Strings_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_8_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|196684458", "196684458", "Get_Demotype", "box_IsValueNil_v3_8.Yes", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_SetString_v2_2_Out()
    local l0;
    self:OnExit_box_SetString_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|486138827", "486138827", "Get_Demotype", "box_SetString_v2_2.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Strings_12_A_contains_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|1684918801", "1684918801", "Get_Demotype", "box_Compare_Strings_12.A_contains_B", "box_SetString_v2_2.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_12_A_ncontains_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|493286443", "493286443", "Get_Demotype", "box_Compare_Strings_12.A_ncontains_B", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_InventoryItemListener_10_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryPackModifier_9();
    l0 = self.box_InventoryItemListener_10;
    l1 = self.box_InventoryPackModifier_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|402930478", "402930478", "Get_Demotype", "box_InventoryItemListener_10.Enabled", "box_InventoryPackModifier_9.Load", l0:GetLuaBox(), l1:GetLuaBox());
    -- Load
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemListener_10_ItemAdded()
    local l0, l1;
    l0 = self.box_InventoryItemListener_10;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|2057190123", "2057190123", "Get_Demotype", "box_InventoryItemListener_10.ItemAdded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetDemoType_5_Out()
    local params, l0;
    self:OnExit_box_GetDemoType_5_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_8();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|986575146", "986575146", "Get_Demotype", "box_GetDemoType_5.Out", "box_IsValueNil_v3_8.String", clone:GetLuaBox(), l0:GetLuaBox());
    -- String
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_MultipleOR_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|4484183", "4484183", "Get_Demotype", "box_MultipleOR_4.Out", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemListener_10();
    l0 = self.box_MultipleOR_11;
    l1 = self.box_InventoryItemListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|1400879493", "1400879493", "Get_Demotype", "box_MultipleOR_11.Out", "box_InventoryItemListener_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Strings_1_A_contains_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_3();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|1527622946", "1527622946", "Get_Demotype", "box_Compare_Strings_1.A_contains_B", "box_SetString_v2_3.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_1_A_ncontains_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_12();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|847932243", "847932243", "Get_Demotype", "box_Compare_Strings_1.A_ncontains_B", "box_Compare_Strings_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|120667195");
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

function export:OnEnter_box_SetString_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|189034420");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_3_Out,
    });
    params = {
        -- String,
        [5] = "Preview Started",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|285191992");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 15,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = Globals.Bowmore_GameStart.sDemoType,
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|324320110");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_8_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_8_Yes,
    });
    params = {
        -- str,
        [14] = self._sld_type_box_GetDemoType_5,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|726886591");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_2_Out,
    });
    params = {
        -- String,
        [5] = "Playtest Started",
    };
    return params;
end;

function export:OnEnter_box_InventoryPackModifier_9()
    local params;
    params = {
        -- inventoryPackId,
        [0] = "9015218435901281",
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|1002370177");
    l0:SetConnections({
        -- A_contains_B,
        [0] = self.f_box_Compare_Strings_12_A_contains_B,
        -- A_ncontains_B,
        [2] = self.f_box_Compare_Strings_12_A_ncontains_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_5,
        -- B,
        [1] = "Playtest",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
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

function export:OnEnter_box_GetDemoType_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDemoType_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|1424871660");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDemoType_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_GameStart.domino|@Get_Demotype|2044517718");
    l0:SetConnections({
        -- A_contains_B,
        [0] = self.f_box_Compare_Strings_1_A_contains_B,
        -- A_ncontains_B,
        [2] = self.f_box_Compare_Strings_1_A_ncontains_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_5,
        -- B,
        [1] = "Preview",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnExit_box_SetString_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    Globals.Bowmore_GameStart.sDemoType = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    Globals.Bowmore_GameStart.sDemoType = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDemoType_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    self._sld_type_box_GetDemoType_5 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_5 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_5 = l0:GetDataOutValue(0);
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
