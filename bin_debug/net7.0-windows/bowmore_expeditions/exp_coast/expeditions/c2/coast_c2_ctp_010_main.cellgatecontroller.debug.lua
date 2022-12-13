LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c2/coast_c2_ctp_010_main.domino
-- User graph: CellGateController
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
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateController.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PackageLocationA",
            },
            [1] = {
                name = "PackageLocationB",
            },
            [2] = {
                name = "PackageLocationC",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Unlock",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "CellGatePrefab",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "CellGateController";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController";
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|50730563");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|182591181");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_CellGateUnlockUnit_1 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|189122121");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_1_Unlocked,
    });
    self.box_CellGateUnlockUnit_9 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|203346715");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_9_Unlocked,
    });
    self.box_CellGateUnlockUnit_15 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|494448706");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_15_Unlocked,
    });
    self.box_CellGateUnlockUnit_13 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|496386468");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_13_Unlocked,
    });
    self.box_CellGateUnlockUnit_5 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|504209281");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_5_Unlocked,
    });
    self.box_CellGateUnlockUnit_19 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|720139507");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_19_Unlocked,
    });
    self.box_CellGateUnlockUnit_17 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|748343140");
    l0:SetConnections({
    });
    self.box_CellGateUnlockUnit_14 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|830860705");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_14_Unlocked,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|861259823");
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_CellGateUnlockUnit_6 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|878920902");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_6_Unlocked,
    });
    self.box_CellGateUnlockUnit_11 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1124990794");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_11_Unlocked,
    });
    self.box_CellGateUnlockUnit_3 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1138832691");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_3_Unlocked,
    });
    self.box_CellGateUnlockUnit_10 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1504490230");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_10_Unlocked,
    });
    self.box_CellGateUnlockUnit_8 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1629847966");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_8_Unlocked,
    });
    self.box_CellGateUnlockUnit_7 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1635435077");
    l0:SetConnections({
    });
    self.box_CellGateUnlockUnit_18 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1769690901");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_18_Unlocked,
    });
    self.box_CellGateUnlockUnit_12 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1773915427");
    l0:SetConnections({
    });
    self.box_CellGateUnlockUnit_4 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateUnlockUnit.debug.lua");
    l0 = self.box_CellGateUnlockUnit_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateUnlockUnit_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|2045097024");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_CellGateUnlockUnit_4_Unlocked,
    });
end;

function export:PackageLocationA()
    local params, l0;
    params = self:OnEnter_box_MissionBlockLayer_16();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1054918979", "1054918979", "CellGateController", "PackageLocationA", "box_MissionBlockLayer_16.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:PackageLocationB()
    local params, l0;
    params = self:OnEnter_box_MissionBlockLayer_34();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1910438953", "1910438953", "CellGateController", "PackageLocationB", "box_MissionBlockLayer_34.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:PackageLocationC()
    local params, l0;
    params = self:OnEnter_box_MissionBlockLayer_37();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|2032329718", "2032329718", "CellGateController", "PackageLocationC", "box_MissionBlockLayer_37.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_30();
    l0 = self.box_MultipleOR_20;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1347704668", "1347704668", "CellGateController", "box_MultipleOR_20.Out", "box_MissionBlockLayer_30.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1978702937", "1978702937", "CellGateController", "box_OutputOrder_v2_21.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1543948978", "1543948978", "CellGateController", "box_OutputOrder_v2_21.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_28();
    l0 = self.box_MultipleOR_23;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|663039538", "663039538", "CellGateController", "box_MultipleOR_23.Out", "box_MissionBlockLayer_28.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CellGateUnlockUnit_1_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_3();
    l0 = self.box_CellGateUnlockUnit_1;
    l1 = self.box_CellGateUnlockUnit_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|928872061", "928872061", "CellGateController", "box_CellGateUnlockUnit_1.Unlocked", "box_CellGateUnlockUnit_3.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_CellGateUnlockUnit_9_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_10();
    l0 = self.box_CellGateUnlockUnit_9;
    l1 = self.box_CellGateUnlockUnit_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|753497554", "753497554", "CellGateController", "box_CellGateUnlockUnit_9.Unlocked", "box_CellGateUnlockUnit_10.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_28_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_CellGateUnlockUnit_1();
    l0 = self.box_CellGateUnlockUnit_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|524782344", "524782344", "CellGateController", "box_MissionBlockLayer_28.Activated", "box_CellGateUnlockUnit_1.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_39_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1074098841", "1074098841", "CellGateController", "box_MissionBlockLayer_39.Activated", "box_OutputOrder_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CellGateUnlockUnit_15_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_14();
    l0 = self.box_CellGateUnlockUnit_15;
    l1 = self.box_CellGateUnlockUnit_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|338797581", "338797581", "CellGateController", "box_CellGateUnlockUnit_15.Unlocked", "box_CellGateUnlockUnit_14.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_CellGateUnlockUnit_13_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_11();
    l0 = self.box_CellGateUnlockUnit_13;
    l1 = self.box_CellGateUnlockUnit_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|943508691", "943508691", "CellGateController", "box_CellGateUnlockUnit_13.Unlocked", "box_CellGateUnlockUnit_11.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_CellGateUnlockUnit_5_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_6();
    l0 = self.box_CellGateUnlockUnit_5;
    l1 = self.box_CellGateUnlockUnit_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1514531392", "1514531392", "CellGateController", "box_CellGateUnlockUnit_5.Unlocked", "box_CellGateUnlockUnit_6.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_16_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_33();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|2134862811", "2134862811", "CellGateController", "box_MissionBlockLayer_16.Disabled", "box_MissionBlockLayer_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_31_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_40();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1315763865", "1315763865", "CellGateController", "box_MissionBlockLayer_31.Disabled", "box_MissionBlockLayer_40.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_30_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_CellGateUnlockUnit_15();
    l0 = self.box_CellGateUnlockUnit_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1611563724", "1611563724", "CellGateController", "box_MissionBlockLayer_30.Activated", "box_CellGateUnlockUnit_15.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
