LUAC�#  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/c2/canyon_c2_ctp_010_enemy.domino
-- User graph: InfinityWaveCount
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
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Canyon_C2_CTP_010_Enemy = nil;
    Globals.Canyon_C2_CTP_010_Enemy = {
        i_CurrentSize = 0,
        Wave_01_Spawner_a = nil,
        Wave_01_Spawner_b = nil,
        Wave_02_Spawner_a = nil,
        Wave_02_Spawner_b = nil,
        Wave_03_Spawner_a = nil,
        Wave_03_Spawner_b = nil,
        Wave_04_Spawner_a = nil,
        Wave_04_Spawner_b = nil,
        Wave_05_Spawner_a = nil,
        Wave_05_Spawner_b = nil,
        Wave_06_Spawner_a = nil,
        Wave_06_Spawner_b = nil,
        Wave_07_Spawner_a = nil,
        Wave_07_Spawner_b = nil,
        Wave_08_Spawner_a = nil,
        Wave_08_Spawner_b = nil,
        Wave_09_Spawner_a = nil,
        Wave_09_Spawner_b = nil,
        Wave_10_Spawner_a = nil,
        Wave_10_Spawner_b = nil,
        RemainingNPCNUM_Wave_01 = 3,
        RemainingNPCNUM_Wave_02 = 3,
        RemainingNPCNUM_Wave_03 = 3,
        RemainingNPCNUM_Wave_04 = 3,
        RemainingNPCNUM_Wave_05 = 3,
        RemainingNPCNUM_Wave_06 = 3,
        RemainingNPCNUM_Wave_07 = 3,
        RemainingNPCNUM_Wave_08 = 3,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "End",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
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
            [0] = {
                name = "Result",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    self._name = "InfinityWaveCount";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@InfinityWaveCount";
    self.End = DummyFunction;
    self.Out = DummyFunction;
    self.InfinityWaveCount = 2;
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_1();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@InfinityWaveCount|303548844", "303548844", "InfinityWaveCount", "In", "box_IntegerArithmetics_v2_1.Sub", self, l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_1_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_2();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@InfinityWaveCount|2076788643", "2076788643", "InfinityWaveCount", "box_IntegerArithmetics_v2_1.Out", "box_Compare_Integers_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_2_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@InfinityWaveCount|1992419474", "1992419474", "InfinityWaveCount", "box_Compare_Integers_2.A_gt_B", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Compare_Integers_2_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@InfinityWaveCount|734131196", "734131196", "InfinityWaveCount", "box_Compare_Integers_2.A_le_B", "End", clone:GetLuaBox(), self);
    self:End();
end;

function export:OnEnter_box_IntegerArithmetics_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@InfinityWaveCount|413590437");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_1_Out,
    });
    params = {
        -- A,
        [0] = self.InfinityWaveCount,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@InfinityWaveCount|1490038913");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_2_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_2_A_le_B,
    });
    params = {
        -- A,
        [0] = self.InfinityWaveCount,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.InfinityWaveCount = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:End()
    
end;
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="End" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
