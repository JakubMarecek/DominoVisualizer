LUAC3�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni67/uni67_010_debrief_skipped.domino
-- User graph: UNI67_010_DEBRIEF_SKIPPED_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI67/UNI67_010_DEBRIEF_SKIPPED.UNI67_010_DEBRIEF_SKIPPED_main.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "RemoveItemFromInventory",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ItemsAcquired",
                delayed = false,
            },
            [1] = {
                name = "ItemsRemoved",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AmountRequired",
                type = "int",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [3] = {
                name = "LootItemID",
                type = "genericdb",
            },
            [4] = {
                name = "MarkerTypeId",
                type = "database",
            },
            [5] = {
                name = "Objective",
                type = "oasis",
            },
            [6] = {
                name = "opt_eMarker",
                type = "entity",
            },
            [7] = {
                name = "ProtectItemOnSuccess",
                type = "bool",
            },
        },
        dataInCount = 8,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
            [2] = {
                name = "ShowHud",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
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
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
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
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI67_010_DEBRIEF_SKIPPED_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main";
    self.eCharacter = nil;
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|14395729");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|622449621");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_RemoveEntity_v2_20 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|643825812");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1159483604");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_RemoveEntity_v2_13 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1170107720");
    l0:SetConnections({
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1332049944");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_ActivityInitialized_10 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1395372170");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_10_Out,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1414641917");
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
    self.box_Brick_AcquireObject_v5_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
    l0 = self.box_Brick_AcquireObject_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v5_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1580580542");
    l0:SetConnections({
        -- ItemsRemoved,
        [1] = self.f_box_Brick_AcquireObject_v5_4_ItemsRemoved,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1585250308");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_Brick_NarrativeQuickCinema_V3_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1598416912");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V3_1_Finished,
    });
    self.box_StartCelebration_7 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1777146424");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_7_Ended,
    });
    self.box_EntityStatusListener_24 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1799107724");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_24_Loaded,
    });
    self.box_CharacterLoadedIdListener_8 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|2057243273");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_8_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_8_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_8_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_8_LoadedIdReceived,
    });
    self.box_CharacterLoadedIdListener_25 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|2136019687");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_25_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_25_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_25_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_25_LoadedIdReceived,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|2053362805", "2053362805", "UNI67_010_DEBRIEF_SKIPPED_main", "In", "box_OutputOrder_v2_27.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1196378276", "1196378276", "UNI67_010_DEBRIEF_SKIPPED_main", "OnLeaveZone", "box_ActivityRetry_15.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = self.box_Delay_v5_9;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1291168919", "1291168919", "UNI67_010_DEBRIEF_SKIPPED_main", "box_Delay_v5_9.TimeElapsed", "box_UseContextualActionModifier_v3_11.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_11_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_18();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|831343473", "831343473", "UNI67_010_DEBRIEF_SKIPPED_main", "box_UseContextualActionModifier_v3_11.Disabled", "box_UseContextualActionModifier_v3_18.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_11_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|745789568", "745789568", "UNI67_010_DEBRIEF_SKIPPED_main", "box_UseContextualActionModifier_v3_11.InterruptCalled", "box_Delay_v5_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_18_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|893270358", "893270358", "UNI67_010_DEBRIEF_SKIPPED_main", "box_UseContextualActionModifier_v3_18.Disabled", "box_UseContextualActionModifier_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_18_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|632387052", "632387052", "UNI67_010_DEBRIEF_SKIPPED_main", "box_UseContextualActionModifier_v3_18.ForceNormalEndCalled", "box_Delay_v5_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = self.box_Delay_v5_17;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|757938511", "757938511", "UNI67_010_DEBRIEF_SKIPPED_main", "box_Delay_v5_17.TimeElapsed", "box_UseContextualActionModifier_v3_16.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_22_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|835444961", "835444961", "UNI67_010_DEBRIEF_SKIPPED_main", "box_IsEntityLoaded_v3_22.False", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_22_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_21();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1901031818", "1901031818", "UNI67_010_DEBRIEF_SKIPPED_main", "box_IsEntityLoaded_v3_22.True", "box_UseContextualActionModifier_v3_21.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_16_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|86837213", "86837213", "UNI67_010_DEBRIEF_SKIPPED_main", "box_UseContextualActionModifier_v3_16.Enabled", "box_Delay_v5_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_16_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1184286633", "1184286633", "UNI67_010_DEBRIEF_SKIPPED_main", "box_UseContextualActionModifier_v3_16.UseCalled", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1288489375", "1288489375", "UNI67_010_DEBRIEF_SKIPPED_main", "box_OutputOrder_v2_27.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_22();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|734832428", "734832428", "UNI67_010_DEBRIEF_SKIPPED_main", "box_OutputOrder_v2_27.Out", "box_IsEntityLoaded_v3_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1464575634", "1464575634", "UNI67_010_DEBRIEF_SKIPPED_main", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|839888372", "839888372", "UNI67_010_DEBRIEF_SKIPPED_main", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_18();
    l0 = self.box_Delay_v5_14;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1969919985", "1969919985", "UNI67_010_DEBRIEF_SKIPPED_main", "box_Delay_v5_14.TimeElapsed", "box_UseContextualActionModifier_v3_18.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_3_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_13();
    l0 = self.box_RemoveEntity_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|2010888221", "2010888221", "UNI67_010_DEBRIEF_SKIPPED_main", "box_IsEntityLoaded_v3_3.True", "box_RemoveEntity_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_8();
    l0 = self.box_ActivityInitialized_10;
    l1 = self.box_CharacterLoadedIdListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1619901427", "1619901427", "UNI67_010_DEBRIEF_SKIPPED_main", "box_ActivityInitialized_10.Out", "box_CharacterLoadedIdListener_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1566440396", "1566440396", "UNI67_010_DEBRIEF_SKIPPED_main", "box_MultipleOR_2.Out", "box_ActivityInitialized_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_UseContextualActionModifier_v3_21_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|208294589", "208294589", "UNI67_010_DEBRIEF_SKIPPED_main", "box_UseContextualActionModifier_v3_21.Disabled", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_19();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|443169745", "443169745", "UNI67_010_DEBRIEF_SKIPPED_main", "box_OutputOrder_v2_5.Out", "box_IsEntityLoaded_v3_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_3();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1324427656", "1324427656", "UNI67_010_DEBRIEF_SKIPPED_main", "box_OutputOrder_v2_5.Out", "box_IsEntityLoaded_v3_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_7();
    l0 = self.box_StartCelebration_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1493112926", "1493112926", "UNI67_010_DEBRIEF_SKIPPED_main", "box_OutputOrder_v2_5.Out", "box_StartCelebration_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Brick_AcquireObject_v5_4_ItemsRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = self.box_Brick_AcquireObject_v5_4;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|899049804", "899049804", "UNI67_010_DEBRIEF_SKIPPED_main", "box_Brick_AcquireObject_v5_4.ItemsRemoved", "box_UseContextualActionModifier_v3_11.CallInterrupt", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallInterrupt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_24();
    l0 = self.box_MultipleOR_26;
    l1 = self.box_EntityStatusListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1812396157", "1812396157", "UNI67_010_DEBRIEF_SKIPPED_main", "box_MultipleOR_26.Out", "box_EntityStatusListener_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_1_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_AcquireObject_v5_4();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_1;
    l1 = self.box_Brick_AcquireObject_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|2099692347", "2099692347", "UNI67_010_DEBRIEF_SKIPPED_main", "box_Brick_NarrativeQuickCinema_V3_1.Finished", "box_Brick_AcquireObject_v5_4.RemoveItemFromInventory", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveItemFromInventory
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_19_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_20();
    l0 = self.box_RemoveEntity_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1518551024", "1518551024", "UNI67_010_DEBRIEF_SKIPPED_main", "box_IsEntityLoaded_v3_19.True", "box_RemoveEntity_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_StartCelebration_7_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_12();
    l0 = self.box_StartCelebration_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|525491283", "525491283", "UNI67_010_DEBRIEF_SKIPPED_main", "box_StartCelebration_7.Ended", "box_ActivityEnd_12.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_24_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_25();
    l0 = self.box_EntityStatusListener_24;
    l1 = self.box_CharacterLoadedIdListener_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|862509668", "862509668", "UNI67_010_DEBRIEF_SKIPPED_main", "box_EntityStatusListener_24.Loaded", "box_CharacterLoadedIdListener_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_8_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_8_LoadedIdReceived();
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V3_1();
    l0 = self.box_CharacterLoadedIdListener_8;
    l1 = self.box_Brick_NarrativeQuickCinema_V3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|241976804", "241976804", "UNI67_010_DEBRIEF_SKIPPED_main", "box_CharacterLoadedIdListener_8.LoadedIdReceived", "box_Brick_NarrativeQuickCinema_V3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_CharacterLoadedIdListener_25_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    l0 = self.box_CharacterLoadedIdListener_25;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1672458010", "1672458010", "UNI67_010_DEBRIEF_SKIPPED_main", "box_CharacterLoadedIdListener_25.LoadedIdReceived", "box_UseContextualActionModifier_v3_23.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|119901519");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_11_Disabled,
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_11_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101481890780310371",
        -- Entity,
        [1] = self.eCharacter,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|270514310");
    l0:SetConnections({
    });
    l0 = self.box_CharacterLoadedIdListener_25;
    params = {
        -- ContextualAction,
        [0] = "2101481890780310371",
        -- Entity,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|468843963");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_18_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_18_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103789460102594916",
        -- Entity,
        [1] = self.eCharacter,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_20()
    local params;
    params = {
        -- Group,
        [0] = "2103482661826733818",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|715531290");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_22_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_22_True,
    });
    params = {
        -- entityId,
        [0] = "2103775070093599188",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|726534761");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|757101697");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_16_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_16_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103775415681161338",
        -- Entity,
        [1] = self.eCharacter,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|869333338");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_13()
    local params;
    params = {
        -- Group,
        [0] = "2103482552036632312",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1361559958");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_3_True,
    });
    params = {
        -- entityId,
        [0] = "2103482552036632312",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1421088559");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_21_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103775070093599188",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1476368117");
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

function export:OnEnter_box_Brick_AcquireObject_v5_4()
    local params;
    params = {
        -- AmountRequired,
        [0] = 10,
        -- bRequiresObjective,
        [1] = true,
        -- CompletePreviousObjective,
        [2] = true,
        -- LootItemID,
        [3] = "9015253460528863",
        -- MarkerTypeId,
        [4] = "9015256514390917",
        -- Objective,
        [5] = {
            section = "Objectives",
            item = "UNI67_010_B10_GOAL",
            id = "684881",
        },
        -- ProtectItemOnSuccess,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V3_1()
    local params;
    params = {
        -- eNPC,
        [0] = self.eCharacter,
        -- eQCA_STP,
        [1] = "2101481890780310371",
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "UNI38_020_BRIEF_MeetWade",
            id = "684875",
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1617903156");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_19_True,
    });
    params = {
        -- entityId,
        [0] = "2103482661826733818",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_7()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101481890780310371",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI67\\UNI67_010_DEBRIEF_SKIPPED.domino|@UNI67_010_DEBRIEF_SKIPPED_main|1830711208");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015271038570451",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015271038570451",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_8_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_8;
    self.eCharacter = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
