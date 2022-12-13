LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_master/fc5_gamestart.domino
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
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/GetDemoType.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetString_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Master/FC5_GameStart.globals.lua");
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Master/FC5_GameStart.Get_Demotype.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "DemoType_E3",
                delayed = false,
            },
            [1] = {
                name = "DemoType_Gamescom",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "Out_NoDemoType",
                delayed = false,
            },
        },
        controlOutCount = 4,
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
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype";
    self.Out = DummyFunction;
    self.Out_NoDemoType = DummyFunction;
    self.DemoType_E3 = DummyFunction;
    self.DemoType_Gamescom = DummyFunction;
    self.sDemoType = "";
    self.sPrint = "";
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|553468766");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1025085788");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
    self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1477170661");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleOR_40_Out,
    });
    self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1509651567");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleOR_28_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetDemoType_1();
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|464343109", "464343109", "Get_Demotype", "In", "box_GetDemoType_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_15();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1535559041", "1535559041", "Get_Demotype", "box_SetActivityFact_19.Out", "box_SetString_v2_15.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_22_Out()
    local l0;
    self:OnExit_box_SetString_v2_22_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1245694267", "1245694267", "Get_Demotype", "box_SetString_v2_22.Out", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Strings_2_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_16();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|2001601078", "2001601078", "Get_Demotype", "box_Compare_Strings_2.A_eq_B", "box_SetActivityFact_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_2_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_3();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1765561586", "1765561586", "Get_Demotype", "box_Compare_Strings_2.A_neq_B", "box_Compare_Strings_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_25();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1519131258", "1519131258", "Get_Demotype", "box_SetActivityFact_24.Out", "box_SetString_v2_25.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_14_Out()
    local l0;
    self:OnExit_box_SetString_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1896326698", "1896326698", "Get_Demotype", "box_SetString_v2_14.Out", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityFact_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_18();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|178266897", "178266897", "Get_Demotype", "box_SetActivityFact_23.Out", "box_SetString_v2_18.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_17_Out()
    local l0;
    self:OnExit_box_SetString_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1158279676", "1158279676", "Get_Demotype", "box_SetString_v2_17.Out", "box_MultipleOR_28.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityFact_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_22();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1416308710", "1416308710", "Get_Demotype", "box_SetActivityFact_26.Out", "box_SetString_v2_22.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_27_Out()
    local l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|244150108", "244150108", "Get_Demotype", "box_MultipleOR_27.Out", "DemoType_E3", l0:GetLuaBox(), self);
    self:DemoType_E3();
end;

function export:f_box_Compare_Strings_3_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1458991684", "1458991684", "Get_Demotype", "box_Compare_Strings_3.A_eq_B", "box_SetActivityFact_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_3_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_4();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1423347559", "1423347559", "Get_Demotype", "box_Compare_Strings_3.A_neq_B", "box_Compare_Strings_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_21_Out()
    local l0;
    self:OnExit_box_SetString_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|270331071", "270331071", "Get_Demotype", "box_SetString_v2_21.Out", "box_MultipleOR_28.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Strings_5_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_23();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|516432121", "516432121", "Get_Demotype", "box_Compare_Strings_5.A_eq_B", "box_SetActivityFact_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_5_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_6();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|972702606", "972702606", "Get_Demotype", "box_Compare_Strings_5.A_neq_B", "box_Compare_Strings_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_4_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_20();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|459704657", "459704657", "Get_Demotype", "box_Compare_Strings_4.A_eq_B", "box_SetActivityFact_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_4_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_5();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1792867065", "1792867065", "Get_Demotype", "box_Compare_Strings_4.A_neq_B", "box_Compare_Strings_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_21();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|427945881", "427945881", "Get_Demotype", "box_SetActivityFact_20.Out", "box_SetString_v2_21.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_7_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_26();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1630232329", "1630232329", "Get_Demotype", "box_Compare_Strings_7.A_eq_B", "box_SetActivityFact_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_7_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_11();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|2046601618", "2046601618", "Get_Demotype", "box_Compare_Strings_7.A_neq_B", "box_Compare_Strings_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_30();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|535550048", "535550048", "Get_Demotype", "box_OutputOrder_v2_31.Out", "box_Print_v2_30.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_2();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|888786973", "888786973", "Get_Demotype", "box_OutputOrder_v2_31.Out", "box_Compare_Strings_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_15_Out()
    local l0;
    self:OnExit_box_SetString_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|224478692", "224478692", "Get_Demotype", "box_SetString_v2_15.Out", "box_MultipleOR_28.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetActivityFact_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_39();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1610225222", "1610225222", "Get_Demotype", "box_SetActivityFact_38.Out", "box_SetString_v2_39.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_29();
    l0 = self.box_MultipleOR_32;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|963823596", "963823596", "Get_Demotype", "box_MultipleOR_32.Out", "box_SetActivityFact_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_37_A_contains_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_38();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1602093430", "1602093430", "Get_Demotype", "box_Compare_Strings_37.A_contains_B", "box_SetActivityFact_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_37_A_ncontains_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1451251072", "1451251072", "Get_Demotype", "box_Compare_Strings_37.A_ncontains_B", "Out_NoDemoType", clone:GetLuaBox(), self);
    self:Out_NoDemoType();
