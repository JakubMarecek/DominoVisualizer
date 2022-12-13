LUAC.M  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni31/uni31_030_b50.domino
-- User graph: SwapArchetype_v2
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="b_CheckIfFormerEntityIsAlive" Type="Core|bool" />
    <DataIn Name="VFX_Emitter" Type="Nomad|entity{}" />
    <DataIn Name="FormerEntity_ID" Type="Nomad|entity{}" />
    <DataIn Name="LatterSpawner_ID" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/ListReader.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_030_B50.SwapArchetype_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Transform",
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
                name = "b_CheckIfFormerEntityIsAlive",
                type = "bool",
            },
            [1] = {
                name = "FormerEntity_ID",
                type = "entity",
            },
            [2] = {
                name = "LatterSpawner_ID",
                type = "entity",
            },
            [3] = {
                name = "VFX_Emitter",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "NewEntity_ID",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bind",
            },
            [1] = {
                name = "UnBind",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ListReader.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Read",
            },
            [1] = {
                name = "ResetRead",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndOfList",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
            [1] = {
                name = "Input",
                type = "list",
            },
            [2] = {
                name = "Loop",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "CursorPos",
                type = "int",
            },
            [1] = {
                name = "Data",
                type = "entity",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/OnceOnly_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
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
                dynamicType = 1,
                delayed = false,
            },
            [1] = {
                name = "ResetOut",
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
            },
            [2] = {
                name = "Start",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "SwapArchetype_v2";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2";
    self.Out = DummyFunction;
    self.box_OnceOnly_v3_6 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|472846");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_6_Out_0,
            },
            count = 2,
        },
    });
    self.box_ListReader_1 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|990569567");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_1_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_1_Out,
    });
    self.box_Bind_v4_14 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|1380711545");
    l0:SetConnections({
        -- UnBound,
        [1] = self.f_box_Bind_v4_14_UnBound,
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|1750681219");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_7_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_7_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_7_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_7_Success,
    });
    self.box_TeleportPawns_13 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|2042621820");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_13_Out,
    });
end;

function export:Transform()
    local params, l0;
    params = self:OnEnter_box_TeleportPawns_13();
    l0 = self.box_TeleportPawns_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|588979147", "588979147", "SwapArchetype_v2", "Transform", "box_TeleportPawns_13.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_6_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_9();
    l0 = self.box_OnceOnly_v3_6;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|30767704", "30767704", "SwapArchetype_v2", "box_OnceOnly_v3_6.Out", "box_SetEntity_v2_9.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_3_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_14();
    l0 = self.box_Bind_v4_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|343081111", "343081111", "SwapArchetype_v2", "box_ParticleSystem_v3_3.Started", "box_Bind_v4_14.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_9_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|236372931", "236372931", "SwapArchetype_v2", "box_SetEntity_v2_9.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_ListReader_1_Out()
    local l0, l1;
    l0 = self.box_ListReader_1;
    l1 = self.box_OnceOnly_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|590432814", "590432814", "SwapArchetype_v2", "box_ListReader_1.Out", "box_OnceOnly_v3_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Bind_v4_14_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_Bind_v4_14;
    l1 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|326209437", "326209437", "SwapArchetype_v2", "box_Bind_v4_14.UnBound", "box_SpawnAI_7.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_7_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_7_Spawned();
    params = self:OnEnter_box_ListReader_1();
    l0 = self.box_SpawnAI_7;
    l1 = self.box_ListReader_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|456344939", "456344939", "SwapArchetype_v2", "box_SpawnAI_7.Spawned", "box_ListReader_1.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_TeleportPawns_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_3();
    l0 = self.box_TeleportPawns_13;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|1637997755", "1637997755", "SwapArchetype_v2", "box_TeleportPawns_13.Out", "box_ParticleSystem_v3_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_ParticleSystem_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|375793692");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_3_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.VFX_Emitter,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B50.domino|@SwapArchetype_v2|791646004");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_9_Out,
    });
    l0 = self.box_ListReader_1;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_ListReader_1()
    local params, l0;
    l0 = self.box_SpawnAI_7;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_14()
    local params;
    params = {
        -- EntityA,
        [1] = self.FormerEntity_ID,
        -- EntityB,
        [2] = self.LatterSpawner_ID,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = true,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.LatterSpawner_ID,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_13()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = self.LatterSpawner_ID,
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.VFX_Emitter,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.NewEntity_ID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_7_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_7;
    l1 = self.box_ListReader_1;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Transform" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="b_CheckIfFormerEntityIsAlive" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="FormerEntity_ID" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="LatterSpawner_ID" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="VFX_Emitter" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut>
		<DataOut Name="NewEntity_ID" AnchorDynType="0" DataTypeID="entity" />
	</DatasOut>
</DominoMetadata>
