LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni04/uni04_intro.domino
-- User graph: _UNI04_Brick_PlayDialog_Relax_Healthy
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Mandatory" Type="Core|bool" />
    <DataIn Name="SoundId" Type="Nomad|Sound" />
    <DataIn Name="eLarry" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Interrupted",
                delayed = true,
            },
            [2] = {
                name = "Restarted",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "eLarry",
                type = "entity",
            },
            [1] = {
                name = "Mandatory",
                type = "bool",
            },
            [2] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/StateListener_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Alert",
            },
            [1] = {
                name = "Combat",
            },
            [2] = {
                name = "Dead",
            },
            [3] = {
                name = "Disable",
            },
            [4] = {
                name = "Idle_RelaxCautious",
            },
            [5] = {
                name = "Investigate",
            },
        },
        controlInCount = 6,
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
                name = "MemberInState",
                delayed = true,
            },
            [3] = {
                name = "StateStart",
                delayed = true,
            },
            [4] = {
                name = "StateStop",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "memberCountInState",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
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
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SimpleNode.lua")] = {
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
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "_UNI04_Brick_PlayDialog_Relax_Healthy";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy";
    self.Started = DummyFunction;
    self.Interrupted = DummyFunction;
    self.Restarted = DummyFunction;
    self.Finished = DummyFunction;
    self.box_StateListener_v2_21 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|107569025");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StateListener_v2_21_Disabled,
        -- StateStop,
        [4] = self.f_box_StateListener_v2_21_StateStop,
    });
    self.box_StateListener_v2_13 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|152178387");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StateListener_v2_13_Enabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_13_StateStart,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|152455447");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_PlayDialog_v6_8 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|346561062");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_8_Finished,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_8_Stopped,
    });
    self.box_OnceOnly_v3_16 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|509086401");
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
                [0] = self.f_box_OnceOnly_v3_16_Out_0,
            },
            count = 2,
        },
    });
    self.box_HealthListener_v6_27 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|589645841");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_27_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_27_Revived,
    });
    self.box_OnceOnly_v3_19 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|677989303");
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
                [0] = self.f_box_OnceOnly_v3_19_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1159342004");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_HealthListener_v6_2 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1408336801");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_2_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_2_Healed,
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1413798186");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1426575515");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_HealthListener_v6_4 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1507814874");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_4_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_4_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_4_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_4_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_4_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_4_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_4_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_4_Revived,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1562200431");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1629242608");
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
    self.box_OnceOnly_v3_22 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|2134023873");
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
                [0] = self.f_box_OnceOnly_v3_22_Out_0,
            },
            count = 2,
        },
    });
end;

function export:Play()
    local l0;
    l0 = self.box_OnceOnly_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1240944515", "1240944515", "_UNI04_Brick_PlayDialog_Relax_Healthy", "Play", "box_OnceOnly_v3_22.In", self, l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|114903853", "114903853", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_29.Out", "box_OnceOnly_v3_22.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    params = self:OnEnter_box_StateListener_v2_21();
    l0 = self.box_StateListener_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|350015749", "350015749", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_29.Out", "box_StateListener_v2_21.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(3, params);
    params = self:OnEnter_box_HealthListener_v6_4();
    l0 = self.box_HealthListener_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1921591001", "1921591001", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_29.Out", "box_HealthListener_v6_4.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1088067023", "1088067023", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_30.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_20();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|342374992", "342374992", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_28.Out", "box_Compare_Boolean_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_OnceOnly_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1052470623", "1052470623", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_28.Out", "box_OnceOnly_v3_19.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    l0 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|237368205", "237368205", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_28.Out", "box_OnceOnly_v3_16.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_StateListener_v2_21_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_13();
    l0 = self.box_StateListener_v2_21;
    l1 = self.box_StateListener_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|154164705", "154164705", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_StateListener_v2_21.Disabled", "box_StateListener_v2_13.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(3, params);
end;

