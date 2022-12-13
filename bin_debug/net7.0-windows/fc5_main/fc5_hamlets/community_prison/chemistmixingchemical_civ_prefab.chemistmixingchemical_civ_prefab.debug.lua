LUAC3W  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_hamlets/community_prison/chemistmixingchemical_civ_prefab.domino
-- User graph: ChemistMixingChemical_Civ_Prefab
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetEntityInScriptPrefab.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Hamlets/Community_Prison/ChemistMixingChemical_Civ_Prefab.ChemistMixingChemical_Civ_Prefab.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
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
    self._name = "ChemistMixingChemical_Civ_Prefab";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab";
    self.Out = DummyFunction;
    self.eSTP = nil;
    self.ePROP1 = nil;
    self.ePROP2 = nil;
    self.box_GetEntityInScriptPrefab_5 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|369172609");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_5_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_5_Out,
    });
    self.box_GetEntityInScriptPrefab_4 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|393712665");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_4_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_4_Out,
    });
    self.box_VisibilityModifier_2 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|483616710");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_2_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_2_Enabled,
    });
    self.box_ContextualActionListener_1 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|994442199");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_1_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_1_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_1_Markup1,
        -- Start,
        [8] = self.f_box_ContextualActionListener_1_Start,
    });
    self.box_GetEntityInScriptPrefab_3 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|1287394446");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_3_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_3_Out,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|1543014335");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|1564555372");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_VisibilityModifier_6 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|1732521819");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetEntityInScriptPrefab_3();
    l0 = self.box_GetEntityInScriptPrefab_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|32674142", "32674142", "ChemistMixingChemical_Civ_Prefab", "In", "box_GetEntityInScriptPrefab_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetEntityInScriptPrefab_5_NoEntity()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|1946512779", "1946512779", "ChemistMixingChemical_Civ_Prefab", "box_GetEntityInScriptPrefab_5.NoEntity", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_GetEntityInScriptPrefab_5_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInScriptPrefab_5_Out();
    params = self:OnEnter_box_ContextualActionListener_1();
    l0 = self.box_GetEntityInScriptPrefab_5;
    l1 = self.box_ContextualActionListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|1743058179", "1743058179", "ChemistMixingChemical_Civ_Prefab", "box_GetEntityInScriptPrefab_5.Out", "box_ContextualActionListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetEntityInScriptPrefab_4_NoEntity()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|555543307", "555543307", "ChemistMixingChemical_Civ_Prefab", "box_GetEntityInScriptPrefab_4.NoEntity", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_GetEntityInScriptPrefab_4_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInScriptPrefab_4_Out();
    params = self:OnEnter_box_GetEntityInScriptPrefab_5();
    l0 = self.box_GetEntityInScriptPrefab_4;
    l1 = self.box_GetEntityInScriptPrefab_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|1908081655", "1908081655", "ChemistMixingChemical_Civ_Prefab", "box_GetEntityInScriptPrefab_4.Out", "box_GetEntityInScriptPrefab_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_2_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_6();
    l0 = self.box_VisibilityModifier_2;
    l1 = self.box_VisibilityModifier_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|530035286", "530035286", "ChemistMixingChemical_Civ_Prefab", "box_VisibilityModifier_2.Disabled", "box_VisibilityModifier_6.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_6();
    l0 = self.box_VisibilityModifier_2;
    l1 = self.box_VisibilityModifier_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|574479702", "574479702", "ChemistMixingChemical_Civ_Prefab", "box_VisibilityModifier_2.Enabled", "box_VisibilityModifier_6.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_1_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_1;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|1743896612", "1743896612", "ChemistMixingChemical_Civ_Prefab", "box_ContextualActionListener_1.End", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_1_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_1;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|973536797", "973536797", "ChemistMixingChemical_Civ_Prefab", "box_ContextualActionListener_1.Interrupt", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_1_Markup1()
    local l0, l1;
    l0 = self.box_ContextualActionListener_1;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|1535688285", "1535688285", "ChemistMixingChemical_Civ_Prefab", "box_ContextualActionListener_1.Markup1", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ContextualActionListener_1_Start()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_2();
    l0 = self.box_ContextualActionListener_1;
    l1 = self.box_VisibilityModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|195508500", "195508500", "ChemistMixingChemical_Civ_Prefab", "box_ContextualActionListener_1.Start", "box_VisibilityModifier_2.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInScriptPrefab_3_NoEntity()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|1194440715", "1194440715", "ChemistMixingChemical_Civ_Prefab", "box_GetEntityInScriptPrefab_3.NoEntity", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_GetEntityInScriptPrefab_3_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInScriptPrefab_3_Out();
    params = self:OnEnter_box_GetEntityInScriptPrefab_4();
    l0 = self.box_GetEntityInScriptPrefab_3;
    l1 = self.box_GetEntityInScriptPrefab_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|74280190", "74280190", "ChemistMixingChemical_Civ_Prefab", "box_GetEntityInScriptPrefab_3.Out", "box_GetEntityInScriptPrefab_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|323504171", "323504171", "ChemistMixingChemical_Civ_Prefab", "box_MultipleOR_7.Out", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_2();
    l0 = self.box_Delay_v5_8;
    l1 = self.box_VisibilityModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\ChemistMixingChemical_Civ_Prefab.domino|@ChemistMixingChemical_Civ_Prefab|1454561854", "1454561854", "ChemistMixingChemical_Civ_Prefab", "box_Delay_v5_8.TimeElapsed", "box_VisibilityModifier_2.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:OnEnter_box_GetEntityInScriptPrefab_5()
    local params;
    params = {
        -- ObjectName,
        [0] = "prop02",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInScriptPrefab_4()
    local params;
    params = {
        -- ObjectName,
        [0] = "prop01",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_2()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.ePROP1,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_1()
    local params;
    params = {
        -- ContextualAction,
        [0] = self.eSTP,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInScriptPrefab_3()
    local params;
    params = {
        -- ObjectName,
        [0] = "STP_ChemistMixingChemical",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.07,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_6()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = self.ePROP2,
    };
    return params;
end;

function export:OnExit_box_GetEntityInScriptPrefab_5_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_5;
    self.ePROP2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInScriptPrefab_4_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_4;
    self.ePROP1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInScriptPrefab_3_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_3;
    self.eSTP = l0:GetDataOutValue(0);
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
