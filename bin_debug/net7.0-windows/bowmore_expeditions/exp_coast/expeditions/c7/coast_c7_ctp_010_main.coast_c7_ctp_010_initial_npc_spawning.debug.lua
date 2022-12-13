LUAC�;  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c7/coast_c7_ctp_010_main.domino
-- User graph: Coast_C7_CTP_010_Initial_NPC_Spawning
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Spawner_1" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_2" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_3" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_4" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_5" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_6" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_7" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_8" Type="Nomad|entity{}" />
    <DataIn Name="Spawner_9" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Coast_C7_CTP_010_Main = nil;
    Globals.Coast_C7_CTP_010_Main = {
        iC7Difficulty = 0,
        iDifficulty = 0,
        iPlayerSpawnPOIIndex = 0,
        iExtractionPOIID = 0,
        iPackagePositionID = 0,
        ePackageSpawner_OBSOLETEEEEEEEEE = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Spawning.debug.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Spawner_1",
                type = "entity",
            },
            [1] = {
                name = "Spawner_2",
                type = "entity",
            },
            [2] = {
                name = "Spawner_3",
                type = "entity",
            },
            [3] = {
                name = "Spawner_4",
                type = "entity",
            },
            [4] = {
                name = "Spawner_5",
                type = "entity",
            },
            [5] = {
                name = "Spawner_6",
                type = "entity",
            },
            [6] = {
                name = "Spawner_7",
                type = "entity",
            },
            [7] = {
                name = "Spawner_8",
                type = "entity",
            },
            [8] = {
                name = "Spawner_9",
                type = "entity",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SpawnAI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = true,
            },
            [3] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntitySpawner",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "mercsSpawned",
                type = "list",
            },
            [1] = {
                name = "othersSpawned",
                type = "list",
            },
            [2] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 3,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Coast_C7_CTP_010_Initial_NPC_Spawning";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning";
    self.Out = DummyFunction;
    self.PlayerDetected = DummyFunction;
    self.box_SpawnAI_3 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|73155277");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_3_Out,
    });
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|247031104");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_9_Out,
    });
    self.box_SpawnAI_4 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|446401771");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_4_Out,
    });
    self.box_SpawnAI_1 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|870497192");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_1_Out,
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|879073753");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_8_Out,
    });
    self.box_SpawnAI_6 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|1112981567");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_6_Out,
    });
    self.box_SpawnAI_2 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|1274355098");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_2_Out,
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|1631467529");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_7_Out,
    });
    self.box_SpawnAI_5 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|2118338593");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_5_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|504648008", "504648008", "Coast_C7_CTP_010_Initial_NPC_Spawning", "In", "box_SpawnAI_8.Spawn", self, l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_6();
    l0 = self.box_SpawnAI_3;
    l1 = self.box_SpawnAI_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|350511354", "350511354", "Coast_C7_CTP_010_Initial_NPC_Spawning", "box_SpawnAI_3.Out", "box_SpawnAI_6.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_2();
    l0 = self.box_SpawnAI_9;
    l1 = self.box_SpawnAI_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|1074700205", "1074700205", "Coast_C7_CTP_010_Initial_NPC_Spawning", "box_SpawnAI_9.Out", "box_SpawnAI_2.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_SpawnAI_4;
    l1 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|1941039785", "1941039785", "Coast_C7_CTP_010_Initial_NPC_Spawning", "box_SpawnAI_4.Out", "box_SpawnAI_7.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_SpawnAI_1;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|125316972", "125316972", "Coast_C7_CTP_010_Initial_NPC_Spawning", "box_SpawnAI_1.Out", "box_SpawnAI_9.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_5();
    l0 = self.box_SpawnAI_8;
    l1 = self.box_SpawnAI_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|209071095", "209071095", "Coast_C7_CTP_010_Initial_NPC_Spawning", "box_SpawnAI_8.Out", "box_SpawnAI_5.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_1();
    l0 = self.box_SpawnAI_6;
    l1 = self.box_SpawnAI_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|1598836557", "1598836557", "Coast_C7_CTP_010_Initial_NPC_Spawning", "box_SpawnAI_6.Out", "box_SpawnAI_1.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_4();
    l0 = self.box_SpawnAI_2;
    l1 = self.box_SpawnAI_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|1163589037", "1163589037", "Coast_C7_CTP_010_Initial_NPC_Spawning", "box_SpawnAI_2.Out", "box_SpawnAI_4.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_7_Out()
    local l0;
    l0 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|474096197", "474096197", "Coast_C7_CTP_010_Initial_NPC_Spawning", "box_SpawnAI_7.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_SpawnAI_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_3();
    l0 = self.box_SpawnAI_5;
    l1 = self.box_SpawnAI_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Spawning|1229134541", "1229134541", "Coast_C7_CTP_010_Initial_NPC_Spawning", "box_SpawnAI_5.Out", "box_SpawnAI_3.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:OnEnter_box_SpawnAI_3()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.Spawner_3,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.Spawner_6,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_4()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.Spawner_8,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_1()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.Spawner_5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.Spawner_1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_6()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.Spawner_4,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_2()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.Spawner_7,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.Spawner_9,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_5()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.Spawner_2,
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:PlayerDetected()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="PlayerDetected" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Spawner_1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_3" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_4" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_5" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_6" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_7" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_8" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Spawner_9" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
