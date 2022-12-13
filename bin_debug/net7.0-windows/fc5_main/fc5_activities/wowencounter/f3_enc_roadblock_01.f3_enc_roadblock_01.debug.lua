LUACYt  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/wowencounter/f3_enc_roadblock_01.domino
-- User graph: F3_ENC_ROADBLOCK_01
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Encounter.RoadBlock.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Encounter_Toolbox.Objectif_Complete.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/WOWEncounter/F3_ENC_ROADBLOCK_01.F3_ENC_ROADBLOCK_01.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Encounter.RoadBlock.debug.lua")] = {
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
                delayed = false,
            },
            [1] = {
                name = "Failed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "StrategicPoint",
                type = "entity",
            },
            [1] = {
                name = "TargetVehicle",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Encounter_Toolbox.Objectif_Complete.debug.lua")] = {
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
                name = "Reward",
                type = "genericdb",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityAcknowledgeGate.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Acknowledged",
                delayed = true,
            },
            [1] = {
                name = "Reloaded",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityInitialized.lua")] = {
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
                delayed = true,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
            [2] = {
                name = "ShowHud",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
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
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
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
    self._name = "F3_ENC_ROADBLOCK_01";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01";
    self.Reward = "9015289970904342";
    self.LookedAt = false;
    self.box_RoadBlock_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Encounter.RoadBlock.debug.lua");
    l0 = self.box_RoadBlock_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RoadBlock_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|937198270");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_RoadBlock_4_Completed,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1084372393");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_RegenerateNavmesh_18 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1264109545");
    l0:SetConnections({
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1377634835");
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
    self.box_LookAtTrigger_v2_9 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1383025026");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_9_EnterFOV,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1435063278");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_Objectif_Complete_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Encounter_Toolbox.Objectif_Complete.debug.lua");
    l0 = self.box_Objectif_Complete_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Objectif_Complete_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1863807893");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_17 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|2020468616");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_17_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1699630740", "1699630740", "F3_ENC_ROADBLOCK_01", "In", "box_OutputOrder_v2_12.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Compare_Boolean_10();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|2024177158", "2024177158", "F3_ENC_ROADBLOCK_01", "OnLeaveZone", "box_Compare_Boolean_10.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_17();
    l0 = self.box_RemoveEntity_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1827015457", "1827015457", "F3_ENC_ROADBLOCK_01", "box_OutputOrder_v2_15.Out", "box_RemoveEntity_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_9();
    l0 = self.box_LookAtTrigger_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1458363480", "1458363480", "F3_ENC_ROADBLOCK_01", "box_OutputOrder_v2_15.Out", "box_LookAtTrigger_v2_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1580513392", "1580513392", "F3_ENC_ROADBLOCK_01", "box_OutputOrder_v2_12.Out", "box_ActivityAcknowledgeGate_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_9();
    l0 = self.box_LookAtTrigger_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|221152034", "221152034", "F3_ENC_ROADBLOCK_01", "box_OutputOrder_v2_12.Out", "box_LookAtTrigger_v2_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RegenerateNavmesh_18();
    l0 = self.box_RegenerateNavmesh_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1438899951", "1438899951", "F3_ENC_ROADBLOCK_01", "box_OutputOrder_v2_12.Out", "box_RegenerateNavmesh_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_RoadBlock_4_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Objectif_Complete_7();
    l0 = self.box_RoadBlock_4;
    l1 = self.box_Objectif_Complete_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1764483354", "1764483354", "F3_ENC_ROADBLOCK_01", "box_RoadBlock_4.Completed", "box_Objectif_Complete_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|675023562", "675023562", "F3_ENC_ROADBLOCK_01", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1983429887", "1983429887", "F3_ENC_ROADBLOCK_01", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_11_Out()
    self:OnExit_box_SetBoolean_v2_11_Out();
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1490764403", "1490764403", "F3_ENC_ROADBLOCK_01", "box_MultipleOR_6.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_LookAtTrigger_v2_9_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_11();
    l0 = self.box_LookAtTrigger_v2_9;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1332889119", "1332889119", "F3_ENC_ROADBLOCK_01", "box_LookAtTrigger_v2_9.EnterFOV", "box_SetBoolean_v2_11.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RoadBlock_4();
    l0 = self.box_ActivityInitialized_2;
    l1 = self.box_RoadBlock_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|560369648", "560369648", "F3_ENC_ROADBLOCK_01", "box_ActivityInitialized_2.Out", "box_RoadBlock_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_10_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_16();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|678481522", "678481522", "F3_ENC_ROADBLOCK_01", "box_Compare_Boolean_10.A_is_False", "box_ActivityRetry_16.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_10_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|675380214", "675380214", "F3_ENC_ROADBLOCK_01", "box_Compare_Boolean_10.A_is_True", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_RemoveEntity_v2_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1543763938", "1543763938", "F3_ENC_ROADBLOCK_01", "box_RemoveEntity_v2_17.Out", "box_ActivityEnd_5.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_ActivityRetry_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|436761865");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|587982577");
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

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|815388936");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 3,
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|845632431");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RoadBlock_4()
    local params;
    params = {
        -- StrategicPoint,
        [0] = "2104190114753185432",
        -- TargetVehicle,
        [1] = "2104177478378489162",
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_18()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2104549258620340731",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1363119641");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2104189620829848934",
    };
    return params;
end;

function export:OnEnter_box_Objectif_Complete_7()
    local params;
    params = {
        -- Reward,
        [0] = self.Reward,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_ROADBLOCK_01.domino|@F3_ENC_ROADBLOCK_01|1877266921");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_10_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_10_A_is_True,
    });
    params = {
        -- A,
        [0] = self.LookedAt,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_17()
    local params;
    params = {
        -- Group,
        [0] = "2104424383742248753",
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.LookedAt = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
