LUACF�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni58/uni58_010/uni58_010_b10.domino
-- User graph: GuyStpAndDialogs
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eGuy" Type="Nomad|entity{}" />
    <DataIn Name="GuyStp1" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[806512939.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4126458494.bnk]], "CSoundResource");
        cboxRes:LoadResource([[992631653.bnk]], "CSoundResource");
        cboxRes:LoadResource([[246613002.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3539455512.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4060138625.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3157328355.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2284079989.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_B10.GuyStpAndDialogs.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "eGuy",
                type = "entity",
            },
            [1] = {
                name = "GuyStp1",
                type = "entity",
            },
        },
        dataInCount = 2,
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
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
                name = "Entity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    self._name = "GuyStpAndDialogs";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs";
    self.e_GUY = nil;
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|249124194");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_16_Finished,
    });
    self.box_ContextualActionListener_4 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|274468541");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_4_Start,
    });
    self.box_PlayDialog_v6_15 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|308225174");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_15_Finished,
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|312995008");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_Random_21 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|398423574");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_21_Output_0,
                [1] = self.f_box_Random_21_Output_1,
                [2] = self.f_box_Random_21_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|439340893");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|601191653");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|730603011");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_PlayDialog_v6_25 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|881019198");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_25_Finished,
    });
    self.box_PlayDialog_v6_24 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|949222556");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_24_Finished,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1147504636");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1212957269");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_10_Finished,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1274473088");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1279133587");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_Random_12 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1291653711");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_12_Output_0,
                [1] = self.f_box_Random_12_Output_1,
                [2] = self.f_box_Random_12_Output_2,
            },
            count = 3,
        },
    });
    self.box_PlayDialog_v6_18 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1317176574");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_18_Finished,
    });
    self.box_Random_14 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1319110125");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_14_Output_0,
                [1] = self.f_box_Random_14_Output_1,
                [2] = self.f_box_Random_14_Output_2,
            },
            count = 3,
        },
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1417097512");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_11_Finished,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1723497985");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
    self.box_PlayDialog_v6_23 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1908276656");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_23_Finished,
    });
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1978561208");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_1_Finished,
    });
    self.box_OnceOnly_v3_26 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|2027003279");
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
                [0] = self.f_box_OnceOnly_v3_26_Out_0,
            },
            count = 2,
        },
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_SetEntity_v2_27();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1653086768", "1653086768", "GuyStpAndDialogs", "In", "box_SetEntity_v2_27.FromEntity", self, l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|599643486", "599643486", "GuyStpAndDialogs", "box_Simple_Node_7.Out", "box_OutputOrder_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_27_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1107202202", "1107202202", "GuyStpAndDialogs", "box_SetEntity_v2_27.Out", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_16_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_16;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1394101532", "1394101532", "GuyStpAndDialogs", "box_PlayDialog_v6_16.Finished", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ContextualActionListener_4_Start()
    local l0, l1;
    l0 = self.box_ContextualActionListener_4;
    l1 = self.box_OnceOnly_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1273855484", "1273855484", "GuyStpAndDialogs", "box_ContextualActionListener_4.Start", "box_OnceOnly_v3_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_15_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_15;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|873143429", "873143429", "GuyStpAndDialogs", "box_PlayDialog_v6_15.Finished", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_3();
    l0 = self.box_MultipleOR_22;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|131602186", "131602186", "GuyStpAndDialogs", "box_MultipleOR_22.Out", "box_UseContextualActionModifier_v3_3.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_21_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_Random_21;
    l1 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|31691882", "31691882", "GuyStpAndDialogs", "box_Random_21.Output", "box_PlayDialog_v6_23.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_21_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_25();
    l0 = self.box_Random_21;
    l1 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|287636416", "287636416", "GuyStpAndDialogs", "box_Random_21.Output", "box_PlayDialog_v6_25.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_21_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_24();
    l0 = self.box_Random_21;
    l1 = self.box_PlayDialog_v6_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|27724627", "27724627", "GuyStpAndDialogs", "box_Random_21.Output", "box_PlayDialog_v6_24.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_14();
    l0 = self.box_Delay_v5_13;
    l1 = self.box_Random_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|288838521", "288838521", "GuyStpAndDialogs", "box_Delay_v5_13.TimeElapsed", "box_Random_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_4();
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ContextualActionListener_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1005400602", "1005400602", "GuyStpAndDialogs", "box_MultipleOR_5.Out", "box_ContextualActionListener_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_8_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|133501197", "133501197", "GuyStpAndDialogs", "box_UseContextualActionModifier_v3_8.Enabled", "box_Delay_v5_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_8_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|831367043", "831367043", "GuyStpAndDialogs", "box_UseContextualActionModifier_v3_8.ForceNormalEndCalled", "box_Simple_Node_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_8();
    l0 = self.box_Delay_v5_9;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|515758515", "515758515", "GuyStpAndDialogs", "box_Delay_v5_9.TimeElapsed", "box_UseContextualActionModifier_v3_8.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_25_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_25;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|961064614", "961064614", "GuyStpAndDialogs", "box_PlayDialog_v6_25.Finished", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_24_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_24;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1638583491", "1638583491", "GuyStpAndDialogs", "box_PlayDialog_v6_24.Finished", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_21();
    l0 = self.box_Delay_v5_20;
    l1 = self.box_Random_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1879727511", "1879727511", "GuyStpAndDialogs", "box_Delay_v5_20.TimeElapsed", "box_Random_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_10_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_10;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|935984331", "935984331", "GuyStpAndDialogs", "box_PlayDialog_v6_10.Finished", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_12();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_Random_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|575232402", "575232402", "GuyStpAndDialogs", "box_Delay_v5_6.TimeElapsed", "box_Random_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_MultipleOR_17;
    l1 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1114439845", "1114439845", "GuyStpAndDialogs", "box_MultipleOR_17.Out", "box_Delay_v5_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_12_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1024987215", "1024987215", "GuyStpAndDialogs", "box_Random_12.Output", "box_PlayDialog_v6_1.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1022870709", "1022870709", "GuyStpAndDialogs", "box_Random_12.Output", "box_PlayDialog_v6_11.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_18();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|514825840", "514825840", "GuyStpAndDialogs", "box_Random_12.Output", "box_PlayDialog_v6_18.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_18_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_18;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|362959176", "362959176", "GuyStpAndDialogs", "box_PlayDialog_v6_18.Finished", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Random_14_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_15();
    l0 = self.box_Random_14;
    l1 = self.box_PlayDialog_v6_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|912512988", "912512988", "GuyStpAndDialogs", "box_Random_14.Output", "box_PlayDialog_v6_15.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_14_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_Random_14;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|2070104548", "2070104548", "GuyStpAndDialogs", "box_Random_14.Output", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_14_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_Random_14;
    l1 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1475574004", "1475574004", "GuyStpAndDialogs", "box_Random_14.Output", "box_PlayDialog_v6_16.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_11_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_11;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|885690046", "885690046", "GuyStpAndDialogs", "box_PlayDialog_v6_11.Finished", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_MultipleOR_19;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|869549192", "869549192", "GuyStpAndDialogs", "box_MultipleOR_19.Out", "box_Delay_v5_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1785400467", "1785400467", "GuyStpAndDialogs", "box_OutputOrder_v2_2.Out", "box_OnceOnly_v3_26.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1390676120", "1390676120", "GuyStpAndDialogs", "box_OutputOrder_v2_2.Out", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_23_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_23;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|2109106764", "2109106764", "GuyStpAndDialogs", "box_PlayDialog_v6_23.Finished", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_3_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_8();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1943717267", "1943717267", "GuyStpAndDialogs", "box_UseContextualActionModifier_v3_3.ForceNormalEndCalled", "box_UseContextualActionModifier_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_1_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_1;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|522134951", "522134951", "GuyStpAndDialogs", "box_PlayDialog_v6_1.Finished", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_26_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_OnceOnly_v3_26;
    l1 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|488518693", "488518693", "GuyStpAndDialogs", "box_OnceOnly_v3_26.Out", "box_Delay_v5_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:OnEnter_box_Simple_Node_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|@DialogsLoop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|12940478");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_27_Out,
    });
    params = {
        -- Entity,
        [0] = self.eGuy,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    params = {
        -- Group,
        [0] = self.e_GUY,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "992631653",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_4()
    local params;
    params = {
        -- ContextualAction,
        [0] = self.GuyStp1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_15()
    local params;
    params = {
        -- Group,
        [0] = self.e_GUY,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "806512939",
    };
    return params;
end;

function export:OnEnter_box_Random_21()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|690432593");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_8_Enabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_8_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103598247776906302",
        -- Entity,
        [1] = self.e_GUY,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_25()
    local params;
    params = {
        -- Group,
        [0] = self.e_GUY,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3157328355",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_24()
    local params;
    params = {
        -- Group,
        [0] = self.e_GUY,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4060138625",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    params = {
        -- Group,
        [0] = self.e_GUY,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4126458494",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Random_12()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_18()
    local params;
    params = {
        -- Group,
        [0] = self.e_GUY,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2284079989",
    };
    return params;
end;

function export:OnEnter_box_Random_14()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = self.e_GUY,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3539455512",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1877730130");
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

function export:OnEnter_box_PlayDialog_v6_23()
    local params;
    params = {
        -- Group,
        [0] = self.e_GUY,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "992631653",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@GuyStpAndDialogs|1954043333");
    l0:SetConnections({
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_3_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = self.GuyStp1,
        -- Entity,
        [1] = self.e_GUY,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    params = {
        -- Group,
        [0] = self.e_GUY,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "246613002",
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_GUY = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="eGuy" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="GuyStp1" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
