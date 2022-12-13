LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni31/uni31_030_b40.domino
-- User graph: SwapArchetype_v2
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="LatterSpawner_ID" Type="Nomad|entity{}" />
    <DataIn Name="FormerEntity_ID" Type="Nomad|entity{}" />
    <DataIn Name="b_CheckIfFormerEntityIsAlive" Type="Core|bool" />
    <DataIn Name="VFX_Emitter" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/ListReader.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI31/UNI31_030_B40.SwapArchetype_v2.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Delay_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
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
                name = "LoopingEnded",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Resumed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Stopped",
                delayed = false,
            },
            [5] = {
                name = "TimeElapsed",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "loop",
                type = "bool",
            },
            [1] = {
                name = "nbLoop",
                type = "int",
            },
            [2] = {
                name = "seconds",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "currentLoop",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetHealthState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Critical",
                delayed = false,
            },
            [1] = {
                name = "Dead",
                delayed = false,
            },
            [2] = {
                name = "Down",
                delayed = false,
            },
            [3] = {
                name = "Healthy",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2";
    self.Out = DummyFunction;
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|209578317");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_ListReader_9 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|276369418");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_9_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_9_Out,
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|937645305");
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
    self.box_RemoveEntity_v2_10 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1040274631");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_10_Out,
    });
    self.box_TeleportPawns_12 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1140872797");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_12_Out,
    });
    self.box_TeleportPawns_18 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1380785903");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_18_Out,
    });
    self.box_Bind_v4_4 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1529754713");
    l0:SetConnections({
        -- UnBound,
        [1] = self.f_box_Bind_v4_4_UnBound,
    });
    self.box_Bind_v4_1 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1581153773");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_1_Bound,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1600006232");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_RemoveEntity_v2_19 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1679694656");
    l0:SetConnections({
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1724288124");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_OnceOnly_v3_2 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|2127468981");
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
                [0] = self.f_box_OnceOnly_v3_2_Out_0,
            },
            count = 2,
        },
    });
end;

function export:Transform()
    local params, l0;
    params = self:OnEnter_box_Bind_v4_1();
    l0 = self.box_Bind_v4_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|961339087", "961339087", "SwapArchetype_v2", "Transform", "box_Bind_v4_1.Bind", self, l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_3_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|643508468", "643508468", "SwapArchetype_v2", "box_SetEntity_v2_3.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_16();
    l0 = self.box_Delay_v5_6;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1205977236", "1205977236", "SwapArchetype_v2", "box_Delay_v5_6.TimeElapsed", "box_IsEntityLoaded_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListReader_9_Out()
    local l0, l1;
    l0 = self.box_ListReader_9;
    l1 = self.box_OnceOnly_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1437499770", "1437499770", "SwapArchetype_v2", "box_ListReader_9.Out", "box_OnceOnly_v3_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1310319260", "1310319260", "SwapArchetype_v2", "box_OutputOrder_v2_15.Out", "box_SpawnAI_7.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1285361053", "1285361053", "SwapArchetype_v2", "box_OutputOrder_v2_15.Out", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetHealthState_13_Critical()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1166884743", "1166884743", "SwapArchetype_v2", "box_GetHealthState_13.Critical", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_13_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|502512904", "502512904", "SwapArchetype_v2", "box_GetHealthState_13.Healthy", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_5_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1504983762", "1504983762", "SwapArchetype_v2", "box_Compare_Boolean_5.A_is_False", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_5_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_13();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|462063864", "462063864", "SwapArchetype_v2", "box_Compare_Boolean_5.A_is_True", "box_GetHealthState_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_16_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_18();
    l0 = self.box_TeleportPawns_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|913686391", "913686391", "SwapArchetype_v2", "box_IsEntityLoaded_v3_16.True", "box_TeleportPawns_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_7_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_7_Spawned();
    params = self:OnEnter_box_ListReader_9();
    l0 = self.box_SpawnAI_7;
    l1 = self.box_ListReader_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1859597111", "1859597111", "SwapArchetype_v2", "box_SpawnAI_7.Spawned", "box_ListReader_9.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_RemoveEntity_v2_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1975000250", "1975000250", "SwapArchetype_v2", "box_RemoveEntity_v2_10.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_8();
    l0 = self.box_TeleportPawns_12;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1507221526", "1507221526", "SwapArchetype_v2", "box_TeleportPawns_12.Out", "box_ParticleSystem_v3_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_17();
    l0 = self.box_TeleportPawns_18;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1452067693", "1452067693", "SwapArchetype_v2", "box_TeleportPawns_18.Out", "box_ParticleSystem_v3_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_4_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_10();
    l0 = self.box_Bind_v4_4;
    l1 = self.box_RemoveEntity_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|774386023", "774386023", "SwapArchetype_v2", "box_Bind_v4_4.UnBound", "box_RemoveEntity_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_1_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_12();
    l0 = self.box_Bind_v4_1;
    l1 = self.box_TeleportPawns_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1300591871", "1300591871", "SwapArchetype_v2", "box_Bind_v4_1.Bound", "box_TeleportPawns_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_14_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_14;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|587844534", "587844534", "SwapArchetype_v2", "box_MultipleOR_14.Out", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_4();
    l0 = self.box_MultipleOR_11;
    l1 = self.box_Bind_v4_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|156794580", "156794580", "SwapArchetype_v2", "box_MultipleOR_11.Out", "box_Bind_v4_4.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_8_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_5();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1144162758", "1144162758", "SwapArchetype_v2", "box_ParticleSystem_v3_8.Started", "box_Compare_Boolean_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_17_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_19();
    l0 = self.box_RemoveEntity_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1665680903", "1665680903", "SwapArchetype_v2", "box_ParticleSystem_v3_17.Started", "box_RemoveEntity_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_2_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_3();
    l0 = self.box_OnceOnly_v3_2;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|720601574", "720601574", "SwapArchetype_v2", "box_OnceOnly_v3_2.Out", "box_SetEntity_v2_3.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_SetEntity_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|190469966");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_3_Out,
    });
    l0 = self.box_ListReader_9;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ListReader_9()
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

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|563353365");
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

function export:OnEnter_box_GetHealthState_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|603263718");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_GetHealthState_13_Critical,
        -- Healthy,
        [3] = self.f_box_GetHealthState_13_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.FormerEntity_ID,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|761230003");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_5_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_5_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_CheckIfFormerEntityIsAlive,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|912608750");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_16_True,
    });
    params = {
        -- entityId,
        [0] = self.FormerEntity_ID,
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

function export:OnEnter_box_RemoveEntity_v2_10()
    local params;
    params = {
        -- Group,
        [0] = self.FormerEntity_ID,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_12()
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

function export:OnEnter_box_TeleportPawns_18()
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

function export:OnEnter_box_Bind_v4_4()
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

function export:OnEnter_box_Bind_v4_1()
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

function export:OnEnter_box_RemoveEntity_v2_19()
    local params;
    params = {
        -- Group,
        [0] = self.FormerEntity_ID,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1886441365");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_8_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.VFX_Emitter,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI31\\UNI31_030_B40.domino|@SwapArchetype_v2|1968032757");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_17_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.VFX_Emitter,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.NewEntity_ID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_7_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_7;
    l1 = self.box_ListReader_9;
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
