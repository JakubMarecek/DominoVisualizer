LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni15/uni15_010/uni15_010_debrief.domino
-- User graph: UNI15_010_DEBRIEF
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI15/UNI15_010/UNI15_010_DEBRIEF.UNI15_010_DEBRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/InventoryItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Refill",
            },
            [2] = {
                name = "RefillClip",
            },
            [3] = {
                name = "Remove",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
            [3] = {
                name = "quantity",
                type = "int",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
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
    metadataTable[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetNumberOfItems",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "numItems",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    self._name = "UNI15_010_DEBRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF";
    self.eChadGordetto = nil;
    self.box_EntityStatusListener_20 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|489539067");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_20_Loaded,
    });
    self.box_CharacterLoadedIdListener_19 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|568864846");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_19_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_19_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_19_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_19_LoadedIdReceived,
    });
    self.box_RemoveEntity_v2_28 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|637227288");
    l0:SetConnections({
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|748065827");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_InventoryItemModifier_13 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1100306599");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_13_Out,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1192357388");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_RemoveEntity_v2_22 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1324389996");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_17 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1373474190");
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
        [0] = self.f_box_MultipleAND_v2_17_Out,
    });
    self.box_Brick_NarrativeQuickCinema_V3_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1373552384");
    l0:SetConnections({
        -- Aborted,
        [0] = self.f_box_Brick_NarrativeQuickCinema_V3_10_Aborted,
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V3_10_Finished,
    });
    self.box_RemoveEntity_v2_31 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1568830813");
    l0:SetConnections({
    });
    self.box_StartCelebration_9 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1572816573");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_9_Ended,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1615967417");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_InventoryItemModifier_11 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1702155902");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_11_Out,
    });
    self.box_InventoryItemModifier_7 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1723885172");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_7_Out,
    });
    self.box_RemoveEntity_v2_26 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1801355486");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_8 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1823936988");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|242268030", "242268030", "UNI15_010_DEBRIEF", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_24();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1470976194", "1470976194", "UNI15_010_DEBRIEF", "box_OutputOrder_v2_27.Out", "box_IsEntityLoaded_v3_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_25();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|961366162", "961366162", "UNI15_010_DEBRIEF", "box_OutputOrder_v2_27.Out", "box_IsEntityLoaded_v3_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_29();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1292508900", "1292508900", "UNI15_010_DEBRIEF", "box_OutputOrder_v2_27.Out", "box_IsEntityLoaded_v3_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_30();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1944607473", "1944607473", "UNI15_010_DEBRIEF", "box_OutputOrder_v2_27.Out", "box_IsEntityLoaded_v3_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|8793563", "8793563", "UNI15_010_DEBRIEF", "box_OutputOrder_v2_27.Out", "box_ActivityEnd_2.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_20_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_21();
    l0 = self.box_EntityStatusListener_20;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|105737111", "105737111", "UNI15_010_DEBRIEF", "box_EntityStatusListener_20.Loaded", "box_UseContextualActionModifier_v3_21.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_19_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_19_LoadedIdReceived();
    params = self:OnEnter_box_EntityStatusListener_20();
    l0 = self.box_CharacterLoadedIdListener_19;
    l1 = self.box_EntityStatusListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1400459555", "1400459555", "UNI15_010_DEBRIEF", "box_CharacterLoadedIdListener_19.LoadedIdReceived", "box_EntityStatusListener_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|47441373", "47441373", "UNI15_010_DEBRIEF", "box_OutputOrder_v2_4.Out", "box_Print_v2_3.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1486366289", "1486366289", "UNI15_010_DEBRIEF", "box_OutputOrder_v2_4.Out", "box_ActivityAcknowledgeGate_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_19();
    l0 = self.box_CharacterLoadedIdListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1808399135", "1808399135", "UNI15_010_DEBRIEF", "box_OutputOrder_v2_4.Out", "box_CharacterLoadedIdListener_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1589089164", "1589089164", "UNI15_010_DEBRIEF", "box_MultipleOR_6.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_IsEntityLoaded_v3_24_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_22();
    l0 = self.box_RemoveEntity_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|449358115", "449358115", "UNI15_010_DEBRIEF", "box_IsEntityLoaded_v3_24.True", "box_RemoveEntity_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_InventoryItemModifier_13;
    l1 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|553512871", "553512871", "UNI15_010_DEBRIEF", "box_InventoryItemModifier_13.Out", "box_MultipleAND_v2_17.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1045991510", "1045991510", "UNI15_010_DEBRIEF", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|110809001", "110809001", "UNI15_010_DEBRIEF", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetInventoryItemQuantity_15_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_15_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_13();
    l0 = self.box_InventoryItemModifier_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|671735337", "671735337", "UNI15_010_DEBRIEF", "box_GetInventoryItemQuantity_15.Out", "box_InventoryItemModifier_13.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_15();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1227268854", "1227268854", "UNI15_010_DEBRIEF", "box_OutputOrder_v2_18.Out", "box_GetInventoryItemQuantity_15.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_16();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1766918916", "1766918916", "UNI15_010_DEBRIEF", "box_OutputOrder_v2_18.Out", "box_GetInventoryItemQuantity_16.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_14();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1311708176", "1311708176", "UNI15_010_DEBRIEF", "box_OutputOrder_v2_18.Out", "box_GetInventoryItemQuantity_14.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_9();
    l0 = self.box_MultipleAND_v2_17;
    l1 = self.box_StartCelebration_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1037545558", "1037545558", "UNI15_010_DEBRIEF", "box_MultipleAND_v2_17.Out", "box_StartCelebration_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_10_Aborted()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_12();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1223566193", "1223566193", "UNI15_010_DEBRIEF", "box_Brick_NarrativeQuickCinema_V3_10.Aborted", "box_ActivityRetry_12.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_10_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|2012231017", "2012231017", "UNI15_010_DEBRIEF", "box_Brick_NarrativeQuickCinema_V3_10.Finished", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_29_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_28();
    l0 = self.box_RemoveEntity_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|2139137961", "2139137961", "UNI15_010_DEBRIEF", "box_IsEntityLoaded_v3_29.True", "box_RemoveEntity_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetInventoryItemQuantity_16_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_16_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_11();
    l0 = self.box_InventoryItemModifier_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|2087003642", "2087003642", "UNI15_010_DEBRIEF", "box_GetInventoryItemQuantity_16.Out", "box_InventoryItemModifier_11.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(3, params);
