LUAC�v  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key02/key02_020/key02_020_b10.domino
-- User graph: _KEY02_020_GetConvoyIDsFromPrefab
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
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetEntityInScriptPrefab.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_020/KEY02_020_B10._KEY02_020_NilReset.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_020/KEY02_020_B10.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.KEY02_020_B10 = nil;
    Globals.KEY02_020_B10 = {
        Global_Trailer = nil,
        Global_Strategic = nil,
        Global_BarrelTarget = nil,
        Global_Semi = nil,
        Global_Driver = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_020/KEY02_020_B10._KEY02_020_GetConvoyIDsFromPrefab.debug.lua")] = {
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
            [0] = {
                name = "BarrelTarget",
                type = "entity",
            },
            [1] = {
                name = "Strategic",
                type = "entity",
            },
            [2] = {
                name = "Trailer",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
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
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
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
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetEntityInScriptPrefab.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NoEntity",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ObjectName",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "ObjectEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_020/KEY02_020_B10._KEY02_020_NilReset.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "GlobalsSetToNil",
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
    self._name = "_KEY02_020_GetConvoyIDsFromPrefab";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab";
    self.var_Driver = nil;
    self.box_GetEntityInScriptPrefab_1 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|888564803");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_1_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_1_Out,
    });
    self.box_GetEntityInScriptPrefab_6 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|947205028");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_6_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_6_Out,
    });
    self.box__KEY02_020_NilReset_11 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_020/KEY02_020_B10._KEY02_020_NilReset.debug.lua");
    l0 = self.box__KEY02_020_NilReset_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__KEY02_020_NilReset_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1109111776");
    l0:SetConnections({
        -- GlobalsSetToNil,
        [0] = self.f_box__KEY02_020_NilReset_11_GlobalsSetToNil,
    });
    self.box_EntityStatusListener_10 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1207910686");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_10_Loaded,
    });
    self.box_GetEntityInScriptPrefab_2 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1553876591");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_2_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_2_Out,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1612824483");
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
    self.box_GetEntityInScriptPrefab_8 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1703149712");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_8_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_8_Out,
    });
    self.box_MultipleAND_v2_3 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1873284596");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleAND_v2_3_Out,
    });
    self.box_GetEntityInScriptPrefab_4 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1972738419");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_4_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_4_Out,
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|2030191651");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_9_Unloaded,
    });
end;

function export:In()
    local l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|235868764", "235868764", "_KEY02_020_GetConvoyIDsFromPrefab", "In", "box_MultipleOR_12.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|224013363", "224013363", "_KEY02_020_GetConvoyIDsFromPrefab", "box_Simple_Node_13.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetEntityInScriptPrefab_1_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInScriptPrefab_1_Out();
    params = self:OnEnter_box_MultipleAND_v2_3();
    l0 = self.box_GetEntityInScriptPrefab_1;
    l1 = self.box_MultipleAND_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1259872307", "1259872307", "_KEY02_020_GetConvoyIDsFromPrefab", "box_GetEntityInScriptPrefab_1.Out", "box_MultipleAND_v2_3.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 3);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInScriptPrefab_2();
    l0 = self.box_GetEntityInScriptPrefab_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1241527586", "1241527586", "_KEY02_020_GetConvoyIDsFromPrefab", "box_OutputOrder_v2_7.Out", "box_GetEntityInScriptPrefab_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInScriptPrefab_4();
    l0 = self.box_GetEntityInScriptPrefab_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1409049163", "1409049163", "_KEY02_020_GetConvoyIDsFromPrefab", "box_OutputOrder_v2_7.Out", "box_GetEntityInScriptPrefab_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInScriptPrefab_8();
    l0 = self.box_GetEntityInScriptPrefab_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1792750535", "1792750535", "_KEY02_020_GetConvoyIDsFromPrefab", "box_OutputOrder_v2_7.Out", "box_GetEntityInScriptPrefab_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInScriptPrefab_1();
    l0 = self.box_GetEntityInScriptPrefab_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|477257372", "477257372", "_KEY02_020_GetConvoyIDsFromPrefab", "box_OutputOrder_v2_7.Out", "box_GetEntityInScriptPrefab_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInScriptPrefab_6();
    l0 = self.box_GetEntityInScriptPrefab_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|744646634", "744646634", "_KEY02_020_GetConvoyIDsFromPrefab", "box_OutputOrder_v2_7.Out", "box_GetEntityInScriptPrefab_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetEntityInScriptPrefab_6_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInScriptPrefab_6_Out();
    params = self:OnEnter_box_MultipleAND_v2_3();
    l0 = self.box_GetEntityInScriptPrefab_6;
    l1 = self.box_MultipleAND_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|765751320", "765751320", "_KEY02_020_GetConvoyIDsFromPrefab", "box_GetEntityInScriptPrefab_6.Out", "box_MultipleAND_v2_3.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 4);