function export:f_box_StateListener_v2_21_StateStop()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_24();
    l0 = self.box_StateListener_v2_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|50326059", "50326059", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_StateListener_v2_21.StateStop", "box_Simple_Node_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_13_Enabled()
    local l0, l1;
    l0 = self.box_StateListener_v2_13;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1032177579", "1032177579", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_StateListener_v2_13.Enabled", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StateListener_v2_13_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = self.box_StateListener_v2_13;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|185196023", "185196023", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_StateListener_v2_13.StateStart", "box_Simple_Node_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_4();
    l0 = self.box_MultipleOR_32;
    l1 = self.box_HealthListener_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1218658181", "1218658181", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_MultipleOR_32.Out", "box_HealthListener_v6_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|935261265", "935261265", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_18.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|668523108", "668523108", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OutputOrder_v2_5.Out", "box_Simple_Node_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|904308935", "904308935", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OutputOrder_v2_5.Out", "Finished", clone:GetLuaBox(), self);
    self:Finished();
end;

function export:f_box_PlayDialog_v6_8_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = self.box_PlayDialog_v6_8;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|940157566", "940157566", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_PlayDialog_v6_8.Finished", "box_Simple_Node_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_8_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = self.box_PlayDialog_v6_8;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1204920059", "1204920059", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_PlayDialog_v6_8.Stopped", "box_Simple_Node_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|924719527", "924719527", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_7.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_16_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_OnceOnly_v3_16;
    l1 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|586009290", "586009290", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OnceOnly_v3_16.Out", "box_PlayDialog_v6_8.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_27_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = self.box_HealthListener_v6_27;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1962368449", "1962368449", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_HealthListener_v6_27.Downed", "box_Simple_Node_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_27_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_27;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|2014916054", "2014916054", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_HealthListener_v6_27.Revived", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_19_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_13();
    l0 = self.box_OnceOnly_v3_19;
    l1 = self.box_StateListener_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1503876983", "1503876983", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OnceOnly_v3_19.Out", "box_StateListener_v2_13.Idle_RelaxCautious", l0:GetLuaBox(), l1:GetLuaBox());
    -- Idle_RelaxCautious
    l1:Exec(4, params);
end;

function export:f_box_Simple_Node_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1368771032", "1368771032", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_17.Out", "box_OutputOrder_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|924458488", "924458488", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_24.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|332576440", "332576440", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OutputOrder_v2_10.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|915233503", "915233503", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OutputOrder_v2_10.Out", "Restarted", clone:GetLuaBox(), self);
    self:Restarted();
end;

function export:f_box_Simple_Node_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|823044137", "823044137", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_12.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|411088669", "411088669", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_14.Out", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_MultipleOR_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1637994396", "1637994396", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_MultipleOR_3.Out", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_31_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|162363378", "162363378", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Compare_Floats_31.A_ge_B", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Floats_31_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_18();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1283642467", "1283642467", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Compare_Floats_31.A_lt_B", "box_Simple_Node_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|573127866", "573127866", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OutputOrder_v2_6.Out", "box_Simple_Node_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1455337995", "1455337995", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OutputOrder_v2_6.Out", "Finished", clone:GetLuaBox(), self);
    self:Finished();
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|514586215", "514586215", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OutputOrder_v2_11.Out", "box_PlayDialog_v6_8.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1342139412", "1342139412", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OutputOrder_v2_11.Out", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_21();
    l0 = self.box_StateListener_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1975679967", "1975679967", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OutputOrder_v2_11.Out", "box_StateListener_v2_21.Idle_RelaxCautious", clone:GetLuaBox(), l0:GetLuaBox());
    -- Idle_RelaxCautious
    l0:Exec(4, params);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|273898564", "273898564", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OutputOrder_v2_11.Out", "Started", clone:GetLuaBox(), self);
    self:Started();
end;

