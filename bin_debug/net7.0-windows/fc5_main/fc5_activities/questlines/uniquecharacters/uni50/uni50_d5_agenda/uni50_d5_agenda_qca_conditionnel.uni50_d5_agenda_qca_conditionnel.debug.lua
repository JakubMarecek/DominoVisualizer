LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni50/uni50_d5_agenda/uni50_d5_agenda_qca_conditionnel.domino
-- User graph: UNI50_D5_Agenda_QCA_Conditionnel
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_D5_Agenda/UNI50_D5_Agenda_QCA_Conditionnel.UNI50_D5_Agenda_QCA_Conditionnel.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Aborted",
                delayed = true,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Finished",
                delayed = true,
            },
            [3] = {
                name = "Paused",
                delayed = true,
            },
            [4] = {
                name = "Resumed",
                delayed = true,
            },
            [5] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "Interrupt_STP_on_Talk",
                type = "bool",
            },
            [2] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI50_D5_Agenda_QCA_Conditionnel";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel";
    self.UNI56 = nil;
    self.Earl_Whitehorse = nil;
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|135890387");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_OnceOnly_v3_14 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|732839809");
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
                [0] = self.f_box_OnceOnly_v3_14_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_NarrativeQuickCinema_V4_23 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V4_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V4_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|792202082");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V4_23_Finished,
    });
    self.box_Gate_v3_17 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|873832370");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_17_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_17_Out,
    });
    self.box_Gate_v3_22 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|910886193");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_22_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_22_Out,
    });
    self.box_CharacterLoadedIdListener_5 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1015114928");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_5_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_5_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_5_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_5_LoadedIdReceived,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1037196014");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1086728473");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1157882691");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_OnceOnly_v3_19 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1357498644");
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
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1378512389");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1791239526");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1911330937");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|2111769939");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_5();
    l0 = self.box_CharacterLoadedIdListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|61343698", "61343698", "UNI50_D5_Agenda_QCA_Conditionnel", "In", "box_CharacterLoadedIdListener_5.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_11_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_15();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1576449527", "1576449527", "UNI50_D5_Agenda_QCA_Conditionnel", "box_UseContextualActionModifier_v3_11.Enabled", "box_UseContextualActionModifier_v3_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_6();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|9941515", "9941515", "UNI50_D5_Agenda_QCA_Conditionnel", "box_MultipleOR_16.Out", "box_GetActivityState_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|625569953", "625569953", "UNI50_D5_Agenda_QCA_Conditionnel", "box_OutputOrder_v2_10.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|128461018", "128461018", "UNI50_D5_Agenda_QCA_Conditionnel", "box_OutputOrder_v2_10.Out", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|2105791052", "2105791052", "UNI50_D5_Agenda_QCA_Conditionnel", "box_SetContextualStrategy_20.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_UseContextualActionModifier_v3_8_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1991085901", "1991085901", "UNI50_D5_Agenda_QCA_Conditionnel", "box_UseContextualActionModifier_v3_8.Disabled", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_12_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_8();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1047299972", "1047299972", "UNI50_D5_Agenda_QCA_Conditionnel", "box_UseContextualActionModifier_v3_12.Enabled", "box_UseContextualActionModifier_v3_8.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_6_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_17();
    l0 = self.box_Gate_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|331123826", "331123826", "UNI50_D5_Agenda_QCA_Conditionnel", "box_GetActivityState_v2_6.Completed", "box_Gate_v3_17.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|452559827", "452559827", "UNI50_D5_Agenda_QCA_Conditionnel", "box_GetActivityState_v2_6.Out", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_14_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_20();
    l0 = self.box_OnceOnly_v3_14;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|466352274", "466352274", "UNI50_D5_Agenda_QCA_Conditionnel", "box_OnceOnly_v3_14.Out", "box_SetContextualStrategy_20.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_23_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_23;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1494340881", "1494340881", "UNI50_D5_Agenda_QCA_Conditionnel", "box_Brick_NarrativeQuickCinema_V4_23.Finished", "box_UseContextualActionModifier_v3_24.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_17_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    l0 = self.box_Gate_v3_17;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1357043880", "1357043880", "UNI50_D5_Agenda_QCA_Conditionnel", "box_Gate_v3_17.Closed", "box_UseContextualActionModifier_v3_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_17_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_17;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|751980381", "751980381", "UNI50_D5_Agenda_QCA_Conditionnel", "box_Gate_v3_17.Out", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_22_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = self.box_Gate_v3_22;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|875935867", "875935867", "UNI50_D5_Agenda_QCA_Conditionnel", "box_Gate_v3_22.Closed", "box_UseContextualActionModifier_v3_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_22_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_22;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1103132374", "1103132374", "UNI50_D5_Agenda_QCA_Conditionnel", "box_Gate_v3_22.Out", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|2138458381", "2138458381", "UNI50_D5_Agenda_QCA_Conditionnel", "box_UseContextualActionModifier_v3_24.Disabled", "box_ActivityEnd_7.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_5_LoadedIdReceived()
    local l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_5_LoadedIdReceived();
    l0 = self.box_CharacterLoadedIdListener_5;
    l1 = self.box_OnceOnly_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|713835908", "713835908", "UNI50_D5_Agenda_QCA_Conditionnel", "box_CharacterLoadedIdListener_5.LoadedIdReceived", "box_OnceOnly_v3_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_13_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_13;
    l1 = self.box_OnceOnly_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1496444917", "1496444917", "UNI50_D5_Agenda_QCA_Conditionnel", "box_MultipleOR_13.Out", "box_OnceOnly_v3_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_17();
    l0 = self.box_Delay_v5_18;
    l1 = self.box_Gate_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|890249280", "890249280", "UNI50_D5_Agenda_QCA_Conditionnel", "box_Delay_v5_18.TimeElapsed", "box_Gate_v3_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_9();
    l0 = self.box_MultipleOR_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1093183520", "1093183520", "UNI50_D5_Agenda_QCA_Conditionnel", "box_MultipleOR_2.Out", "box_GetActivityState_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_19_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_OnceOnly_v3_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|678430818", "678430818", "UNI50_D5_Agenda_QCA_Conditionnel", "box_OnceOnly_v3_19.Out", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1150383687", "1150383687", "UNI50_D5_Agenda_QCA_Conditionnel", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1736540272", "1736540272", "UNI50_D5_Agenda_QCA_Conditionnel", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_9_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_22();
    l0 = self.box_Gate_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|2147417731", "2147417731", "UNI50_D5_Agenda_QCA_Conditionnel", "box_GetActivityState_v2_9.Completed", "box_Gate_v3_22.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|962876306", "962876306", "UNI50_D5_Agenda_QCA_Conditionnel", "box_GetActivityState_v2_9.Out", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_15_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|717032767", "717032767", "UNI50_D5_Agenda_QCA_Conditionnel", "box_UseContextualActionModifier_v3_15.Disabled", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_22();
    l0 = self.box_Delay_v5_21;
    l1 = self.box_Gate_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|297822233", "297822233", "UNI50_D5_Agenda_QCA_Conditionnel", "box_Delay_v5_21.TimeElapsed", "box_Gate_v3_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V4_23();
    l0 = self.box_ActivityInitialized_1;
    l1 = self.box_Brick_NarrativeQuickCinema_V4_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1834539046", "1834539046", "UNI50_D5_Agenda_QCA_Conditionnel", "box_ActivityInitialized_1.Out", "box_Brick_NarrativeQuickCinema_V4_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|265770437", "265770437", "UNI50_D5_Agenda_QCA_Conditionnel", "box_MultipleOR_3.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:OnEnter_box_UseContextualActionModifier_v3_11()
    local params, l0;
    DrawTextToScreen("Comment: LT03_010_Debrief Completed > Bliss Rescue : QCA #363272", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UseContextualActionModifier_v3')-- Comment: LT03_010_Debrief Completed > Bliss Rescue : QCA #363272");
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|64279282");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_11_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104176036578085391",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|247276927");
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

function export:OnEnter_box_SetContextualStrategy_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|293094273");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_20_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104947202462861928",
        -- Group,
        [1] = self.Earl_Whitehorse,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|329746710");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_8_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104176036578085391",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_12()
    local params, l0;
    DrawTextToScreen("Comment: UNI50_010_DEBRIEF Completed", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UseContextualActionModifier_v3')-- Comment: UNI50_010_DEBRIEF Completed");
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|376545276");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_12_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104176039235176979",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|571869276");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_6_Completed,
        -- Out,
        [5] = self.f_box_GetActivityState_v2_6_Out,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015222442077232",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|753750615");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V4_23()
    local params;
    params = {
        -- eNPC,
        [0] = self.Earl_Whitehorse,
        -- Interrupt STP on Talk,
        [1] = true,
        -- oObjective,
        [2] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_Talk",
            id = "426352",
        },
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_17()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_22()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1014155405");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_24_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104466747382830230",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015218968175500",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1460028836");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_9_Completed,
        -- Out,
        [5] = self.f_box_GetActivityState_v2_9_Out,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015244208934727",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_D5_Agenda\\UNI50_D5_Agenda_QCA_Conditionnel.domino|@UNI50_D5_Agenda_QCA_Conditionnel|1644696978");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_15_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104176039235176979",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_5_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_5;
    self.Earl_Whitehorse = l0:GetDataOutValue(0);
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
