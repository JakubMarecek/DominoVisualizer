LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c2/swamp_c2_ctp_010_enemy.domino
-- User graph: SetSpawners_Wave3
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Spawner_B" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_C" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_A" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Enemy.SetSpawners_Wave3.debug.lua")] = {
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
                name = "Spawner_A",
                type = "entity",
            },
            [1] = {
                name = "Spawner_B",
                type = "entity",
            },
            [2] = {
                name = "Spawner_C",
                type = "entity",
            },
        },
        dataInCount = 3,
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
end;

function export:Init(cbox)
    self._name = "SetSpawners_Wave3";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave3";
    self.Out = DummyFunction;
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_SetEntity_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave3|1137977096", "1137977096", "SetSpawners_Wave3", "In", "box_SetEntity_v2_2.FromEntity", self, l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_1_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_4();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave3|1449710885", "1449710885", "SetSpawners_Wave3", "box_SetEntity_v2_1.Out", "box_SetEntity_v2_4.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_2_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_1();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave3|796099295", "796099295", "SetSpawners_Wave3", "box_SetEntity_v2_2.Out", "box_SetEntity_v2_1.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_4_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave3|1391252716", "1391252716", "SetSpawners_Wave3", "box_SetEntity_v2_4.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:OnEnter_box_SetEntity_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave3|162926423");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_1_Out,
    });
    params = {
        -- Entity,
        [0] = self.Spawner_B,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave3|1549644291");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_2_Out,
    });
    params = {
        -- Entity,
        [0] = self.Spawner_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@SetSpawners_Wave3|2133983884");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_4_Out,
    });
    params = {
        -- Entity,
        [0] = self.Spawner_C,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C2_CTP_010_Enemy.Wave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C2_CTP_010_Enemy.Wave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C2_CTP_010_Enemy.Wave_3_C = l0:GetDataOutValue(0);
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
		<DataIn Name="Spawner_A" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_B" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_C" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