function export:f_box_HealthListener_v6_2_Enabled()
    local l0, l1;
    l0 = self.box_HealthListener_v6_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1752104713", "1752104713", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_HealthListener_v6_2.Enabled", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_2_Healed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_2;
    l1 = self.box_OnceOnly_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|394397936", "394397936", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_HealthListener_v6_2.Healed", "box_OnceOnly_v3_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = self.box_Delay_v5_9;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|998346237", "998346237", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Delay_v5_9.TimeElapsed", "box_Simple_Node_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|2124321652", "2124321652", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_MultipleOR_1.Out", "box_OnceOnly_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_4_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Floats_31();
    l0 = self.box_HealthListener_v6_4;
    l1 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|601548607", "601548607", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_HealthListener_v6_4.Damaged", "box_Compare_Floats_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_4_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_2();
    l0 = self.box_HealthListener_v6_4;
    l1 = self.box_HealthListener_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|650559924", "650559924", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_HealthListener_v6_4.Disabled", "box_HealthListener_v6_2.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_GetHealthState_26_Down()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_27();
    l0 = self.box_HealthListener_v6_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|2106119466", "2106119466", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_GetHealthState_26.Down", "box_HealthListener_v6_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_26_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|111245988", "111245988", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_GetHealthState_26.Healthy", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_20_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_14();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1877938258", "1877938258", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Compare_Boolean_20.A_is_False", "box_Simple_Node_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_20_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|430916960", "430916960", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Compare_Boolean_20.A_is_True", "box_Delay_v5_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_MultipleOR_25;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1940847614", "1940847614", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_MultipleOR_25.Out", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_2();
    l0 = self.box_MultipleOR_23;
    l1 = self.box_HealthListener_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1017980720", "1017980720", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_MultipleOR_23.Out", "box_HealthListener_v6_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_22_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_26();
    l0 = self.box_OnceOnly_v3_22;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|2119832256", "2119832256", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_OnceOnly_v3_22.Out", "box_GetHealthState_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|204140625", "204140625", "_UNI04_Brick_PlayDialog_Relax_Healthy", "box_Simple_Node_15.Out", "Interrupted", clone:GetLuaBox(), self);
    self:Interrupted();
end;

function export:OnEnter_box_Simple_Node_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|@Closing ALL");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|@n_Downed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|@ReStart");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_18()
    local params, l0;
    DrawTextToScreen("Comment: Lib PlayDialog Damage Deceived", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Lib PlayDialog Damage Deceived");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|207264747");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|234622477");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_8()
    local params;
    params = {
        -- Group,
        [0] = self.eLarry,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = self.SoundId,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_7()
    local params, l0;
    DrawTextToScreen("Comment: Lib PlayDialog Started", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Lib PlayDialog Started");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|359443134");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_27()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    DrawTextToScreen("Comment: Lib PlayDialog Finished Successfully", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Lib PlayDialog Finished Successfully");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|744791609");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_24()
    local params, l0;
    DrawTextToScreen("Comment: Lib PlayDialog State Is not Idle_RelaxCausious", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Lib PlayDialog State Is not Idle_RelaxCausious");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|854708158");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_24_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|888865776");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_12()
    local params, l0;
    DrawTextToScreen("Comment: Lib PlayDialog Restarted", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Lib PlayDialog Restarted");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|899630839");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_14()
    local params, l0;
    DrawTextToScreen("Comment: Lib PlayDialog Restarted", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Lib PlayDialog Restarted");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1108025794");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1325060849");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_31_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_31_A_lt_B,
    });
    l0 = self.box_HealthListener_v6_4;
    params = {
        -- A,
        [0] = 5,
        -- B,
        [1] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1355636487");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1390425388");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
                [3] = self.f_box_OutputOrder_v2_11_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_2()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_4()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1533028797");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_26_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_26_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|1534810710");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_20_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_20_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Mandatory,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    DrawTextToScreen("Comment: Lib PlayDialog Interrupted", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Lib PlayDialog Interrupted");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@_UNI04_Brick_PlayDialog_Relax_Healthy|2139745051");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
    });
    params = {
    };
    return params;
end;

-- Empty out anchor definitions
function export:Started()
    
end;
function export:Interrupted()
    
end;
function export:Restarted()
    
end;
function export:Finished()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Play" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Finished" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="Interrupted" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="Restarted" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="Started" AnchorDynType="0" IsDelayed="1" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eLarry" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Mandatory" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="SoundId" AnchorDynType="0" DataTypeID="Sound" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
