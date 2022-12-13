LUAC~W  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_400/mis_400_b10.domino
-- User graph: SkipObjectiveListener
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_400_B10 = nil;
    Globals.MIS_400_B10 = {
        bB05Completed = false,
        bTwoOnThree = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_400/MIS_400_B10.SkipObjectiveListener.debug.lua")] = {
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
            [1] = {
                name = "PlayerDetected",
                delayed = false,
            },
            [2] = {
                name = "SkipObjectiveConfirmed",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua")] = {
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
                name = "Detected",
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "SkipObjectiveListener";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener";
    self.Out = DummyFunction;
    self.PlayerDetected = DummyFunction;
    self.SkipObjectiveConfirmed = DummyFunction;
    self.iGuardsLeft = 0;
    self.box_Gate_v3_4 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|1011036056");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_4_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_4_Out,
    });
    self.box_GroupSizeListener_v6_2 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|1101379741");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_2_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_2_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_2_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_2_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_2_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_2_MemberSpawned,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|1388796766");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_Gate_v3_5 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|1680487465");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_5_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_5_Out,
    });
    self.box_PlayerFullyDetected_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|2112659237");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_1_Detected,
        -- Disabled,
        [1] = self.f_box_PlayerFullyDetected_1_Disabled,
        -- Enabled,
        [2] = self.f_box_PlayerFullyDetected_1_Enabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_PlayerFullyDetected_1();
    l0 = self.box_PlayerFullyDetected_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|1657024397", "1657024397", "SkipObjectiveListener", "In", "box_PlayerFullyDetected_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_4_Closed()
    local l0;
    l0 = self.box_Gate_v3_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|2140352235", "2140352235", "SkipObjectiveListener", "box_Gate_v3_4.Closed", "SkipObjectiveConfirmed", l0:GetLuaBox(), self);
    self:SkipObjectiveConfirmed();
end;

function export:f_box_Gate_v3_4_Out()
    local l0;
    l0 = self.box_Gate_v3_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|805230886", "805230886", "SkipObjectiveListener", "box_Gate_v3_4.Out", "PlayerDetected", l0:GetLuaBox(), self);
    self:PlayerDetected();
end;

function export:f_box_GroupSizeListener_v6_2_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_5();
    l0 = self.box_GroupSizeListener_v6_2;
    l1 = self.box_Gate_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|308028678", "308028678", "SkipObjectiveListener", "box_GroupSizeListener_v6_2.Disabled", "box_Gate_v3_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_2_Enabled()
    local l0;
    self:OnExit_box_GroupSizeListener_v6_2_Enabled();
    l0 = self.box_GroupSizeListener_v6_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|1873478850", "1873478850", "SkipObjectiveListener", "box_GroupSizeListener_v6_2.Enabled", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_GroupSizeListener_v6_2_MemberAdded()
    self:OnExit_box_GroupSizeListener_v6_2_MemberAdded();
end;

function export:f_box_GroupSizeListener_v6_2_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_2_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_2_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_2_MemberRemoved();
    params = self:OnEnter_box_Compare_Integers_3();
    l0 = self.box_GroupSizeListener_v6_2;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|1981771850", "1981771850", "SkipObjectiveListener", "box_GroupSizeListener_v6_2.MemberRemoved", "box_Compare_Integers_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_2_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_2_MemberSpawned();
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_2();
    l0 = self.box_MultipleOR_6;
    l1 = self.box_GroupSizeListener_v6_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|1581020846", "1581020846", "SkipObjectiveListener", "box_MultipleOR_6.Out", "box_GroupSizeListener_v6_2.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_5();
    l0 = self.box_Gate_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|14244204", "14244204", "SkipObjectiveListener", "box_OutputOrder_v2_7.Out", "box_Gate_v3_5.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_4();
    l0 = self.box_Gate_v3_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|152387699", "152387699", "SkipObjectiveListener", "box_OutputOrder_v2_7.Out", "box_Gate_v3_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_3_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|11841047", "11841047", "SkipObjectiveListener", "box_Compare_Integers_3.A_le_B", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_5_Closed()
    local l0, l1;
    l0 = self.box_Gate_v3_5;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|370558622", "370558622", "SkipObjectiveListener", "box_Gate_v3_5.Closed", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerFullyDetected_1();
    l0 = self.box_Gate_v3_5;
    l1 = self.box_PlayerFullyDetected_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|1514129553", "1514129553", "SkipObjectiveListener", "box_Gate_v3_5.Out", "box_PlayerFullyDetected_1.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PlayerFullyDetected_1_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_PlayerFullyDetected_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|313390775", "313390775", "SkipObjectiveListener", "box_PlayerFullyDetected_1.Detected", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_1_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_4();
    l0 = self.box_PlayerFullyDetected_1;
    l1 = self.box_Gate_v3_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|44197048", "44197048", "SkipObjectiveListener", "box_PlayerFullyDetected_1.Disabled", "box_Gate_v3_4.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_PlayerFullyDetected_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_2();
    l0 = self.box_PlayerFullyDetected_1;
    l1 = self.box_GroupSizeListener_v6_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|1932937108", "1932937108", "SkipObjectiveListener", "box_PlayerFullyDetected_1.Enabled", "box_GroupSizeListener_v6_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_Gate_v3_4()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_2()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#FB3D813C",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|1391199923");
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

function export:OnEnter_box_Compare_Integers_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@SkipObjectiveListener|1584591251");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_3_A_le_B,
    });
    params = {
        -- A,
        [0] = self.iGuardsLeft,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_5()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_1()
    local params;
    params = {
        -- group,
        [0] = "#FB3D813C",
    };
    return params;
end;

function export:OnExit_box_GroupSizeListener_v6_2_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.iGuardsLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_2_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.iGuardsLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_2_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.iGuardsLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_2_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.iGuardsLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_2_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.iGuardsLeft = l0:GetDataOutValue(1);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:PlayerDetected()
    
end;
function export:SkipObjectiveConfirmed()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="PlayerDetected" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="SkipObjectiveConfirmed" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
