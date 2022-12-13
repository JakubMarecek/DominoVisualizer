LUAC�`  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_210/mis_210_b10.domino
-- User graph: ModernWeaponsDialogListener
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="AllEnemyGroup" Type="Nomad|group" />
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
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/IsEntityInGroup.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_210_B10 = nil;
    Globals.MIS_210_B10 = {
        eQgMMIS210 = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B10.ModernWeaponsDialogListener.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "ProhibitedWeaponUsed",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AllEnemyGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
            },
        },
        controlInCount = 3,
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
                name = "PlayerGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "ModernWeaponsDialogListener";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener";
    self.ProhibitedWeaponUsed = DummyFunction;
    self.eInstigator = nil;
    self.gPlayers = nil;
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|789027347");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_HealthListener_v6_6 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|1833802323");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_6_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_6_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_6_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_6_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_6_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_6_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_6_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_6_Revived,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_19();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|854569889", "854569889", "ModernWeaponsDialogListener", "In", "box_GetPlayerGroup_v2_19.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_6();
    l0 = self.box_HealthListener_v6_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|1672809059", "1672809059", "ModernWeaponsDialogListener", "box_Simple_Node_15.Out", "box_HealthListener_v6_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Strings_1_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|1858973621", "1858973621", "ModernWeaponsDialogListener", "box_Compare_Strings_1.A_eq_B", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_1_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_9();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|1605795239", "1605795239", "ModernWeaponsDialogListener", "box_Compare_Strings_1.A_neq_B", "box_Compare_Strings_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_10_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|363125308", "363125308", "ModernWeaponsDialogListener", "box_Compare_Strings_10.A_eq_B", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|970595593", "970595593", "ModernWeaponsDialogListener", "box_OutputOrder_v2_2.Out", "box_Simple_Node_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|638847032", "638847032", "ModernWeaponsDialogListener", "box_OutputOrder_v2_2.Out", "ProhibitedWeaponUsed", clone:GetLuaBox(), self);
    self:ProhibitedWeaponUsed();
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|1093196512", "1093196512", "ModernWeaponsDialogListener", "box_MultipleOR_8.Out", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_19_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_6();
    l0 = self.box_HealthListener_v6_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|1941183156", "1941183156", "ModernWeaponsDialogListener", "box_GetPlayerGroup_v2_19.Out", "box_HealthListener_v6_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Strings_9_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|1434027245", "1434027245", "ModernWeaponsDialogListener", "box_Compare_Strings_9.A_eq_B", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Strings_9_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_10();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|1639883022", "1639883022", "ModernWeaponsDialogListener", "box_Compare_Strings_9.A_neq_B", "box_Compare_Strings_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_6_Critical()
    self:OnExit_box_HealthListener_v6_6_Critical();
end;

function export:f_box_HealthListener_v6_6_Damaged()
    self:OnExit_box_HealthListener_v6_6_Damaged();
end;

function export:f_box_HealthListener_v6_6_Downed()
    self:OnExit_box_HealthListener_v6_6_Downed();
end;

function export:f_box_HealthListener_v6_6_Healed()
    self:OnExit_box_HealthListener_v6_6_Healed();
end;

function export:f_box_HealthListener_v6_6_Killed()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_6_Killed();
    params = self:OnEnter_box_IsEntityInGroup_18();
    l0 = self.box_HealthListener_v6_6;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|1796407425", "1796407425", "ModernWeaponsDialogListener", "box_HealthListener_v6_6.Killed", "box_IsEntityInGroup_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_6_Revived()
    self:OnExit_box_HealthListener_v6_6_Revived();
end;

function export:f_box_IsEntityInGroup_18_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_1();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|1369809010", "1369809010", "ModernWeaponsDialogListener", "box_IsEntityInGroup_18.True", "box_Compare_Strings_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|@DisableListeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|94738156");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_1_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_1_A_neq_B,
    });
    l0 = self.box_HealthListener_v6_6;
    params = {
        -- A,
        [0] = "BulletImpact",
        -- B,
        [1] = l0:GetDataOutValue(5),
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|469945327");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_10_A_eq_B,
    });
    l0 = self.box_HealthListener_v6_6;
    params = {
        -- A,
        [0] = "vehicle",
        -- B,
        [1] = l0:GetDataOutValue(5),
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|488287475");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|1385617606");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_19_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|1539908227");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_9_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_9_A_neq_B,
    });
    l0 = self.box_HealthListener_v6_6;
    params = {
        -- A,
        [0] = "explosion",
        -- B,
        [1] = l0:GetDataOutValue(5),
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_6()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.AllEnemyGroup,
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@ModernWeaponsDialogListener|2034136887");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_18_True,
    });
    params = {
        -- Entity,
        [0] = self.eInstigator,
        -- Group,
        [1] = self.gPlayers,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_6_Critical()
    local l0;
    l0 = self.box_HealthListener_v6_6;
    self.eInstigator = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_6_Damaged()
    local l0;
    l0 = self.box_HealthListener_v6_6;
    self.eInstigator = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_6_Downed()
    local l0;
    l0 = self.box_HealthListener_v6_6;
    self.eInstigator = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_6_Healed()
    local l0;
    l0 = self.box_HealthListener_v6_6;
    self.eInstigator = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_6_Killed()
    local l0;
    l0 = self.box_HealthListener_v6_6;
    self.eInstigator = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_6_Revived()
    local l0;
    l0 = self.box_HealthListener_v6_6;
    self.eInstigator = l0:GetDataOutValue(4);
end;

-- Empty out anchor definitions
function export:ProhibitedWeaponUsed()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="ProhibitedWeaponUsed" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="AllEnemyGroup" AnchorDynType="0" DataTypeID="group" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
