LUACo�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni61/uni61_agenda/uni64_agen_f4_homebase.domino
-- User graph: UNI64_AGEN_F4
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
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI61/UNI61_Agenda/UNI64_AGEN_F4_Homebase.Liners.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[700211494.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4256954938.bnk]], "CSoundResource");
        cboxRes:LoadResource([[627219680.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2278639285.bnk]], "CSoundResource");
        cboxRes:LoadResource([[823369634.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3039336569.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1085879507.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2067633051.bnk]], "CSoundResource");
        cboxRes:LoadResource([[658044189.bnk]], "CSoundResource");
        cboxRes:LoadResource([[481346410.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2418083527.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3359822687.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1099012554.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3122685565.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI61/UNI61_Agenda/UNI64_AGEN_F4_Homebase.UNI64_AGEN_F4.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Active",
                delayed = false,
            },
            [1] = {
                name = "Canceled",
                delayed = false,
            },
            [2] = {
                name = "Completed",
                delayed = false,
            },
            [3] = {
                name = "Failed",
                delayed = false,
            },
            [4] = {
                name = "Inactive",
                delayed = false,
            },
            [5] = {
                name = "Out",
                delayed = false,
            },
            [6] = {
                name = "Unavailable",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "activityDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "message",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
            [0] = {
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI61/UNI61_Agenda/UNI64_AGEN_F4_Homebase.Liners.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Play",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = true,
            },
            [1] = {
                name = "Ended",
                delayed = true,
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
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "SoundID_01",
                type = "Sound",
            },
            [2] = {
                name = "SoundID_02",
                type = "Sound",
            },
            [3] = {
                name = "SoundID_03",
                type = "Sound",
            },
            [4] = {
                name = "SoundID_04",
                type = "Sound",
            },
            [5] = {
                name = "SoundID_05",
                type = "Sound",
            },
            [6] = {
                name = "SoundID_06",
                type = "Sound",
            },
            [7] = {
                name = "SoundID_07",
                type = "Sound",
            },
            [8] = {
                name = "SoundID_08",
                type = "Sound",
            },
            [9] = {
                name = "SoundID_09",
                type = "Sound",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI64_AGEN_F4";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4";
    self.UNI61 = nil;
    self.gPlayers = nil;
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|80665404");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_ContextualActionListener_7 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|156807016");
    l0:SetConnections({
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_7_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_7_Markup2,
    });
    self.box_Delay_v5_5 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|788116351");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_5_TimeElapsed,
    });
    self.box_Gate_v3_10 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|917552813");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_10_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_10_Out,
    });
    self.box_Gate_v3_8 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1123357983");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_8_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_8_Out,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1189234017");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_MessageListener_v3_13 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1266082250");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_13_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_13_Received,
    });
    self.box_Liners_11 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI61/UNI61_Agenda/UNI64_AGEN_F4_Homebase.Liners.debug.lua");
    l0 = self.box_Liners_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Liners_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1344178500");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Liners_11_Started,
        -- Stopped,
        [3] = self.f_box_Liners_11_Stopped,
    });
    self.box_CharacterLoadedIdListener_1 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1350738826");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_1_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_1_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_1_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_1_LoadedIdReceived,
    });
    self.box_Liners_29 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI61/UNI61_Agenda/UNI64_AGEN_F4_Homebase.Liners.debug.lua");
    l0 = self.box_Liners_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Liners_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1453900586");
    l0:SetConnections({
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1481165845");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1520085323");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_ContextualActionListener_12 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1719369064");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_12_Disabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_12_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_12_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_12_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_12_Markup2,
    });
    self.box_Gate_v3_2 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1845209988");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_2_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_2_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_2_Out,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|2053520628");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_1();
    l0 = self.box_CharacterLoadedIdListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|2001004078", "2001004078", "UNI64_AGEN_F4", "In", "box_CharacterLoadedIdListener_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_32();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1664041836", "1664041836", "UNI64_AGEN_F4", "box_Simple_Node_17.Out", "box_UseContextualActionModifier_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Liners_29();
    l0 = self.box_MultipleOR_9;
    l1 = self.box_Liners_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|484113096", "484113096", "UNI64_AGEN_F4", "box_MultipleOR_9.Out", "box_Liners_29.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_7_Markup1()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_2();
    l0 = self.box_ContextualActionListener_7;
    l1 = self.box_Gate_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1789361865", "1789361865", "UNI64_AGEN_F4", "box_ContextualActionListener_7.Markup1", "box_Gate_v3_2.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_7_Markup2()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_2();
    l0 = self.box_ContextualActionListener_7;
    l1 = self.box_Gate_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|947075202", "947075202", "UNI64_AGEN_F4", "box_ContextualActionListener_7.Markup2", "box_Gate_v3_2.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|176637835", "176637835", "UNI64_AGEN_F4", "box_OutputOrder_v2_4.Out", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_7();
    l0 = self.box_ContextualActionListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|926347979", "926347979", "UNI64_AGEN_F4", "box_OutputOrder_v2_4.Out", "box_ContextualActionListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_5_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_5;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|331061506", "331061506", "UNI64_AGEN_F4", "box_Delay_v5_5.TimeElapsed", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_10_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_Gate_v3_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|611588156", "611588156", "UNI64_AGEN_F4", "box_Gate_v3_10.Closed", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_Gate_v3_10;
    l1 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1795541765", "1795541765", "UNI64_AGEN_F4", "box_Gate_v3_10.Out", "box_Delay_v5_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RandomFloat_v2_37_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1090228218", "1090228218", "UNI64_AGEN_F4", "box_RandomFloat_v2_37.Out", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_8_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_Gate_v3_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|999973589", "999973589", "UNI64_AGEN_F4", "box_Gate_v3_8.Closed", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_Gate_v3_8;
    l1 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1652546314", "1652546314", "UNI64_AGEN_F4", "box_Gate_v3_8.Out", "box_Gate_v3_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Liners_11();
    l0 = self.box_MultipleOR_36;
    l1 = self.box_Liners_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1086003193", "1086003193", "UNI64_AGEN_F4", "box_MultipleOR_36.Out", "box_Liners_11.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_13_Enabled()
    local l0, l1;
    l0 = self.box_MessageListener_v3_13;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|2043258857", "2043258857", "UNI64_AGEN_F4", "box_MessageListener_v3_13.Enabled", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_13_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_13;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1228286513", "1228286513", "UNI64_AGEN_F4", "box_MessageListener_v3_13.Received", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_18_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1690483898", "1690483898", "UNI64_AGEN_F4", "box_GetActivityState_v2_18.Active", "box_Gate_v3_10.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_18_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_8();
    l0 = self.box_Gate_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|707227980", "707227980", "UNI64_AGEN_F4", "box_GetActivityState_v2_18.Completed", "box_Gate_v3_8.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_18_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|860627049", "860627049", "UNI64_AGEN_F4", "box_GetActivityState_v2_18.Inactive", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_18_Unavailable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_8();
    l0 = self.box_Gate_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|25795773", "25795773", "UNI64_AGEN_F4", "box_GetActivityState_v2_18.Unavailable", "box_Gate_v3_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_32_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_12();
    l0 = self.box_ContextualActionListener_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|579831726", "579831726", "UNI64_AGEN_F4", "box_UseContextualActionModifier_v3_32.Enabled", "box_ContextualActionListener_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Liners_11_Started()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_37();
    l0 = self.box_Liners_11;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|2087408319", "2087408319", "UNI64_AGEN_F4", "box_Liners_11.Started", "box_RandomFloat_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Liners_11_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Liners_11;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|687399521", "687399521", "UNI64_AGEN_F4", "box_Liners_11.Stopped", "box_Delay_v5_34.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_CharacterLoadedIdListener_1_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_1_LoadedIdReceived();
    params = self:OnEnter_box_MessageListener_v3_13();
    l0 = self.box_CharacterLoadedIdListener_1;
    l1 = self.box_MessageListener_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|3999497", "3999497", "UNI64_AGEN_F4", "box_CharacterLoadedIdListener_1.LoadedIdReceived", "box_MessageListener_v3_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = self.box_MultipleOR_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|715691793", "715691793", "UNI64_AGEN_F4", "box_MultipleOR_21.Out", "box_Simple_Node_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_2();
    l0 = self.box_Delay_v5_34;
    l1 = self.box_Gate_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|422681418", "422681418", "UNI64_AGEN_F4", "box_Delay_v5_34.TimeElapsed", "box_Gate_v3_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_12_Disabled()
    local l0, l1;
    l0 = self.box_ContextualActionListener_12;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|851193332", "851193332", "UNI64_AGEN_F4", "box_ContextualActionListener_12.Disabled", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_12_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_12;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|288082370", "288082370", "UNI64_AGEN_F4", "box_ContextualActionListener_12.End", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_12_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_12;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|2019772611", "2019772611", "UNI64_AGEN_F4", "box_ContextualActionListener_12.Interrupt", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ContextualActionListener_12_Markup1()
    local params, l0, l1;
    params = self:OnEnter_box_Liners_29();
    l0 = self.box_ContextualActionListener_12;
    l1 = self.box_Liners_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|773871447", "773871447", "UNI64_AGEN_F4", "box_ContextualActionListener_12.Markup1", "box_Liners_29.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_12_Markup2()
    local l0, l1;
    l0 = self.box_ContextualActionListener_12;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1037696374", "1037696374", "UNI64_AGEN_F4", "box_ContextualActionListener_12.Markup2", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Gate_v3_2_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Liners_11();
    l0 = self.box_Gate_v3_2;
    l1 = self.box_Liners_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1394758340", "1394758340", "UNI64_AGEN_F4", "box_Gate_v3_2.Closed", "box_Liners_11.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_2_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_2;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|646564249", "646564249", "UNI64_AGEN_F4", "box_Gate_v3_2.Opened", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_2_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_2;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|576208833", "576208833", "UNI64_AGEN_F4", "box_Gate_v3_2.Out", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_7();
    l0 = self.box_ContextualActionListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|551662125", "551662125", "UNI64_AGEN_F4", "box_OutputOrder_v2_22.Out", "box_ContextualActionListener_7.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|76085368", "76085368", "UNI64_AGEN_F4", "box_OutputOrder_v2_22.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_18();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|497569249", "497569249", "UNI64_AGEN_F4", "box_MultipleOR_15.Out", "box_GetActivityState_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|@IntroLines ON");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_7()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103750585508487922",
        -- UserFilter,
        [1] = self.UNI61,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|561383883");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_5()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_10()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|930983970");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_37_Out,
    });
    params = {
        -- Max,
        [0] = 10,
        -- Min,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_8()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_13()
    local params;
    DrawTextToScreen("Comment: LOCATED IN INTRO_012_B10", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MessageListener_v3')-- Comment: LOCATED IN INTRO_012_B10");
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "INTRO_012_B06_COMPLETED",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1285187811");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_18_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_18_Completed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_18_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_18_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015252522640561",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1330002362");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_32_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103750585508487922",
    };
    return params;
end;

function export:OnEnter_box_Liners_11()
    local params;
    params = {
        -- eNPC,
        [0] = self.UNI61,
        -- SoundID_01,
        [1] = "4256954938",
        -- SoundID_02,
        [2] = "2278639285",
        -- SoundID_03,
        [3] = "3359822687",
        -- SoundID_04,
        [4] = "627219680",
        -- SoundID_05,
        [5] = "3039336569",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015223375451837",
    };
    return params;
end;

function export:OnEnter_box_Liners_29()
    local params;
    params = {
        -- eNPC,
        [0] = self.UNI61,
        -- SoundID_01,
        [1] = "700211494",
        -- SoundID_02,
        [2] = "481346410",
        -- SoundID_03,
        [3] = "3122685565",
        -- SoundID_04,
        [4] = "2418083527",
        -- SoundID_05,
        [5] = "2067633051",
        -- SoundID_06,
        [6] = "1085879507",
        -- SoundID_07,
        [7] = "658044189",
        -- SoundID_08,
        [8] = "823369634",
        -- SoundID_09,
        [9] = "1099012554",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_12()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103750585508487922",
        -- UserFilter,
        [1] = self.UNI61,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_2()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@UNI64_AGEN_F4|1969725263");
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

function export:OnExit_box_RandomFloat_v2_37_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_34;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_1_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_1;
    self.UNI61 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