end;

function export:f_box_CellGateUnlockUnit_19_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_17();
    l0 = self.box_CellGateUnlockUnit_19;
    l1 = self.box_CellGateUnlockUnit_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|508222395", "508222395", "CellGateController", "box_CellGateUnlockUnit_19.Unlocked", "box_CellGateUnlockUnit_17.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_40_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|777288333", "777288333", "CellGateController", "box_MissionBlockLayer_40.Activated", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CellGateUnlockUnit_14_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_18();
    l0 = self.box_CellGateUnlockUnit_14;
    l1 = self.box_CellGateUnlockUnit_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|117093864", "117093864", "CellGateController", "box_CellGateUnlockUnit_14.Unlocked", "box_CellGateUnlockUnit_18.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_29();
    l0 = self.box_MultipleOR_24;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1253673296", "1253673296", "CellGateController", "box_MultipleOR_24.Out", "box_MissionBlockLayer_29.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_41_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|779691490", "779691490", "CellGateController", "box_MissionBlockLayer_41.Activated", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CellGateUnlockUnit_6_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_7();
    l0 = self.box_CellGateUnlockUnit_6;
    l1 = self.box_CellGateUnlockUnit_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1926764609", "1926764609", "CellGateController", "box_CellGateUnlockUnit_6.Unlocked", "box_CellGateUnlockUnit_7.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_36_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_38();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|275621166", "275621166", "CellGateController", "box_MissionBlockLayer_36.Disabled", "box_MissionBlockLayer_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CellGateUnlockUnit_11_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_12();
    l0 = self.box_CellGateUnlockUnit_11;
    l1 = self.box_CellGateUnlockUnit_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1774897945", "1774897945", "CellGateController", "box_CellGateUnlockUnit_11.Unlocked", "box_CellGateUnlockUnit_12.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_CellGateUnlockUnit_3_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_4();
    l0 = self.box_CellGateUnlockUnit_3;
    l1 = self.box_CellGateUnlockUnit_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|383305596", "383305596", "CellGateController", "box_CellGateUnlockUnit_3.Unlocked", "box_CellGateUnlockUnit_4.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_33_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_32();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1057319696", "1057319696", "CellGateController", "box_MissionBlockLayer_33.Disabled", "box_MissionBlockLayer_32.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_35_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_31();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|624130461", "624130461", "CellGateController", "box_MissionBlockLayer_35.Disabled", "box_MissionBlockLayer_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1778160960", "1778160960", "CellGateController", "box_OutputOrder_v2_22.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1066544375", "1066544375", "CellGateController", "box_OutputOrder_v2_22.Out", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CellGateUnlockUnit_10_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_8();
    l0 = self.box_CellGateUnlockUnit_10;
    l1 = self.box_CellGateUnlockUnit_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1584886808", "1584886808", "CellGateController", "box_CellGateUnlockUnit_10.Unlocked", "box_CellGateUnlockUnit_8.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_32_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_39();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|116131046", "116131046", "CellGateController", "box_MissionBlockLayer_32.Disabled", "box_MissionBlockLayer_39.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CellGateUnlockUnit_8_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_13();
    l0 = self.box_CellGateUnlockUnit_8;
    l1 = self.box_CellGateUnlockUnit_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|500676698", "500676698", "CellGateController", "box_CellGateUnlockUnit_8.Unlocked", "box_CellGateUnlockUnit_13.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_37_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_36();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|930072938", "930072938", "CellGateController", "box_MissionBlockLayer_37.Disabled", "box_MissionBlockLayer_36.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_34_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_35();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|605318111", "605318111", "CellGateController", "box_MissionBlockLayer_34.Disabled", "box_MissionBlockLayer_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CellGateUnlockUnit_18_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_19();
    l0 = self.box_CellGateUnlockUnit_18;
    l1 = self.box_CellGateUnlockUnit_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1248151547", "1248151547", "CellGateController", "box_CellGateUnlockUnit_18.Unlocked", "box_CellGateUnlockUnit_19.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_CellGateUnlockUnit_4_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_CellGateUnlockUnit_5();
    l0 = self.box_CellGateUnlockUnit_4;
    l1 = self.box_CellGateUnlockUnit_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|144498493", "144498493", "CellGateController", "box_CellGateUnlockUnit_4.Unlocked", "box_CellGateUnlockUnit_5.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1852292509", "1852292509", "CellGateController", "box_OutputOrder_v2_2.Out", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|511673471", "511673471", "CellGateController", "box_OutputOrder_v2_2.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_38_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_41();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1482267159", "1482267159", "CellGateController", "box_MissionBlockLayer_38.Disabled", "box_MissionBlockLayer_41.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_29_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_CellGateUnlockUnit_9();
    l0 = self.box_CellGateUnlockUnit_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1168899844", "1168899844", "CellGateController", "box_MissionBlockLayer_29.Activated", "box_CellGateUnlockUnit_9.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|114470809");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_1()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2109005271687759679",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_9()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2109006794696174118",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|237376669");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_28_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "36167516555102595",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|455726192");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_39_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "27160321088267585",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_15()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2108301634040766087",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_13()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2109006852627901106",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_5()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2109006028103229456",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|534373397");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_16_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "36167516555102595",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|576271790");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_31_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "54181915064625251",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|673572493");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_30_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "54181915064625251",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_19()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2108301619012574841",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_17()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2108301628565102209",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|803500700");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_40_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "36167520343022592",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_14()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2108301605930540652",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|863294582");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_41_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "45174719597767577",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_6()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2109006053430534246",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|971691453");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_36_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "45174715809879731",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_11()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2109006865615563451",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_3()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2109006004365565916",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1200676594");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_33_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "45174715809879731",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1414528518");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_35_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "45174715809879731",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1433136472");
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

function export:OnEnter_box_CellGateUnlockUnit_10()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2109006820971391574",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1528116149");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_32_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "54181915064625251",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_8()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2109006834063911556",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_7()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2109006060883812460",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1757523265");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_37_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "36167516555102595",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|1766423593");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_34_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "36167516555102595",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_18()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2108301608587632242",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_12()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2109006879242857193",
    };
    return params;
end;

function export:OnEnter_box_CellGateUnlockUnit_4()
    local params;
    params = {
        -- CellGatePrefab,
        [0] = "2109006019085475810",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|2079202365");
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

function export:OnEnter_box_MissionBlockLayer_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|2124060642");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_38_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "54181915064625251",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@CellGateController|2146507977");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_29_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317300361602",
        -- missionLayerId,
        [1] = "45174715809879731",
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="PackageLocationA" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="PackageLocationB" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="PackageLocationC" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
