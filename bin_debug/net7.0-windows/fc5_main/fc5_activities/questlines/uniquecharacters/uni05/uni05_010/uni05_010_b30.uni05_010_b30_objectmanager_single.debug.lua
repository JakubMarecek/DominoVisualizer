LUACm�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni05/uni05_010/uni05_010_b30.domino
-- User graph: UNI05_010_B30_ObjectManager_Single
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Fact" Type="Core|string" />
    <DataIn Name="Object_Intact" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_010/UNI05_010_B30.UNI05_010_B30_ObjectManager_Single.debug.lua")] = {
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
                name = "Fact",
                type = "string",
            },
            [1] = {
                name = "Object_Intact",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
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
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI05_010_B30_ObjectManager_Single";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single";
    self.Out = DummyFunction;
    self.box_Gate_v3_21 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|257344227");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_21_Out,
    });
    self.box_OnceOnly_v3_15 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|322423946");
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
                [0] = self.f_box_OnceOnly_v3_15_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|715682928");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
    });
    self.box_MultipleAND_v2_14 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|783641989");
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
        [0] = self.f_box_MultipleAND_v2_14_Out,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|915215196");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_StaticBreakableListener_3 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|947159039");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_3_OnBreak,
    });
    self.box_OnceOnly_v3_13 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1441465844");
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
                [0] = self.f_box_OnceOnly_v3_13_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_24 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1959268738");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_24_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|947469896", "947469896", "UNI05_010_B30_ObjectManager_Single", "In", "box_OutputOrder_v2_16.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_Gate_v3_21;
    l1 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1797554345", "1797554345", "UNI05_010_B30_ObjectManager_Single", "box_Gate_v3_21.Out", "box_EntityStatusListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetActivityFact_12_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_14();
    l0 = self.box_MultipleAND_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|103179684", "103179684", "UNI05_010_B30_ObjectManager_Single", "box_GetActivityFact_12.FactNotSet", "box_MultipleAND_v2_14.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_GetActivityFact_12_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1154714139", "1154714139", "UNI05_010_B30_ObjectManager_Single", "box_GetActivityFact_12.FactSet", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityFact_11_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_14();
    l0 = self.box_MultipleAND_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1257408984", "1257408984", "UNI05_010_B30_ObjectManager_Single", "box_GetActivityFact_11.FactNotSet", "box_MultipleAND_v2_14.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_GetActivityFact_11_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|753705717", "753705717", "UNI05_010_B30_ObjectManager_Single", "box_GetActivityFact_11.FactSet", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_15_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_21();
    l0 = self.box_OnceOnly_v3_15;
    l1 = self.box_Gate_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|696714810", "696714810", "UNI05_010_B30_ObjectManager_Single", "box_OnceOnly_v3_15.Out", "box_Gate_v3_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_17();
    l0 = self.box_EntityStatusListener_1;
    l1 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|32055097", "32055097", "UNI05_010_B30_ObjectManager_Single", "box_EntityStatusListener_1.Loaded", "box_ShimmerModifier_v2_17.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_14_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_14;
    l1 = self.box_OnceOnly_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|314849421", "314849421", "UNI05_010_B30_ObjectManager_Single", "box_MultipleAND_v2_14.Out", "box_OnceOnly_v3_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_8_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_8;
    l1 = self.box_OnceOnly_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|195054415", "195054415", "UNI05_010_B30_ObjectManager_Single", "box_MultipleOR_8.Out", "box_OnceOnly_v3_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableListener_3_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_4();
    l0 = self.box_StaticBreakableListener_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1095902166", "1095902166", "UNI05_010_B30_ObjectManager_Single", "box_StaticBreakableListener_3.OnBreak", "box_SetActivityFact_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_12();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1907340117", "1907340117", "UNI05_010_B30_ObjectManager_Single", "box_OutputOrder_v2_16.Out", "box_GetActivityFact_12.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|185146159", "185146159", "UNI05_010_B30_ObjectManager_Single", "box_OutputOrder_v2_16.Out", "box_GetActivityFact_11.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1543853291", "1543853291", "UNI05_010_B30_ObjectManager_Single", "box_OutputOrder_v2_16.Out", "box_GetActivityFact_10.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1135753936", "1135753936", "UNI05_010_B30_ObjectManager_Single", "box_OutputOrder_v2_16.Out", "box_GetActivityFact_9.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1512364375", "1512364375", "UNI05_010_B30_ObjectManager_Single", "box_OutputOrder_v2_16.Out", "box_GetActivityFact_2.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_24();
    l0 = self.box_EntityStatusListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1066677779", "1066677779", "UNI05_010_B30_ObjectManager_Single", "box_OutputOrder_v2_22.Out", "box_EntityStatusListener_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_21();
    l0 = self.box_Gate_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|446671682", "446671682", "UNI05_010_B30_ObjectManager_Single", "box_OutputOrder_v2_22.Out", "box_Gate_v3_21.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_ShimmerModifier_v2_17_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_3();
    l0 = self.box_StaticBreakableListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|422847402", "422847402", "UNI05_010_B30_ObjectManager_Single", "box_ShimmerModifier_v2_17.Disabled", "box_StaticBreakableListener_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityFact_2_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_14();
    l0 = self.box_MultipleAND_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1108499391", "1108499391", "UNI05_010_B30_ObjectManager_Single", "box_GetActivityFact_2.FactNotSet", "box_MultipleAND_v2_14.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 4);
