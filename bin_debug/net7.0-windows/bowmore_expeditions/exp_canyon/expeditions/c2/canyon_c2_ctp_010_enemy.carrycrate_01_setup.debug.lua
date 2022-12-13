LUACM�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/c2/canyon_c2_ctp_010_enemy.domino
-- User graph: CarryCrate_01_Setup
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.CarryCrate_01_Setup.debug.lua")] = {
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
                name = "InCAIndex",
                type = "int",
            },
            [2] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "OutCAIndex",
                type = "int",
            },
            [1] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "requiresPawnsActive",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
            },
        },
        controlInCount = 4,
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "CarryCrate_01_Setup";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup";
    self.Out = DummyFunction;
    self.box_ContextualActionListener_16 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|179668863");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_16_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_16_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_16_Interrupt,
    });
    self.box_ProximityTrigger_v3_13 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|245806561");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_13_Enter,
    });
    self.box_ContextualActionListener_3 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|289744868");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_3_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_3_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_3_Interrupt,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|310698343");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_ContextualActionListener_2 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|439740813");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_2_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_2_Interrupt,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|831392604");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1181140756");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_MultipleAND_v2_7 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1259010596");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleAND_v2_7_Out,
    });
    self.box_ContextualActionListener_11 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1307940172");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_11_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_11_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_11_Interrupt,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1674809759");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_TriggerState_v2_1();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1333236078", "1333236078", "CarryCrate_01_Setup", "In", "box_TriggerState_v2_1.SetEnabled", self, l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_6_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_2();
    l0 = self.box_ContextualActionListener_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|395359886", "395359886", "CarryCrate_01_Setup", "box_UseContextualActionModifier_v3_6.Enabled", "box_ContextualActionListener_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_12_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_11();
    l0 = self.box_ContextualActionListener_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|265267673", "265267673", "CarryCrate_01_Setup", "box_UseContextualActionModifier_v3_12.Enabled", "box_ContextualActionListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ContextualActionListener_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_6();
    l0 = self.box_ContextualActionListener_16;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|156521875", "156521875", "CarryCrate_01_Setup", "box_ContextualActionListener_16.Enabled", "box_UseContextualActionModifier_v3_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_16_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_16;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|459584569", "459584569", "CarryCrate_01_Setup", "box_ContextualActionListener_16.End", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_16_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_16;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1021894438", "1021894438", "CarryCrate_01_Setup", "box_ContextualActionListener_16.Interrupt", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_13_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_5();
    l0 = self.box_ProximityTrigger_v3_13;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|568135575", "568135575", "CarryCrate_01_Setup", "box_ProximityTrigger_v3_13.Enter", "box_UseContextualActionModifier_v3_5.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_3_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_10();
    l0 = self.box_ContextualActionListener_3;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|934276323", "934276323", "CarryCrate_01_Setup", "box_ContextualActionListener_3.Enabled", "box_UseContextualActionModifier_v3_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_3_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_3;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1171053427", "1171053427", "CarryCrate_01_Setup", "box_ContextualActionListener_3.End", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_3_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_3;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1504817157", "1504817157", "CarryCrate_01_Setup", "box_ContextualActionListener_3.Interrupt", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_MultipleOR_8;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|274762407", "274762407", "CarryCrate_01_Setup", "box_MultipleOR_8.Out", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_ContextualActionListener_2_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_2;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1072888666", "1072888666", "CarryCrate_01_Setup", "box_ContextualActionListener_2.End", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_2_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_2;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|268751012", "268751012", "CarryCrate_01_Setup", "box_ContextualActionListener_2.Interrupt", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|512345254", "512345254", "CarryCrate_01_Setup", "box_MultipleOR_4.Out", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 3);
end;

function export:f_box_UseContextualActionModifier_v3_5_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1943560771", "1943560771", "CarryCrate_01_Setup", "box_UseContextualActionModifier_v3_5.Disabled", "box_UseContextualActionModifier_v3_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_10_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_16();
    l0 = self.box_ContextualActionListener_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1215336460", "1215336460", "CarryCrate_01_Setup", "box_UseContextualActionModifier_v3_10.Enabled", "box_ContextualActionListener_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_MultipleOR_15;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|37203706", "37203706", "CarryCrate_01_Setup", "box_MultipleOR_15.Out", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_7_Out()
    local l0;
    l0 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|774981376", "774981376", "CarryCrate_01_Setup", "box_MultipleAND_v2_7.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_ContextualActionListener_11_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = self.box_ContextualActionListener_11;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|596676426", "596676426", "CarryCrate_01_Setup", "box_ContextualActionListener_11.Enabled", "box_UseContextualActionModifier_v3_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_11_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_11;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1763977215", "1763977215", "CarryCrate_01_Setup", "box_ContextualActionListener_11.End", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_11_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_11;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|34280897", "34280897", "CarryCrate_01_Setup", "box_ContextualActionListener_11.Interrupt", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_14_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_3();
    l0 = self.box_ContextualActionListener_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1472740989", "1472740989", "CarryCrate_01_Setup", "box_UseContextualActionModifier_v3_14.Enabled", "box_ContextualActionListener_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_MultipleOR_9;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1232861684", "1232861684", "CarryCrate_01_Setup", "box_MultipleOR_9.Out", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_TriggerState_v2_1_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_13();
    l0 = self.box_ProximityTrigger_v3_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|591722784", "591722784", "CarryCrate_01_Setup", "box_TriggerState_v2_1.Enabled", "box_ProximityTrigger_v3_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_UseContextualActionModifier_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|110383017");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_6_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109601711541731131",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|170838878");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_12_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109601414782139827",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_16()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109601424202546623",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109587775989756649",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_3()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109601416849931705",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_2()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109601711541731131",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|869852599");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_5_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109601336495455604",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|983838820");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_10_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109601424202546623",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_7()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_11()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109601414782139827",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|1661190238");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_14_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109601416849931705",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@CarryCrate_01_Setup|2124185823");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_1_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109587775989756649",
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
	<DatasIn />
	<DatasOut />
</DominoMetadata>
