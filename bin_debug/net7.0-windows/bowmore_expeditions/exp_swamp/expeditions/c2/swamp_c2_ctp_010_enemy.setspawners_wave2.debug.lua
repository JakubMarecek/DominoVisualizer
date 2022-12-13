LUAC�`  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c2/swamp_c2_ctp_010_enemy.domino
-- User graph: SetSpawners_Wave2
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Spawner_C" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_B" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_A" Type="Nomad|entity{}" />
    <DataIn Name="Spanwer_D" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_E" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetValueNil.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Enemy.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Swamp_C2_CTP_010_Enemy = nil;
    Globals.Swamp_C2_CTP_010_Enemy = {
        Wave_1_A = nil,
        Wave_1_B = nil,
        Wave_1_C = nil,
        Wave_2_A = nil,
        Wave_2_B = nil,
        Wave_2_C = nil,
        Wave_2_D = nil,
        Wave_2_E = nil,
        Wave_3_A = nil,
        Wave_3_B = nil,
        Wave_3_C = nil,
        Wave_4_A = nil,
        Wave_4_B = nil,
        Wave_4_C = nil,
        Wave_4_D = nil,
        Wave_5_A = nil,
        Wave_5_B = nil,
        Wave_5_C = nil,
        Wave_5_D = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Enemy.SetSpawners_Wave2.debug.lua")] = {
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
                name = "Spanwer_D",
                type = "entity",
            },
            [1] = {
                name = "Spawner_A",
                type = "entity",
            },
            [2] = {
                name = "Spawner_B",
                type = "entity",
            },
            [3] = {
                name = "Spawner_C",
                type = "entity",
            },
            [4] = {
                name = "Spawner_E",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SetValueNil.lua")] = {
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
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "bool",
                type = "bool",
            },
            [2] = {
                name = "ent",
                type = "entity",
            },
            [3] = {
                name = "float",
                type = "float",
            },
            [4] = {
                name = "group",
                type = "group",
            },
            [5] = {
                name = "int",
                type = "int",
            },
            [6] = {
                name = "oasis",
                type = "oasis",
            },
            [7] = {
                name = "sound",
                type = "Sound",
            },
            [8] = {
                name = "str",
                type = "string",
            },
        },
        dataOutCount = 9,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "SetSpawners_Wave2";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2";
    self.Out = DummyFunction;
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|811982230");
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
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1431188819");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_SetEntity_v2_3();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|521393562", "521393562", "SetSpawners_Wave2", "In", "box_SetEntity_v2_3.FromEntity", self, l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetValueNil_8_Out()
    local l0;
    self:OnExit_box_SetValueNil_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1166867546", "1166867546", "SetSpawners_Wave2", "box_SetValueNil_8.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_7_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1376864857", "1376864857", "SetSpawners_Wave2", "box_IsValueNil_v3_7.No", "box_SetEntity_v2_2.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_7_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetValueNil_8();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1579265330", "1579265330", "SetSpawners_Wave2", "box_IsValueNil_v3_7.Yes", "box_SetValueNil_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetValueNil_11_Out()
    local l0;
    self:OnExit_box_SetValueNil_11_Out();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1016769537", "1016769537", "SetSpawners_Wave2", "box_SetValueNil_11.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_10_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1707977584", "1707977584", "SetSpawners_Wave2", "box_SetEntity_v2_10.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_3_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_6();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1042413319", "1042413319", "SetSpawners_Wave2", "box_SetEntity_v2_3.Out", "box_SetEntity_v2_6.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1345730659", "1345730659", "SetSpawners_Wave2", "box_MultipleOR_9.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_SetEntity_v2_2_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1626613998", "1626613998", "SetSpawners_Wave2", "box_SetEntity_v2_2.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_12();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1867789281", "1867789281", "SetSpawners_Wave2", "box_MultipleOR_1.Out", "box_IsValueNil_v3_12.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_6_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_13();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|632751372", "632751372", "SetSpawners_Wave2", "box_SetEntity_v2_6.Out", "box_SetEntity_v2_13.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_12_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_10();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|593468161", "593468161", "SetSpawners_Wave2", "box_IsValueNil_v3_12.No", "box_SetEntity_v2_10.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_12_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetValueNil_11();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1613112078", "1613112078", "SetSpawners_Wave2", "box_IsValueNil_v3_12.Yes", "box_SetValueNil_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_13_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_7();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|187970986", "187970986", "SetSpawners_Wave2", "box_SetEntity_v2_13.Out", "box_IsValueNil_v3_7.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_SetValueNil_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetValueNil_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|173000385");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetValueNil_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|502787570");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_7_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_7_Yes,
    });
    params = {
        -- ent,
        [4] = self.Spanwer_D,
    };
    return params;
end;

function export:OnEnter_box_SetValueNil_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetValueNil_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|541964048");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetValueNil_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|562111269");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_10_Out,
    });
    params = {
        -- Entity,
        [0] = self.Spawner_E,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|572115292");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_3_Out,
    });
    params = {
        -- Entity,
        [0] = self.Spawner_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1139557727");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_2_Out,
    });
    params = {
        -- Entity,
        [0] = self.Spanwer_D,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1523722455");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_6_Out,
    });
    params = {
        -- Entity,
        [0] = self.Spawner_B,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1588019263");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_12_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_12_Yes,
    });
    params = {
        -- ent,
        [4] = self.Spawner_E,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave2|1760699777");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_13_Out,
    });
    params = {
        -- Entity,
        [0] = self.Spawner_C,
    };
    return params;
end;

function export:OnExit_box_SetValueNil_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    Globals.Swamp_C2_CTP_010_Enemy.Wave_2_D = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetValueNil_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    Globals.Swamp_C2_CTP_010_Enemy.Wave_2_E = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetEntity_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C2_CTP_010_Enemy.Wave_2_E = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C2_CTP_010_Enemy.Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C2_CTP_010_Enemy.Wave_2_D = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C2_CTP_010_Enemy.Wave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C2_CTP_010_Enemy.Wave_2_C = l0:GetDataOutValue(0);
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
		<DataIn Name="Spanwer_D" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_A" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_B" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_C" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_E" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