end;

function export:f_box__KEY02_020_NilReset_11_GlobalsSetToNil()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_13();
    l0 = self.box__KEY02_020_NilReset_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|40497399", "40497399", "_KEY02_020_GetConvoyIDsFromPrefab", "box__KEY02_020_NilReset_11.GlobalsSetToNil", "box_Simple_Node_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_10_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box__KEY02_020_NilReset_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|27641049", "27641049", "_KEY02_020_GetConvoyIDsFromPrefab", "box_EntityStatusListener_10.Loaded", "box__KEY02_020_NilReset_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetEntity_v2_5_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|601012912", "601012912", "_KEY02_020_GetConvoyIDsFromPrefab", "box_SetEntity_v2_5.Out", "box_EntityStatusListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetEntityInScriptPrefab_2_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInScriptPrefab_2_Out();
    params = self:OnEnter_box_MultipleAND_v2_3();
    l0 = self.box_GetEntityInScriptPrefab_2;
    l1 = self.box_MultipleAND_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|953847075", "953847075", "_KEY02_020_GetConvoyIDsFromPrefab", "box_GetEntityInScriptPrefab_2.Out", "box_MultipleAND_v2_3.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|2045535040", "2045535040", "_KEY02_020_GetConvoyIDsFromPrefab", "box_MultipleOR_12.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInScriptPrefab_8_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInScriptPrefab_8_Out();
    params = self:OnEnter_box_MultipleAND_v2_3();
    l0 = self.box_GetEntityInScriptPrefab_8;
    l1 = self.box_MultipleAND_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|182852280", "182852280", "_KEY02_020_GetConvoyIDsFromPrefab", "box_GetEntityInScriptPrefab_8.Out", "box_MultipleAND_v2_3.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_MultipleAND_v2_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_5();
    l0 = self.box_MultipleAND_v2_3;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1627131266", "1627131266", "_KEY02_020_GetConvoyIDsFromPrefab", "box_MultipleAND_v2_3.Out", "box_SetEntity_v2_5.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInScriptPrefab_4_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInScriptPrefab_4_Out();
    params = self:OnEnter_box_MultipleAND_v2_3();
    l0 = self.box_GetEntityInScriptPrefab_4;
    l1 = self.box_MultipleAND_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|405578699", "405578699", "_KEY02_020_GetConvoyIDsFromPrefab", "box_GetEntityInScriptPrefab_4.Out", "box_MultipleAND_v2_3.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_EntityStatusListener_9_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_10();
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|2986602", "2986602", "_KEY02_020_GetConvoyIDsFromPrefab", "box_EntityStatusListener_9.Unloaded", "box_EntityStatusListener_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|@n_NilReset");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInScriptPrefab_1()
    local params;
    params = {
        -- ObjectName,
        [0] = "Strategic",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|914559245");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
                [4] = self.f_box_OutputOrder_v2_7_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInScriptPrefab_6()
    local params;
    params = {
        -- ObjectName,
        [0] = "BarrelTarget",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.var_Driver,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_020\\KEY02_020_B10.domino|@_KEY02_020_GetConvoyIDsFromPrefab|1357943075");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_5_Out,
    });
    params = {
        -- Entity,
        [0] = Globals.KEY02_020_B10.Global_Driver,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInScriptPrefab_2()
    local params;
    params = {
        -- ObjectName,
        [0] = "Revelator_Trailer",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInScriptPrefab_8()
    local params;
    params = {
        -- ObjectName,
        [0] = "Revelator_Driver",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_3()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInScriptPrefab_4()
    local params;
    params = {
        -- ObjectName,
        [0] = "Revelator_Semi",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.var_Driver,
    };
    return params;
end;

function export:OnExit_box_GetEntityInScriptPrefab_1_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_1;
    Globals.KEY02_020_B10.Global_Strategic = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInScriptPrefab_6_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_6;
    Globals.KEY02_020_B10.Global_BarrelTarget = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_Driver = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInScriptPrefab_2_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_2;
    Globals.KEY02_020_B10.Global_Trailer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInScriptPrefab_8_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_8;
    Globals.KEY02_020_B10.Global_Driver = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInScriptPrefab_4_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_4;
    Globals.KEY02_020_B10.Global_Semi = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut>
		<DataOut Name="BarrelTarget" AnchorDynType="0" DataTypeID="entity" />
		<DataOut Name="Strategic" AnchorDynType="0" DataTypeID="entity" />
		<DataOut Name="Trailer" AnchorDynType="0" DataTypeID="entity" />
	</DatasOut>
</DominoMetadata>