end;

function export:f_box_StartCelebration_9_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_StartCelebration_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|2065093896", "2065093896", "UNI15_010_DEBRIEF", "box_StartCelebration_9.Ended", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_8();
    l0 = self.box_ActivityInitialized_1;
    l1 = self.box_CharacterLoadedIdListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1880168310", "1880168310", "UNI15_010_DEBRIEF", "box_ActivityInitialized_1.Out", "box_CharacterLoadedIdListener_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_25_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_26();
    l0 = self.box_RemoveEntity_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|731937182", "731937182", "UNI15_010_DEBRIEF", "box_IsEntityLoaded_v3_25.True", "box_RemoveEntity_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_InventoryItemModifier_11;
    l1 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|923032377", "923032377", "UNI15_010_DEBRIEF", "box_InventoryItemModifier_11.Out", "box_MultipleAND_v2_17.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_InventoryItemModifier_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_InventoryItemModifier_7;
    l1 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|595000216", "595000216", "UNI15_010_DEBRIEF", "box_InventoryItemModifier_7.Out", "box_MultipleAND_v2_17.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_UseContextualActionModifier_v3_21_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1766929219", "1766929219", "UNI15_010_DEBRIEF", "box_UseContextualActionModifier_v3_21.UseCalled", "box_UseContextualActionModifier_v3_23.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_8_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_8_LoadedIdReceived();
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V3_10();
    l0 = self.box_CharacterLoadedIdListener_8;
    l1 = self.box_Brick_NarrativeQuickCinema_V3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|811963542", "811963542", "UNI15_010_DEBRIEF", "box_CharacterLoadedIdListener_8.LoadedIdReceived", "box_Brick_NarrativeQuickCinema_V3_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_30_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_31();
    l0 = self.box_RemoveEntity_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|91046378", "91046378", "UNI15_010_DEBRIEF", "box_IsEntityLoaded_v3_30.True", "box_RemoveEntity_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetInventoryItemQuantity_14_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_14_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_7();
    l0 = self.box_InventoryItemModifier_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1554392677", "1554392677", "UNI15_010_DEBRIEF", "box_GetInventoryItemQuantity_14.Out", "box_InventoryItemModifier_7.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(3, params);
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|94020475");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
                [3] = self.f_box_OutputOrder_v2_27_Out_3,
                [4] = self.f_box_OutputOrder_v2_27_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eChadGordetto,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206184264265",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_28()
    local params;
    params = {
        -- Group,
        [0] = "2104438133847260727",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|709488362");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|729085445");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|849564748");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_24_True,
    });
    params = {
        -- entityId,
        [0] = "2104438133847260727",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1038922556");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104672542114462608",
        -- Entity,
        [1] = self.eChadGordetto,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    params = {
        -- itemDescriptorID,
        [0] = "9015265934122452",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1197921859");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_15_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015265934122452",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1234766166");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_22()
    local params;
    params = {
        -- Group,
        [0] = "2104438133847260727",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_17()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V3_10()
    local params;
    params = {
        -- eNPC,
        [0] = self.eChadGordetto,
        -- eQCA_STP,
        [1] = "2099795762985588092",
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "UNI15_010_BRIEF_TalkToChad",
            id = "550318",
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1445022657");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_29_True,
    });
    params = {
        -- entityId,
        [0] = "2104438096299851315",
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1522200856");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_16_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015247010352147",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_31()
    local params;
    params = {
        -- Group,
        [0] = "2104438108834528820",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_9()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1619083998");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_25_True,
    });
    params = {
        -- entityId,
        [0] = "2104438151176027704",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1627136174");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 7,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNI15_010_DEBRIEF script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    params = {
        -- itemDescriptorID,
        [0] = "9015247010352147",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    params = {
        -- itemDescriptorID,
        [0] = "9015265934130840",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1738808417");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_21_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099795762985588092",
        -- Entity,
        [1] = self.eChadGordetto,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_26()
    local params;
    params = {
        -- Group,
        [0] = "2104438151176027704",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206184264265",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1885460325");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_30_True,
    });
    params = {
        -- entityId,
        [0] = "2104438108834528820",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|1986876185");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI15\\UNI15_010\\UNI15_010_DEBRIEF.domino|@UNI15_010_DEBRIEF|2058429837");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_14_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015265934130840",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_19_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_19;
    self.eChadGordetto = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_15_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l1 = self.box_InventoryItemModifier_13;
    l1:GetLuaBox().quantity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_16_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l1 = self.box_InventoryItemModifier_11;
    l1:GetLuaBox().quantity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_8_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_8;
    self.eChadGordetto = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_14_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l1 = self.box_InventoryItemModifier_7;
    l1:GetLuaBox().quantity = l0:GetDataOutValue(0);
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
