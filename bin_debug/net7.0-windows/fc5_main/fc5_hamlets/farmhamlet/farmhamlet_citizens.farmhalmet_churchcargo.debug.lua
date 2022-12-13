LUACFK  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_hamlets/farmhamlet/farmhamlet_citizens.domino
-- User graph: FarmHalmet_ChurchCargo
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
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/GetStatistic.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHalmet_ChurchCargo.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/RegenerateNavmesh.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Completed",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "RegionEntity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/GetStatistic.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetValue",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "ValueGot",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "name",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "value",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "FarmHalmet_ChurchCargo";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo";
    self.Out = DummyFunction;
    self.DeliveredCargo = 0;
    self.box_RegenerateNavmesh_8 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1758796564");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_RegenerateNavmesh_8_Completed,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|2033215646");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetStatistic_1();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1954365776", "1954365776", "FarmHalmet_ChurchCargo", "In", "box_GetStatistic_1.GetValue", self, l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_2_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_7();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1505382314", "1505382314", "FarmHalmet_ChurchCargo", "box_Compare_Integers_2.A_ge_B", "box_MissionBlockLayer_7.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_2_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|112673127", "112673127", "FarmHalmet_ChurchCargo", "box_Compare_Integers_2.A_lt_B", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_6_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_4();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1347582120", "1347582120", "FarmHalmet_ChurchCargo", "box_MissionBlockLayer_6.Activated", "box_Compare_Integers_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_7_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|514174004", "514174004", "FarmHalmet_ChurchCargo", "box_MissionBlockLayer_7.Activated", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetStatistic_1_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_1_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_3();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|265598465", "265598465", "FarmHalmet_ChurchCargo", "box_GetStatistic_1.ValueGot", "box_Compare_Integers_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_3_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_6();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1397218651", "1397218651", "FarmHalmet_ChurchCargo", "box_Compare_Integers_3.A_ge_B", "box_MissionBlockLayer_6.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_3_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1905846115", "1905846115", "FarmHalmet_ChurchCargo", "box_Compare_Integers_3.A_lt_B", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Compare_Integers_4_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_5();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1563168031", "1563168031", "FarmHalmet_ChurchCargo", "box_Compare_Integers_4.A_ge_B", "box_MissionBlockLayer_5.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_4_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|885100338", "885100338", "FarmHalmet_ChurchCargo", "box_Compare_Integers_4.A_lt_B", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RegenerateNavmesh_8_Completed()
    local l0;
    l0 = self.box_RegenerateNavmesh_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|2131163192", "2131163192", "FarmHalmet_ChurchCargo", "box_RegenerateNavmesh_8.Completed", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RegenerateNavmesh_8();
    l0 = self.box_MultipleOR_9;
    l1 = self.box_RegenerateNavmesh_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1453826071", "1453826071", "FarmHalmet_ChurchCargo", "box_MultipleOR_9.Out", "box_RegenerateNavmesh_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_5_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_2();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1513531500", "1513531500", "FarmHalmet_ChurchCargo", "box_MissionBlockLayer_5.Activated", "box_Compare_Integers_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Compare_Integers_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|669685323");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_2_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_2_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.DeliveredCargo,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|681731635");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_6_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "18152973026453236",
        -- missionLayerId,
        [1] = "45174570790806271",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1030557066");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_7_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "18152973025349706",
        -- missionLayerId,
        [1] = "18152973549317438",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1313541573");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_1_ValueGot,
    });
    params = {
        -- name,
        [0] = "General_CargoTruckQuestCompleted",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1612668846");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_3_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_3_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.DeliveredCargo,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|1692492126");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_4_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_4_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.DeliveredCargo,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_8()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2096516792380823557",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHalmet_ChurchCargo|2067415264");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_5_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "18152973026453236",
        -- missionLayerId,
        [1] = "54181770045608845",
    };
    return params;
end;

function export:OnExit_box_GetStatistic_1_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self.DeliveredCargo = l0:GetDataOutValue(0);
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
