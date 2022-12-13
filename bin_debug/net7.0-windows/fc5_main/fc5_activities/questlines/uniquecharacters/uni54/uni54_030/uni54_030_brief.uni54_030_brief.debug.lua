LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni54/uni54_030/uni54_030_brief.domino
-- User graph: UNI54_030_BRIEF
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_CustomAttractLines.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_FakeAwareness.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[971399090.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3360794702.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2226522582.bnk]], "CSoundResource");
        cboxRes:LoadResource([[862480379.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI54/UNI54_030/UNI54_030_BRIEF.UNI54_030_BRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua")] = {
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
                name = "eQCA_STP",
                type = "entity",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_CustomAttractLines.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "LongDelay10_20s",
            },
            [2] = {
                name = "MediumDelay5_8s",
            },
            [3] = {
                name = "ShortDelay2_3s",
            },
        },
        controlInCount = 4,
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
                name = "LineID_Updated",
                delayed = true,
            },
            [3] = {
                name = "Started",
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
                name = "LoopLines",
                type = "bool",
            },
            [2] = {
                name = "RandomLineOrder",
                type = "bool",
            },
            [3] = {
                name = "SoundID_01",
                type = "Sound",
            },
            [4] = {
                name = "SoundID_02",
                type = "Sound",
            },
            [5] = {
                name = "SoundID_03",
                type = "Sound",
            },
            [6] = {
                name = "SoundID_04",
                type = "Sound",
            },
            [7] = {
                name = "SoundID_05",
                type = "Sound",
            },
            [8] = {
                name = "SoundID_06",
                type = "Sound",
            },
            [9] = {
                name = "SoundID_07",
                type = "Sound",
            },
            [10] = {
                name = "SoundID_08",
                type = "Sound",
            },
            [11] = {
                name = "SoundID_09",
                type = "Sound",
            },
        },
        dataInCount = 12,
        dataOut = {
            [0] = {
                name = "LineID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_FakeAwareness.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CloseRange2_5m",
            },
            [1] = {
                name = "Disable",
            },
            [2] = {
                name = "LongRange10_20m",
            },
            [3] = {
                name = "MediumRange5_10m",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Aware",
                delayed = true,
            },
            [1] = {
                name = "BackOriginal",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "NPC",
                type = "entity",
            },
            [1] = {
                name = "STP_Aware_Optional",
                type = "entity",
            },
            [2] = {
                name = "STP_Original",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
            },
        },
        controlInCount = 3,
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
                name = "PlayerGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/Print_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ToAll",
            },
            [1] = {
                name = "ToConsole",
            },
            [2] = {
                name = "ToFile",
            },
            [3] = {
                name = "ToScreen",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "PrintedToConsole",
                delayed = false,
            },
            [2] = {
                name = "PrintedToFile",
                delayed = false,
            },
            [3] = {
                name = "PrintedToScreen",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bool",
                type = "bool",
            },
            [1] = {
                name = "color",
                type = "string",
            },
            [2] = {
                name = "db",
                type = "genericdb",
            },
            [3] = {
                name = "duration",
                type = "float",
            },
            [4] = {
                name = "float",
                type = "float",
            },
            [5] = {
                name = "id",
                type = "entity",
            },
            [6] = {
                name = "int",
                type = "int",
            },
            [7] = {
                name = "path",
                type = "string",
            },
            [8] = {
                name = "str",
                type = "string",
            },
            [9] = {
                name = "useTimeTag",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI54_030_BRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF";
    self.eVirgil = nil;
    self.ePlayerGroup = nil;
    self.box_Gate_v3_22 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|23611473");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_22_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_22_Out,
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|292471396");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_Realization_FakeAwareness_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_FakeAwareness.debug.lua");
    l0 = self.box_Realization_FakeAwareness_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Realization_FakeAwareness_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|644215455");
    l0:SetConnections({
        -- Aware,
        [0] = self.f_box_Realization_FakeAwareness_16_Aware,
        -- BackOriginal,
        [1] = self.f_box_Realization_FakeAwareness_16_BackOriginal,
        -- Disabled,
        [2] = self.f_box_Realization_FakeAwareness_16_Disabled,
        -- Started,
        [3] = self.f_box_Realization_FakeAwareness_16_Started,
    });
    self.box_Realization_CustomAttractLines_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_CustomAttractLines.debug.lua");
    l0 = self.box_Realization_CustomAttractLines_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Realization_CustomAttractLines_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|863450277");
    l0:SetConnections({
        -- LineID_Updated,
        [2] = self.f_box_Realization_CustomAttractLines_12_LineID_Updated,
    });
    self.box_CharacterLoadedIdListener_9 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1057258269");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_9_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_9_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_9_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_9_LoadedIdReceived,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1083445047");
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
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1274739018");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1291684416");
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
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1301067853");
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
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1322588527");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1542624504");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_ContextualActionListener_17 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1615977870");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_17_Start,
    });
    self.box_Brick_NarrativeQuickCinema_V3_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1708818135");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V3_3_Finished,
        -- Started,
        [5] = self.f_box_Brick_NarrativeQuickCinema_V3_3_Started,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1781363982");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_9();
    l0 = self.box_CharacterLoadedIdListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|73628228", "73628228", "UNI54_030_BRIEF", "In", "box_CharacterLoadedIdListener_9.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_22_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Realization_CustomAttractLines_12();
    l0 = self.box_Gate_v3_22;
    l1 = self.box_Realization_CustomAttractLines_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|980827054", "980827054", "UNI54_030_BRIEF", "box_Gate_v3_22.Closed", "box_Realization_CustomAttractLines_12.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Realization_CustomAttractLines_12();
    l0 = self.box_Gate_v3_22;
    l1 = self.box_Realization_CustomAttractLines_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|295420509", "295420509", "UNI54_030_BRIEF", "box_Gate_v3_22.Out", "box_Realization_CustomAttractLines_12.MediumDelay5_8s", l0:GetLuaBox(), l1:GetLuaBox());
    -- MediumDelay5_8s
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_22();
    l0 = self.box_Gate_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|880040975", "880040975", "UNI54_030_BRIEF", "box_OutputOrder_v2_23.Out", "box_Gate_v3_22.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|437377095", "437377095", "UNI54_030_BRIEF", "box_OutputOrder_v2_23.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_13();
    l0 = self.box_Delay_v5_7;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|860316779", "860316779", "UNI54_030_BRIEF", "box_Delay_v5_7.TimeElapsed", "box_UseContextualActionModifier_v3_13.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_18_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|905561208", "905561208", "UNI54_030_BRIEF", "box_GetActivityState_v2_18.Active", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_18_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|636597881", "636597881", "UNI54_030_BRIEF", "box_GetActivityState_v2_18.Canceled", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_18_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|690536387", "690536387", "UNI54_030_BRIEF", "box_GetActivityState_v2_18.Completed", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_18_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|193934001", "193934001", "UNI54_030_BRIEF", "box_GetActivityState_v2_18.Failed", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_18_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|136852489", "136852489", "UNI54_030_BRIEF", "box_GetActivityState_v2_18.Inactive", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_18_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|2093116455", "2093116455", "UNI54_030_BRIEF", "box_GetActivityState_v2_18.Unavailable", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_10_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|977657517", "977657517", "UNI54_030_BRIEF", "box_GetPlayerGroup_v2_10.Out", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Realization_FakeAwareness_16_Aware()
    local l0, l1;
    l0 = self.box_Realization_FakeAwareness_16;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|404408263", "404408263", "UNI54_030_BRIEF", "box_Realization_FakeAwareness_16.Aware", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Realization_FakeAwareness_16_BackOriginal()
    local l0, l1;
    l0 = self.box_Realization_FakeAwareness_16;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|488968201", "488968201", "UNI54_030_BRIEF", "box_Realization_FakeAwareness_16.BackOriginal", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Realization_FakeAwareness_16_Disabled()
    local l0, l1;
    l0 = self.box_Realization_FakeAwareness_16;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|582750870", "582750870", "UNI54_030_BRIEF", "box_Realization_FakeAwareness_16.Disabled", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Realization_FakeAwareness_16_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_Realization_FakeAwareness_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|369080177", "369080177", "UNI54_030_BRIEF", "box_Realization_FakeAwareness_16.Started", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|635355316", "635355316", "UNI54_030_BRIEF", "box_OutputOrder_v2_5.Out", "box_Delay_v5_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|245879389", "245879389", "UNI54_030_BRIEF", "box_OutputOrder_v2_5.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|333781141", "333781141", "UNI54_030_BRIEF", "box_OutputOrder_v2_5.Out", "box_Print_v2_8.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Realization_CustomAttractLines_12_LineID_Updated()
    local l0, l1;
    l0 = self.box_Realization_CustomAttractLines_12;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|825402040", "825402040", "UNI54_030_BRIEF", "box_Realization_CustomAttractLines_12.LineID_Updated", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_CharacterLoadedIdListener_9_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_9_LoadedIdReceived();
    params = self:OnEnter_box_GetPlayerGroup_v2_10();
    l0 = self.box_CharacterLoadedIdListener_9;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1529139962", "1529139962", "UNI54_030_BRIEF", "box_CharacterLoadedIdListener_9.LoadedIdReceived", "box_GetPlayerGroup_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1926128594", "1926128594", "UNI54_030_BRIEF", "box_MultipleOR_1.Out", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V3_3();
    l0 = self.box_ActivityInitialized_6;
    l1 = self.box_Brick_NarrativeQuickCinema_V3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|629175572", "629175572", "UNI54_030_BRIEF", "box_ActivityInitialized_6.Out", "box_Brick_NarrativeQuickCinema_V3_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_18();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|464704172", "464704172", "UNI54_030_BRIEF", "box_MultipleOR_15.Out", "box_GetActivityState_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_22();
    l0 = self.box_MultipleOR_21;
    l1 = self.box_Gate_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|650559849", "650559849", "UNI54_030_BRIEF", "box_MultipleOR_21.Out", "box_Gate_v3_22.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_22();
    l0 = self.box_MultipleOR_19;
    l1 = self.box_Gate_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|2030670939", "2030670939", "UNI54_030_BRIEF", "box_MultipleOR_19.Out", "box_Gate_v3_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|717862499", "717862499", "UNI54_030_BRIEF", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|2000013091", "2000013091", "UNI54_030_BRIEF", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_14_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|800018446", "800018446", "UNI54_030_BRIEF", "box_UseContextualActionModifier_v3_14.Enabled", "box_UseContextualActionModifier_v3_14.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_14_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_17();
    l0 = self.box_ContextualActionListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1074719269", "1074719269", "UNI54_030_BRIEF", "box_UseContextualActionModifier_v3_14.UseCalled", "box_ContextualActionListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_13_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|575056983", "575056983", "UNI54_030_BRIEF", "box_UseContextualActionModifier_v3_13.Disabled", "box_UseContextualActionModifier_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_17_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Realization_FakeAwareness_16();
    l0 = self.box_ContextualActionListener_17;
    l1 = self.box_Realization_FakeAwareness_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1056185853", "1056185853", "UNI54_030_BRIEF", "box_ContextualActionListener_17.Start", "box_Realization_FakeAwareness_16.MediumRange5_10m", l0:GetLuaBox(), l1:GetLuaBox());
    -- MediumRange5_10m
    l1:Exec(3, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_3_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1964649154", "1964649154", "UNI54_030_BRIEF", "box_Brick_NarrativeQuickCinema_V3_3.Finished", "box_ActivityEnd_2.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_3_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Realization_FakeAwareness_16();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_3;
    l1 = self.box_Realization_FakeAwareness_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|676582267", "676582267", "UNI54_030_BRIEF", "box_Brick_NarrativeQuickCinema_V3_3.Started", "box_Realization_FakeAwareness_16.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_11_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_11;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|257636333", "257636333", "UNI54_030_BRIEF", "box_MultipleOR_11.Out", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Gate_v3_22()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|202921542");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|481250419");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_18_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_18_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_18_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_18_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_18_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_18_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015244324836613",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|538299571");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Realization_FakeAwareness_16()
    local params;
    params = {
        -- NPC,
        [0] = self.eVirgil,
        -- STP_Aware_Optional,
        [1] = "2103939858910170392",
        -- STP_Original,
        [2] = "2104174709022149122",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|763926794");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Realization_CustomAttractLines_12()
    local params;
    params = {
        -- eNPC,
        [0] = self.eVirgil,
        -- LoopLines,
        [1] = true,
        -- RandomLineOrder,
        [2] = true,
        -- SoundID_01,
        [3] = "971399090",
        -- SoundID_02,
        [4] = "862480379",
        -- SoundID_03,
        [5] = "2226522582",
        -- SoundID_04,
        [6] = "3360794702",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015218968246690",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1567975104");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_14_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_14_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104174709022149122",
        -- Entity,
        [1] = self.eVirgil,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|1597533083");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_13_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103939858910170392",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_17()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2104174709022149122",
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V3_3()
    local params;
    params = {
        -- eNPC,
        [0] = self.eVirgil,
        -- oObjective,
        [2] = {
            section = "Objective",
            item = "UNI54_030_DEBRIEF_TalkTo",
            id = "555350",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|2033020688");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_030\\UNI54_030_BRIEF.domino|@UNI54_030_BRIEF|2110522461");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNI054_030_BRIEF script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.ePlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_9_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_9;
    self.eVirgil = l0:GetDataOutValue(0);
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
