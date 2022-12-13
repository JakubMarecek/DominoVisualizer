LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni13/uni13_020/uni13_020_radio03.domino
-- User graph: UNI13_020_Radio03
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI13/UNI13_020/UNI13_020_Radio03.UNI13_020_Radio03.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/GetPreconditionState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NotValid",
                delayed = false,
            },
            [1] = {
                name = "Valid",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PreconditionId",
                type = "string",
            },
        },
        dataInCount = 1,
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
    self._name = "UNI13_020_Radio03";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03";
    self.eWheaty_NPC = nil;
    self.collectible_Total = 10;
    self.box_RemoveEntity_v2_29 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|146833147");
    l0:SetConnections({
    });
    self.box_Brick_NarrativeQuickCinema_V4_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V4_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V4_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|404884062");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V4_14_Finished,
    });
    self.box_Brick_AcquireObject_v5_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
    l0 = self.box_Brick_AcquireObject_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v5_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|432268417");
    l0:SetConnections({
        -- ItemsRemoved,
        [1] = self.f_box_Brick_AcquireObject_v5_24_ItemsRemoved,
    });
    self.box_CharacterLoadedIdListener_3 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|552914260");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_3_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_3_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_3_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_3_LoadedIdReceived,
    });
    self.box_MultipleAND_v2_25 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|579952873");
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
        [0] = self.f_box_MultipleAND_v2_25_Out,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|701417044");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_CharacterLoadedIdListener_9 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|780900126");
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
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|811217725");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_StartCelebration_22 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|827198131");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_22_Ended,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|989431954");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_RemoveEntity_v2_30 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1080678471");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_27 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1803924869");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_27_Loaded,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1962378793");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1859309555", "1859309555", "UNI13_020_Radio03", "In", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_28();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|849352295", "849352295", "UNI13_020_Radio03", "box_OutputOrder_v2_32.Out", "box_IsEntityLoaded_v3_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_31();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|587814022", "587814022", "UNI13_020_Radio03", "box_OutputOrder_v2_32.Out", "box_IsEntityLoaded_v3_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_22();
    l0 = self.box_StartCelebration_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|2119944019", "2119944019", "UNI13_020_Radio03", "box_OutputOrder_v2_32.Out", "box_StartCelebration_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_14_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_AcquireObject_v5_24();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_14;
    l1 = self.box_Brick_AcquireObject_v5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|568078087", "568078087", "UNI13_020_Radio03", "box_Brick_NarrativeQuickCinema_V4_14.Finished", "box_Brick_AcquireObject_v5_24.RemoveItemFromInventory", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveItemFromInventory
    l1:Exec(1, params);
end;