end;

function export:f_box_SetActivityFact_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_36();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|909839050", "909839050", "Get_Demotype", "box_SetActivityFact_35.Out", "box_SetString_v2_36.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_8_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1654070913", "1654070913", "Get_Demotype", "box_IsValueNil_v3_8.No", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_8_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1155008271", "1155008271", "Get_Demotype", "box_IsValueNil_v3_8.Yes", "Out_NoDemoType", clone:GetLuaBox(), self);
    self:Out_NoDemoType();
end;

function export:f_box_SetString_v2_18_Out()
    local l0;
    self:OnExit_box_SetString_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|296043771", "296043771", "Get_Demotype", "box_SetString_v2_18.Out", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityFact_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1907000279", "1907000279", "Get_Demotype", "box_SetActivityFact_29.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Strings_34_A_contains_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_35();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|897396236", "897396236", "Get_Demotype", "box_Compare_Strings_34.A_contains_B", "box_SetActivityFact_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_34_A_ncontains_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_37();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|742168571", "742168571", "Get_Demotype", "box_Compare_Strings_34.A_ncontains_B", "box_Compare_Strings_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_25_Out()
    local l0;
    self:OnExit_box_SetString_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|644290478", "644290478", "Get_Demotype", "box_SetString_v2_25.Out", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetString_v2_13_Out()
    local l0;
    self:OnExit_box_SetString_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1416934912", "1416934912", "Get_Demotype", "box_SetString_v2_13.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_40_Out()
    local l0;
    l0 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|350978315", "350978315", "Get_Demotype", "box_MultipleOR_40.Out", "DemoType_Gamescom", l0:GetLuaBox(), self);
    self:DemoType_Gamescom();
end;

