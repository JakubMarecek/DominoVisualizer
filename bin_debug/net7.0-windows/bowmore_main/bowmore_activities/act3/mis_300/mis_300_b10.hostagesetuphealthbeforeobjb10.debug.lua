LUACU  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_300/mis_300_b10.domino
-- User graph: HostageSetupHealthBeforeObjB10
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eIsHostage1" Type="Nomad|entity{}" />
    <DataIn Name="eIsHostage2" Type="Nomad|entity{}" />
    <DataIn Name="eIsHostage3" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_300_B10 = nil;
    Globals.MIS_300_B10 = {
        bBreakersDone = false,
        bTankDone = false,
        bHostageAllDead = false,
        gPlayerGroup = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.HostageSetupHealthBeforeObjB10.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "TooMuchDead",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "eIsHostage1",
                type = "entity",
            },
            [1] = {
                name = "eIsHostage2",
                type = "entity",
            },
            [2] = {
                name = "eIsHostage3",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ForceRelease",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "HostageReleased",
                delayed = false,
            },
            [1] = {
                name = "NextHostage",
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
                name = "Hostage",
                type = "entity",
            },
            [1] = {
                name = "STP_Tied",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
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
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "HostageSetupHealthBeforeObjB10";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10";
    self.TooMuchDead = DummyFunction;
    self.box_Brick_Hostage_Setup_v2_23 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|449449426");
    l0:SetConnections({
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_23_NextHostage,
    });
    self.box_GroupSizeListener_v6_12 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|783254303");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_12_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_12_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_12_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_12_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_12_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_12_MemberSpawned,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|1228047447");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_Brick_Hostage_Setup_v2_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|1311269343");
    l0:SetConnections({
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_24_NextHostage,
    });
    self.box_Brick_Hostage_Setup_v2_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|1421640073");
    l0:SetConnections({
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_22_NextHostage,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_22();
    l0 = self.box_Brick_Hostage_Setup_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|1284371012", "1284371012", "HostageSetupHealthBeforeObjB10", "In", "box_Brick_Hostage_Setup_v2_22.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_23_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_24();
    l0 = self.box_Brick_Hostage_Setup_v2_23;
    l1 = self.box_Brick_Hostage_Setup_v2_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|866527733", "866527733", "HostageSetupHealthBeforeObjB10", "box_Brick_Hostage_Setup_v2_23.NextHostage", "box_Brick_Hostage_Setup_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_12_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|1786785839", "1786785839", "HostageSetupHealthBeforeObjB10", "box_GroupSizeListener_v6_12.Enabled", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_12_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|606070362", "606070362", "HostageSetupHealthBeforeObjB10", "box_GroupSizeListener_v6_12.MemberAdded", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_12_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|1821710197", "1821710197", "HostageSetupHealthBeforeObjB10", "box_GroupSizeListener_v6_12.MemberRemoved", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetBoolean_v2_11_Out()
    self:OnExit_box_SetBoolean_v2_11_Out();
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_13();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|1910604413", "1910604413", "HostageSetupHealthBeforeObjB10", "box_MultipleOR_14.Out", "box_Compare_Integers_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_24_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_12();
    l0 = self.box_Brick_Hostage_Setup_v2_24;
    l1 = self.box_GroupSizeListener_v6_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|175601436", "175601436", "HostageSetupHealthBeforeObjB10", "box_Brick_Hostage_Setup_v2_24.NextHostage", "box_GroupSizeListener_v6_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_22_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_23();
    l0 = self.box_Brick_Hostage_Setup_v2_22;
    l1 = self.box_Brick_Hostage_Setup_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|1957828776", "1957828776", "HostageSetupHealthBeforeObjB10", "box_Brick_Hostage_Setup_v2_22.NextHostage", "box_Brick_Hostage_Setup_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|679260174", "679260174", "HostageSetupHealthBeforeObjB10", "box_OutputOrder_v2_15.Out", "TooMuchDead", clone:GetLuaBox(), self);
    self:TooMuchDead();
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_11();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|2003771016", "2003771016", "HostageSetupHealthBeforeObjB10", "box_OutputOrder_v2_15.Out", "box_SetBoolean_v2_11.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_13_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_11();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|635759867", "635759867", "HostageSetupHealthBeforeObjB10", "box_Compare_Integers_13.A_ge_B", "box_SetBoolean_v2_11.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_13_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|415031416", "415031416", "HostageSetupHealthBeforeObjB10", "box_Compare_Integers_13.A_lt_B", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_23()
    local params;
    params = {
        -- Hostage,
        [0] = self.eIsHostage2,
        -- STP_Tied,
        [1] = "2109096674396738836",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_12()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#31C5655A",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|1103324528");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_24()
    local params;
    params = {
        -- Hostage,
        [0] = self.eIsHostage3,
        -- STP_Tied,
        [1] = "2109096697616405834",
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_22()
    local params;
    params = {
        -- Hostage,
        [0] = self.eIsHostage1,
        -- STP_Tied,
        [1] = "2108309538162613200",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|1616994035");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostageSetupHealthBeforeObjB10|1979132431");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_13_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_13_A_lt_B,
    });
    l0 = self.box_GroupSizeListener_v6_12;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_300_B10.bHostageAllDead = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:TooMuchDead()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="TooMuchDead" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eIsHostage1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eIsHostage2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eIsHostage3" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
