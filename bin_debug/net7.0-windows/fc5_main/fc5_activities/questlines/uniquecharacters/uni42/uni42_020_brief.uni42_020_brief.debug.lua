LUAC:�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni42/uni42_020_brief.domino
-- User graph: UNI42_020_BRIEF
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
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI42/UNI42_020_BRIEF.UNI42_020_BRIEF.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI42_020_BRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF";
    self.playerGroup = nil;
    self.eSenior_NPC = nil;
    self.eJunior_NPC = nil;
    self.box_MultipleAND_v2_32 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|149461991");
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
        [0] = self.f_box_MultipleAND_v2_32_Out,
    });
    self.box_CharacterLoadedIdListener_29 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|194385270");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_29_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_29_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_29_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_29_LoadedIdReceived,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|222105134");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_EntityStatusListener_30 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|228051720");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_30_Loaded,
    });
    self.box_Brick_NarrativeQuickCinema_V3_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|365981956");
    l0:SetConnections({
        -- Aborted,
        [0] = self.f_box_Brick_NarrativeQuickCinema_V3_15_Aborted,
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V3_15_Finished,
    });
    self.box_SpawnAI_25 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|463202673");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_27 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|630524683");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_27_Loaded,
    });
    self.box_MultipleAND_v2_23 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|669167367");
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
        [0] = self.f_box_MultipleAND_v2_23_Out,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|999520599");
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
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1196010758");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1213090145");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1277748350");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_MultipleAND_v2_9 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1313235969");
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
        [0] = self.f_box_MultipleAND_v2_9_Out,
    });
    self.box_EntityStatusListener_17 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1346841391");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_17_Loaded,
    });
    self.box_CharacterLoadedIdListener_10 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1544669779");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_10_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_10_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_10_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_10_LoadedIdReceived,
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1650384451");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1664430983");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_8 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1777360795");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_8_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_8_Reloaded,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|2083892983");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_18 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|2132783748");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_18_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_18_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_18_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_18_LoadedIdReceived,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1979576492", "1979576492", "UNI42_020_BRIEF", "In", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|952267982", "952267982", "UNI42_020_BRIEF", "OnLeaveZone", "box_MultipleOR_7.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_24_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1200392442", "1200392442", "UNI42_020_BRIEF", "box_IsEntityLoaded_v3_24.False", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_MultipleAND_v2_32;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|991422976", "991422976", "UNI42_020_BRIEF", "box_MultipleAND_v2_32.Out", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CharacterLoadedIdListener_29_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_29_LoadedIdReceived();
    params = self:OnEnter_box_MultipleAND_v2_32();
    l0 = self.box_CharacterLoadedIdListener_29;
    l1 = self.box_MultipleAND_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|476435899", "476435899", "UNI42_020_BRIEF", "box_CharacterLoadedIdListener_29.LoadedIdReceived", "box_MultipleAND_v2_32.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_10();
    l0 = self.box_ActivityInitialized_2;
    l1 = self.box_CharacterLoadedIdListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|793268353", "793268353", "UNI42_020_BRIEF", "box_ActivityInitialized_2.Out", "box_CharacterLoadedIdListener_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_30_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_32();
    l0 = self.box_EntityStatusListener_30;
    l1 = self.box_MultipleAND_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|778171259", "778171259", "UNI42_020_BRIEF", "box_EntityStatusListener_30.Loaded", "box_MultipleAND_v2_32.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_15_Aborted()
    local l0, l1;
    l0 = self.box_Brick_NarrativeQuickCinema_V3_15;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1983618073", "1983618073", "UNI42_020_BRIEF", "box_Brick_NarrativeQuickCinema_V3_15.Aborted", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_15_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_15;
    l1 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|2128849574", "2128849574", "UNI42_020_BRIEF", "box_Brick_NarrativeQuickCinema_V3_15.Finished", "box_Delay_v5_1.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_22();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1815967298", "1815967298", "UNI42_020_BRIEF", "box_OutputOrder_v2_26.Out", "box_IsEntityLoaded_v3_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_24();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|396465981", "396465981", "UNI42_020_BRIEF", "box_OutputOrder_v2_26.Out", "box_IsEntityLoaded_v3_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_28();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|2056586576", "2056586576", "UNI42_020_BRIEF", "box_OutputOrder_v2_26.Out", "box_IsEntityLoaded_v3_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_27_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_25();
    l0 = self.box_EntityStatusListener_27;
    l1 = self.box_SpawnAI_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|619250313", "619250313", "UNI42_020_BRIEF", "box_EntityStatusListener_27.Loaded", "box_SpawnAI_25.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_27();
    l0 = self.box_MultipleAND_v2_23;
    l1 = self.box_EntityStatusListener_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|347945616", "347945616", "UNI42_020_BRIEF", "box_MultipleAND_v2_23.Out", "box_EntityStatusListener_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_35_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|436995048", "436995048", "UNI42_020_BRIEF", "box_UseContextualActionModifier_v3_35.Enabled", "box_Delay_v5_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1751300760", "1751300760", "UNI42_020_BRIEF", "box_MultipleOR_5.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1653438712", "1653438712", "UNI42_020_BRIEF", "box_Delay_v5_34.TimeElapsed", "box_UseContextualActionModifier_v3_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_16();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1940988671", "1940988671", "UNI42_020_BRIEF", "box_MultipleOR_7.Out", "box_ActivityRetry_16.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    l0 = self.box_Delay_v5_33;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|325057811", "325057811", "UNI42_020_BRIEF", "box_Delay_v5_33.TimeElapsed", "box_UseContextualActionModifier_v3_35.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_MultipleAND_v2_9;
    l1 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1772682921", "1772682921", "UNI42_020_BRIEF", "box_MultipleAND_v2_9.Out", "box_Delay_v5_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_20_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|276107355", "276107355", "UNI42_020_BRIEF", "box_UseContextualActionModifier_v3_20.Enabled", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_17_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_9();
    l0 = self.box_EntityStatusListener_17;
    l1 = self.box_MultipleAND_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|371150558", "371150558", "UNI42_020_BRIEF", "box_EntityStatusListener_17.Loaded", "box_MultipleAND_v2_9.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_IsEntityLoaded_v3_28_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1543181479", "1543181479", "UNI42_020_BRIEF", "box_IsEntityLoaded_v3_28.False", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_29();
    l0 = self.box_CharacterLoadedIdListener_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|823891616", "823891616", "UNI42_020_BRIEF", "box_OutputOrder_v2_31.Out", "box_CharacterLoadedIdListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_30();
    l0 = self.box_EntityStatusListener_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1111445110", "1111445110", "UNI42_020_BRIEF", "box_OutputOrder_v2_31.Out", "box_EntityStatusListener_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_10_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_10_LoadedIdReceived();
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V3_15();
    l0 = self.box_CharacterLoadedIdListener_10;
    l1 = self.box_Brick_NarrativeQuickCinema_V3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1031856741", "1031856741", "UNI42_020_BRIEF", "box_CharacterLoadedIdListener_10.LoadedIdReceived", "box_Brick_NarrativeQuickCinema_V3_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_18();
    l0 = self.box_CharacterLoadedIdListener_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1744190103", "1744190103", "UNI42_020_BRIEF", "box_OutputOrder_v2_13.Out", "box_CharacterLoadedIdListener_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_17();
    l0 = self.box_EntityStatusListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|205201178", "205201178", "UNI42_020_BRIEF", "box_OutputOrder_v2_13.Out", "box_EntityStatusListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = self.box_Delay_v5_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|759899792", "759899792", "UNI42_020_BRIEF", "box_Delay_v5_1.TimeElapsed", "box_ActivityEnd_3.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_20();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|198107092", "198107092", "UNI42_020_BRIEF", "box_Delay_v5_19.TimeElapsed", "box_UseContextualActionModifier_v3_20.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_8_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1674734521", "1674734521", "UNI42_020_BRIEF", "box_ActivityAcknowledgeGate_8.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_8_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|862392465", "862392465", "UNI42_020_BRIEF", "box_ActivityAcknowledgeGate_8.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_22_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|2019826285", "2019826285", "UNI42_020_BRIEF", "box_IsEntityLoaded_v3_22.False", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|568406397", "568406397", "UNI42_020_BRIEF", "box_OutputOrder_v2_6.Out", "box_Print_v2_4.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|688368527", "688368527", "UNI42_020_BRIEF", "box_OutputOrder_v2_6.Out", "box_ActivityAcknowledgeGate_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1791977391", "1791977391", "UNI42_020_BRIEF", "box_OutputOrder_v2_6.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|525281440", "525281440", "UNI42_020_BRIEF", "box_OutputOrder_v2_6.Out", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1975797521", "1975797521", "UNI42_020_BRIEF", "box_OutputOrder_v2_6.Out", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_20();
    l0 = self.box_Delay_v5_21;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|353181604", "353181604", "UNI42_020_BRIEF", "box_Delay_v5_21.TimeElapsed", "box_UseContextualActionModifier_v3_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_18_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_18_LoadedIdReceived();
    params = self:OnEnter_box_MultipleAND_v2_9();
    l0 = self.box_CharacterLoadedIdListener_18;
    l1 = self.box_MultipleAND_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|516934967", "516934967", "UNI42_020_BRIEF", "box_CharacterLoadedIdListener_18.LoadedIdReceived", "box_MultipleAND_v2_9.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:OnEnter_box_IsEntityLoaded_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|137427286");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_24_False,
    });
    params = {
        -- entityId,
        [0] = "2099919886133236970",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_32()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206726903599",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100220539118321727",
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V3_15()
    local params;
    params = {
        -- eNPC,
        [0] = self.eSenior_NPC,
        -- eQCA_STP,
        [1] = "2099890268703557167",
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "UNI42_020_BRIEF_TalkToSenior",
            id = "550397",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|416321629");
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

function export:OnEnter_box_SpawnAI_25()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101538712597837164",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|589336435");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 7,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNI42_020_BRIEF script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|629408517");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
            },
            count = 3,
        },
    });
    params = {
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
        [2] = "2101538712597837164",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_23()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|868426700");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_35_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100220539118321727",
        -- Entity,
        [1] = self.eSenior_NPC,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_9()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1343059756");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_20_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101539449138589156",
        -- Entity,
        [1] = self.eJunior_NPC,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101539449138589156",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1385331710");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_28_False,
    });
    params = {
        -- entityId,
        [0] = "2100118268713915611",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1484139375");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206726903599",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1577400158");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_1()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1797951230");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_22_False,
    });
    params = {
        -- entityId,
        [0] = "2103856049271368959",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1986684993");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
                [3] = self.f_box_OutputOrder_v2_6_Out_3,
                [4] = self.f_box_OutputOrder_v2_6_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI42\\UNI42_020_BRIEF.domino|@UNI42_020_BRIEF|1992961159");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206727351417",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_29_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_29;
    self.eSenior_NPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_10_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_10;
    self.eSenior_NPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_18_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_18;
    self.eJunior_NPC = l0:GetDataOutValue(0);
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