function export:f_box_Brick_AcquireObject_v5_24_ItemsRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_Brick_AcquireObject_v5_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|366858941", "366858941", "UNI13_020_Radio03", "box_Brick_AcquireObject_v5_24.ItemsRemoved", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_3_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_3_LoadedIdReceived();
    params = self:OnEnter_box_MultipleAND_v2_25();
    l0 = self.box_CharacterLoadedIdListener_3;
    l1 = self.box_MultipleAND_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|35368358", "35368358", "UNI13_020_Radio03", "box_CharacterLoadedIdListener_3.LoadedIdReceived", "box_MultipleAND_v2_25.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    l0 = self.box_MultipleAND_v2_25;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1729290053", "1729290053", "UNI13_020_Radio03", "box_MultipleAND_v2_25.Out", "box_UseContextualActionModifier_v3_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_9();
    l0 = self.box_ActivityInitialized_4;
    l1 = self.box_CharacterLoadedIdListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|645900271", "645900271", "UNI13_020_Radio03", "box_ActivityInitialized_4.Out", "box_CharacterLoadedIdListener_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPreconditionState_16_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|139297992", "139297992", "UNI13_020_Radio03", "box_GetPreconditionState_16.NotValid", "box_Print_v2_19.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_9_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_9_LoadedIdReceived();
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V4_14();
    l0 = self.box_CharacterLoadedIdListener_9;
    l1 = self.box_Brick_NarrativeQuickCinema_V4_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1568423367", "1568423367", "UNI13_020_Radio03", "box_CharacterLoadedIdListener_9.LoadedIdReceived", "box_Brick_NarrativeQuickCinema_V4_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_8_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_8;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1488198411", "1488198411", "UNI13_020_Radio03", "box_MultipleOR_8.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_StartCelebration_22_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = self.box_StartCelebration_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1676618784", "1676618784", "UNI13_020_Radio03", "box_StartCelebration_22.Ended", "box_ActivityEnd_2.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_12_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1468519905", "1468519905", "UNI13_020_Radio03", "box_UseContextualActionModifier_v3_12.Enabled", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    l0 = self.box_Delay_v5_6;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1591318404", "1591318404", "UNI13_020_Radio03", "box_Delay_v5_6.TimeElapsed", "box_UseContextualActionModifier_v3_12.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_15_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_17();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|859447974", "859447974", "UNI13_020_Radio03", "box_GetPreconditionState_15.NotValid", "box_Print_v2_17.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_15();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|222668638", "222668638", "UNI13_020_Radio03", "box_OutputOrder_v2_11.Out", "box_GetPreconditionState_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_16();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|412007323", "412007323", "UNI13_020_Radio03", "box_OutputOrder_v2_11.Out", "box_GetPreconditionState_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|522026223", "522026223", "UNI13_020_Radio03", "box_OutputOrder_v2_11.Out", "box_OutputOrder_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_10();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1310111035", "1310111035", "UNI13_020_Radio03", "box_OutputOrder_v2_11.Out", "box_UseContextualActionModifier_v3_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|83839446", "83839446", "UNI13_020_Radio03", "box_OutputOrder_v2_1.Out", "box_ActivityAcknowledgeGate_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_27();
    l0 = self.box_EntityStatusListener_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1187966755", "1187966755", "UNI13_020_Radio03", "box_OutputOrder_v2_1.Out", "box_EntityStatusListener_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_3();
    l0 = self.box_CharacterLoadedIdListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|214383736", "214383736", "UNI13_020_Radio03", "box_OutputOrder_v2_1.Out", "box_CharacterLoadedIdListener_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_31_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_29();
    l0 = self.box_RemoveEntity_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|45486208", "45486208", "UNI13_020_Radio03", "box_IsEntityLoaded_v3_31.True", "box_RemoveEntity_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_27_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_25();
    l0 = self.box_EntityStatusListener_27;
    l1 = self.box_MultipleAND_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1320179817", "1320179817", "UNI13_020_Radio03", "box_EntityStatusListener_27.Loaded", "box_MultipleAND_v2_25.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|2005233894", "2005233894", "UNI13_020_Radio03", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|993423402", "993423402", "UNI13_020_Radio03", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_28_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_30();
    l0 = self.box_RemoveEntity_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1928756091", "1928756091", "UNI13_020_Radio03", "box_IsEntityLoaded_v3_28.True", "box_RemoveEntity_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|78824367");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
                [2] = self.f_box_OutputOrder_v2_32_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_29()
    local params;
    params = {
        -- Group,
        [0] = "2100194284188741306",
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V4_14()
    local params;
    params = {
        -- eNPC,
        [0] = self.eWheaty_NPC,
        -- Interrupt STP on Talk,
        [1] = false,
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "UNI13_020_DEBRIEF_Complete",
            id = "549171",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v5_24()
    local params;
    params = {
        -- AmountRequired,
        [0] = self.collectible_Total,
        -- bRequiresObjective,
        [1] = true,
        -- CompletePreviousObjective,
        [2] = true,
        -- LootItemID,
        [3] = "9015248469803806",
        -- MarkerTypeId,
        [4] = "9015256142562539",
        -- ProtectItemOnSuccess,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|473546495");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNLOCK RADIO TRACK 02",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015198269101358",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_25()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|710234318");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_16_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015266204760924",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015198269101358",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_22()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|854539876");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_12_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099892921040906254",
        -- Entity,
        [1] = self.eWheaty_NPC,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1012319458");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_15_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015266204734928",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1018761194");
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

function export:OnEnter_box_RemoveEntity_v2_30()
    local params;
    params = {
        -- Group,
        [0] = "2100194284188741307",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1087995125");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2099892921040906254",
        -- Entity,
        [1] = self.eWheaty_NPC,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1460795165");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1589459617");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_31_True,
    });
    params = {
        -- entityId,
        [0] = "2100194284188741306",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|1681733537");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099892921040906254",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|2025054223");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNLOCK RADIO TRACK 01",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_020\\UNI13_020_Radio03.domino|@UNI13_020_Radio03|2033435135");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_28_True,
    });
    params = {
        -- entityId,
        [0] = "2100194284188741307",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_3_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_3;
    self.eWheaty_NPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_9_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_9;
    self.eWheaty_NPC = l0:GetDataOutValue(0);
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