end;

function export:f_box_GetActivityFact_2_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1815752888", "1815752888", "UNI05_010_B30_ObjectManager_Single", "box_GetActivityFact_2.FactSet", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityFact_9_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_14();
    l0 = self.box_MultipleAND_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|500004669", "500004669", "UNI05_010_B30_ObjectManager_Single", "box_GetActivityFact_9.FactNotSet", "box_MultipleAND_v2_14.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 3);
end;

function export:f_box_GetActivityFact_9_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1984877027", "1984877027", "UNI05_010_B30_ObjectManager_Single", "box_GetActivityFact_9.FactSet", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OnceOnly_v3_13_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_OnceOnly_v3_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1940602708", "1940602708", "UNI05_010_B30_ObjectManager_Single", "box_OnceOnly_v3_13.Out", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_24_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_23();
    l0 = self.box_EntityStatusListener_24;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1031223114", "1031223114", "UNI05_010_B30_ObjectManager_Single", "box_EntityStatusListener_24.Loaded", "box_StaticBreakableBreaker_23.ForceState", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceState
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_10_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_14();
    l0 = self.box_MultipleAND_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1088284845", "1088284845", "UNI05_010_B30_ObjectManager_Single", "box_GetActivityFact_10.FactNotSet", "box_MultipleAND_v2_14.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_GetActivityFact_10_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1481688047", "1481688047", "UNI05_010_B30_ObjectManager_Single", "box_GetActivityFact_10.FactSet", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:OnEnter_box_Gate_v3_21()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|315594074");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_12_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_12_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015178805974690",
        -- Fact,
        [1] = self.Fact,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|322092458");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_11_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_11_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015178805454441",
        -- Fact,
        [1] = self.Fact,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|395571932");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = self.Fact,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.Object_Intact,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_14()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = self.Object_Intact,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1136812189");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
                [3] = self.f_box_OutputOrder_v2_16_Out_3,
                [4] = self.f_box_OutputOrder_v2_16_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1150267259");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1238107042");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_17_Disabled,
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
        [4] = self.Object_Intact,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1269983674");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_2_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_2_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015178805462218",
        -- Fact,
        [1] = self.Fact,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1365420487");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_9_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_9_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015178805458403",
        -- Fact,
        [1] = self.Fact,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|1424345444");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = self.Object_Intact,
        -- forcedStateId,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.Object_Intact,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_010\\UNI05_010_B30.domino|@UNI05_010_B30_ObjectManager_Single|2060811872");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_10_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_10_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015193042716049",
        -- Fact,
        [1] = self.Fact,
    };
    return params;
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
		<DataIn Name="Fact" AnchorDynType="0" DataTypeID="string" />
		<DataIn Name="Object_Intact" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