function export:f_box_MultipleOR_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_33();
    l0 = self.box_MultipleOR_28;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|213797348", "213797348", "Get_Demotype", "box_MultipleOR_28.Out", "box_SetActivityFact_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_39_Out()
    local l0;
    self:OnExit_box_SetString_v2_39_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|635733403", "635733403", "Get_Demotype", "box_SetString_v2_39.Out", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Strings_12_A_contains_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|15318820", "15318820", "Get_Demotype", "box_Compare_Strings_12.A_contains_B", "box_SetActivityFact_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_12_A_ncontains_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_34();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1630117176", "1630117176", "Get_Demotype", "box_Compare_Strings_12.A_ncontains_B", "box_Compare_Strings_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_13();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|387766213", "387766213", "Get_Demotype", "box_SetActivityFact_10.Out", "box_SetString_v2_13.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1722903284", "1722903284", "Get_Demotype", "box_SetActivityFact_33.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_6_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|69970605", "69970605", "Get_Demotype", "box_Compare_Strings_6.A_eq_B", "box_SetActivityFact_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_6_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_7();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1342222112", "1342222112", "Get_Demotype", "box_Compare_Strings_6.A_neq_B", "box_Compare_Strings_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_14();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|569441012", "569441012", "Get_Demotype", "box_SetActivityFact_9.Out", "box_SetString_v2_14.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetDemoType_1_Out()
    local params, l0;
    self:OnExit_box_GetDemoType_1_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_8();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|924182241", "924182241", "Get_Demotype", "box_GetDemoType_1.Out", "box_IsValueNil_v3_8.String", clone:GetLuaBox(), l0:GetLuaBox());
    -- String
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_11_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1789642289", "1789642289", "Get_Demotype", "box_Compare_Strings_11.A_eq_B", "box_SetActivityFact_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_11_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_12();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|151041389", "151041389", "Get_Demotype", "box_Compare_Strings_11.A_neq_B", "box_Compare_Strings_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_36_Out()
    local l0;
    self:OnExit_box_SetString_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1348386598", "1348386598", "Get_Demotype", "box_SetString_v2_36.Out", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetActivityFact_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_17();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1005397667", "1005397667", "Get_Demotype", "box_SetActivityFact_16.Out", "box_SetString_v2_17.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_SetActivityFact_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|19755079");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_19_Out,
    });
    params = {
        -- Fact,
        [0] = "E3_HandsOnBooth_2",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|39186084");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_22_Out,
    });
    params = {
        -- String,
        [5] = "E3_HandsOnVIP_3",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|169649107");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_2_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_2_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_1,
        -- B,
        [1] = "E3_HandsOnBooth_1",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_24()
    local params, l0;
    DrawTextToScreen("Comment: SET ACTIVITY TYPE - FPP_Demo_Started", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetActivityFact')-- Comment: SET ACTIVITY TYPE - FPP_Demo_Started");
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|188605694");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_24_Out,
    });
    params = {
        -- Fact,
        [0] = "E3_HandsOnVIP_2",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|282568737");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_14_Out,
    });
    params = {
        -- String,
        [5] = "Gamescom_HandsOn_1 Started",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|333397818");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_23_Out,
    });
    params = {
        -- Fact,
        [0] = "E3_HandsOnVIP_1",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|353620782");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_17_Out,
    });
    params = {
        -- String,
        [5] = "E3_HandsOnBooth_1",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_26()
    local params, l0;
    DrawTextToScreen("Comment: SET ACTIVITY TYPE - TOR_Demo_Started", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetActivityFact')-- Comment: SET ACTIVITY TYPE - TOR_Demo_Started");
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|382182055");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_26_Out,
    });
    params = {
        -- Fact,
        [0] = "E3_HandsOnVIP_3",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|558148363");
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
        [8] = self._sld_type_box_GetDemoType_1,
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|558848633");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_3_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_3_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_1,
        -- B,
        [1] = "E3_HandsOnBooth_2",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|567422580");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_21_Out,
    });
    params = {
        -- String,
        [5] = "E3_HandsOnBooth_3",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|600335978");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_5_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_5_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_1,
        -- B,
        [1] = "E3_HandsOnVIP_1",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|635790643");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_4_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_4_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_1,
        -- B,
        [1] = "E3_HandsOnBooth_3",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|705771293");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_20_Out,
    });
    params = {
        -- Fact,
        [0] = "E3_HandsOnBooth_3",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|793640412");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_7_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_7_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_1,
        -- B,
        [1] = "E3_HandsOnVIP_3",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|886921939");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|887260235");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_15_Out,
    });
    params = {
        -- String,
        [5] = "E3_HandsOnBooth_2",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_38()
    local params, l0;
    DrawTextToScreen("Comment: SET ACTIVITY TYPE - Gamescom_Demo_1_Started", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetActivityFact')-- Comment: SET ACTIVITY TYPE - Gamescom_Demo_1_Started");
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|956876756");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_38_Out,
    });
    params = {
        -- Fact,
        [0] = "Gamescom_HandsOn_3 Started",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1149377274");
    l0:SetConnections({
        -- A_contains_B,
        [0] = self.f_box_Compare_Strings_37_A_contains_B,
        -- A_ncontains_B,
        [2] = self.f_box_Compare_Strings_37_A_ncontains_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_1,
        -- B,
        [1] = "Gamescom_HandsOn_2",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_35()
    local params, l0;
    DrawTextToScreen("Comment: SET ACTIVITY TYPE - Gamescom_Demo_1_Started", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetActivityFact')-- Comment: SET ACTIVITY TYPE - Gamescom_Demo_1_Started");
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1159436660");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_35_Out,
    });
    params = {
        -- Fact,
        [0] = "Gamescom_HandsOn_2 Started",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1255339586");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_8_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_8_Yes,
    });
    params = {
        -- str,
        [14] = self._sld_type_box_GetDemoType_1,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1293552376");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_18_Out,
    });
    params = {
        -- String,
        [5] = "E3_HandsOnVIP_1",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1328665944");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_29_Out,
    });
    params = {
        -- Fact,
        [0] = "VIPDemo",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1346135261");
    l0:SetConnections({
        -- A_contains_B,
        [0] = self.f_box_Compare_Strings_34_A_contains_B,
        -- A_ncontains_B,
        [2] = self.f_box_Compare_Strings_34_A_ncontains_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_1,
        -- B,
        [1] = "Gamescom_HandsOn_2",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1382745241");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_25_Out,
    });
    params = {
        -- String,
        [5] = "E3_HandsOnVIP_2",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1450976431");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_13_Out,
    });
    params = {
        -- String,
        [5] = "FPP_Demo_Started",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1607160741");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_39_Out,
    });
    params = {
        -- String,
        [5] = "Gamescom_HandsOn_3 Started",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1632300491");
    l0:SetConnections({
        -- A_contains_B,
        [0] = self.f_box_Compare_Strings_12_A_contains_B,
        -- A_ncontains_B,
        [2] = self.f_box_Compare_Strings_12_A_ncontains_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_1,
        -- B,
        [1] = "Gamescom_HandsOn_1",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_10()
    local params, l0;
    DrawTextToScreen("Comment: SET ACTIVITY TYPE - FPP_Demo_Started", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetActivityFact')-- Comment: SET ACTIVITY TYPE - FPP_Demo_Started");
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1650784061");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_10_Out,
    });
    params = {
        -- Fact,
        [0] = "FPP_Demo_Started",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1702461990");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_33_Out,
    });
    params = {
        -- Fact,
        [0] = "BoothDemo",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1779803826");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_6_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_6_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_1,
        -- B,
        [1] = "E3_HandsOnVIP_2",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_9()
    local params, l0;
    DrawTextToScreen("Comment: SET ACTIVITY TYPE - Gamescom_Demo_1_Started", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetActivityFact')-- Comment: SET ACTIVITY TYPE - Gamescom_Demo_1_Started");
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1843150679");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_9_Out,
    });
    params = {
        -- Fact,
        [0] = "Gamescom_HandsOn_1 Started",
    };
    return params;
end;

function export:OnEnter_box_GetDemoType_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDemoType_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|1935547888");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDemoType_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|2004335298");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_11_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_11_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_1,
        -- B,
        [1] = "FPP",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|2010087474");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_36_Out,
    });
    params = {
        -- String,
        [5] = "Gamescom_HandsOn_2 Started",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@Get_Demotype|2133437870");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_16_Out,
    });
    params = {
        -- Fact,
        [0] = "E3_HandsOnBooth_1",
    };
    return params;
end;

function export:OnExit_box_SetString_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    Globals.FC5_GameStart.sDemoType = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    Globals.FC5_GameStart.sDemoType = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    Globals.FC5_GameStart.sDemoType = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    Globals.FC5_GameStart.sDemoType = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    Globals.FC5_GameStart.sDemoType = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    Globals.FC5_GameStart.sDemoType = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    Globals.FC5_GameStart.sDemoType = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    Globals.FC5_GameStart.sDemoType = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    Globals.FC5_GameStart.sDemoType = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDemoType_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    self._sld_type_box_GetDemoType_1 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_1 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_1 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_1 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_1 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_1 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_1 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_1 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_1 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_1 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_1 = l0:GetDataOutValue(0);
    self._sld_type_box_GetDemoType_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    Globals.FC5_GameStart.sDemoType = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Out_NoDemoType()
    
end;
function export:DemoType_E3()
    
end;
function export:DemoType_Gamescom()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="DemoType_E3" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="DemoType_Gamescom" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out_NoDemoType" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
