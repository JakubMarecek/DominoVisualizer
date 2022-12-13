LUAC,b -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni05/uni05_040/uni05_040_debrief.domino
-- User graph: UNI05_040_DEBRIEF_main
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProtectedLootItemModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_040/UNI05_040_DEBRIEF.UNI05_040_DEBRIEF_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/ProtectedLootItemModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddProtectedLootItem",
            },
            [1] = {
                name = "RemoveProtectedLootItem",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "LootItemID",
                type = "genericdb",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "RequiredQuantity",
                type = "int",
            },
        },
        dataInCount = 3,
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
    self._name = "UNI05_040_DEBRIEF_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main";
    self.eSkylar = nil;
    self.ePlayer = nil;
    self.playerGroup = nil;
    self.e_Client = nil;
    self.e_Host = nil;
    self.box_CharacterLoadedIdListener_5 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|27064372");
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
    self.box_RemoveEntity_v2_30 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|177426589");
    l0:SetConnections({
    });
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|299201731");
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
        [0] = self.f_box_MultipleOR_47_Out,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|322473520");
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
    self.box_Brick_NarrativeQuickCinema_V4_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V4_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V4_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|436919138");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V4_6_Finished,
    });
    self.box_ProtectedLootItemModifier_v3_45 = cbox:CreateBox("Domino/System/ProtectedLootItemModifier_v3.lua");
    l0 = self.box_ProtectedLootItemModifier_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProtectedLootItemModifier_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|524204538");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ProtectedLootItemModifier_v3_45_Removed,
    });
    self.box_EntityStatusListener_20 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|559666729");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_20_Loaded,
    });
    self.box_MultipleAND_v2_21 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|636341476");
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
        [0] = self.f_box_MultipleAND_v2_21_Out,
    });
    self.box_RemoveEntity_v2_25 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|762964408");
    l0:SetConnections({
    });
    self.box_InventoryItemModifier_40 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|852469546");
    l0:SetConnections({
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1020720602");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1081970060");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_RemoveEntity_v2_10 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1307062769");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_46 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1423751300");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_46_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_46_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_46_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_46_TwoPlayers,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1491416764");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_RemoveEntity_v2_9 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1501631130");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_18 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1502282918");
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
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1544637620");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1580934119");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_RemoveEntity_v2_27 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1706582224");
    l0:SetConnections({
    });
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1791361766");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_InventoryItemModifier_43 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1792378077");
    l0:SetConnections({
    });
    self.box_StartCelebration_51 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1803346848");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_51_Ended,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|2120622401");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|601002096", "601002096", "UNI05_040_DEBRIEF_main", "In", "box_OutputOrder_v2_12.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|253520057", "253520057", "UNI05_040_DEBRIEF_main", "OnLeaveZone", "box_ActivityRetry_17.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_32_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|674469774", "674469774", "UNI05_040_DEBRIEF_main", "box_GetActivityFact_32.FactSet", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CharacterLoadedIdListener_5_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_5_LoadedIdReceived();
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V4_6();
    l0 = self.box_CharacterLoadedIdListener_5;
    l1 = self.box_Brick_NarrativeQuickCinema_V4_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|61298028", "61298028", "UNI05_040_DEBRIEF_main", "box_CharacterLoadedIdListener_5.LoadedIdReceived", "box_Brick_NarrativeQuickCinema_V4_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_GetActivityFact_33_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|2043276307", "2043276307", "UNI05_040_DEBRIEF_main", "box_GetActivityFact_33.FactSet", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityFact_35_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1761755493", "1761755493", "UNI05_040_DEBRIEF_main", "box_GetActivityFact_35.FactSet", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_40();
    l0 = self.box_MultipleOR_47;
    l1 = self.box_InventoryItemModifier_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1099438231", "1099438231", "UNI05_040_DEBRIEF_main", "box_MultipleOR_47.Out", "box_InventoryItemModifier_40.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1147916344", "1147916344", "UNI05_040_DEBRIEF_main", "box_MultipleOR_2.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_IsEntityLoaded_v3_14_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_10();
    l0 = self.box_RemoveEntity_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1882280199", "1882280199", "UNI05_040_DEBRIEF_main", "box_IsEntityLoaded_v3_14.True", "box_RemoveEntity_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_6_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_7();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_6;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1215765479", "1215765479", "UNI05_040_DEBRIEF_main", "box_Brick_NarrativeQuickCinema_V4_6.Finished", "box_UseContextualActionModifier_v3_7.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProtectedLootItemModifier_v3_45_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_ProtectedLootItemModifier_v3_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|804551870", "804551870", "UNI05_040_DEBRIEF_main", "box_ProtectedLootItemModifier_v3_45.Removed", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_20_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_EntityStatusListener_20;
    l1 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|998770049", "998770049", "UNI05_040_DEBRIEF_main", "box_EntityStatusListener_20.Loaded", "box_MultipleAND_v2_21.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_14();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|208320355", "208320355", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_4.Out", "box_IsEntityLoaded_v3_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_15();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|388529761", "388529761", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_4.Out", "box_IsEntityLoaded_v3_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_26();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1228880181", "1228880181", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_4.Out", "box_IsEntityLoaded_v3_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_28();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|738814814", "738814814", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_4.Out", "box_IsEntityLoaded_v3_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1459706211", "1459706211", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_4.Out", "box_Delay_v5_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_19();
    l0 = self.box_MultipleAND_v2_21;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|2031395235", "2031395235", "UNI05_040_DEBRIEF_main", "box_MultipleAND_v2_21.Out", "box_UseContextualActionModifier_v3_19.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_39_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1547178260", "1547178260", "UNI05_040_DEBRIEF_main", "box_GetActivityFact_39.FactSet", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_UseContextualActionModifier_v3_23_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_30();
    l0 = self.box_RemoveEntity_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|825341725", "825341725", "UNI05_040_DEBRIEF_main", "box_UseContextualActionModifier_v3_23.Disabled", "box_RemoveEntity_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_23_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1525227586", "1525227586", "UNI05_040_DEBRIEF_main", "box_UseContextualActionModifier_v3_23.ForceNormalEndCalled", "box_Delay_v5_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_15_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_9();
    l0 = self.box_RemoveEntity_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|11075676", "11075676", "UNI05_040_DEBRIEF_main", "box_IsEntityLoaded_v3_15.True", "box_RemoveEntity_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1758301669", "1758301669", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_12.Out", "box_ActivityAcknowledgeGate_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_18();
    l0 = self.box_CharacterLoadedIdListener_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|2019455693", "2019455693", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_12.Out", "box_CharacterLoadedIdListener_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_20();
    l0 = self.box_EntityStatusListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|831980104", "831980104", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_24();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|288290859", "288290859", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_12.Out", "box_IsEntityLoaded_v3_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|505643038", "505643038", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_12.Out", "box_CoopActivePlayers_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_MultipleOR_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_8();
    l0 = self.box_MultipleOR_44;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1105813078", "1105813078", "UNI05_040_DEBRIEF_main", "box_MultipleOR_44.Out", "box_IsValueNil_v3_8.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_26_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_25();
    l0 = self.box_RemoveEntity_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|2126212413", "2126212413", "UNI05_040_DEBRIEF_main", "box_IsEntityLoaded_v3_26.True", "box_RemoveEntity_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_42_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_42;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1260755351", "1260755351", "UNI05_040_DEBRIEF_main", "box_MultipleOR_42.Out", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_8_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_43();
    l0 = self.box_InventoryItemModifier_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|17288737", "17288737", "UNI05_040_DEBRIEF_main", "box_IsValueNil_v3_8.No", "box_InventoryItemModifier_43.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(3, params);
end;

function export:f_box_IsValueNil_v3_8_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|690502794", "690502794", "UNI05_040_DEBRIEF_main", "box_IsValueNil_v3_8.Yes", "box_MultipleOR_47.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_24_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|117050214", "117050214", "UNI05_040_DEBRIEF_main", "box_IsEntityLoaded_v3_24.True", "box_UseContextualActionModifier_v3_23.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_7_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProtectedLootItemModifier_v3_45();
    l0 = self.box_ProtectedLootItemModifier_v3_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|840006535", "840006535", "UNI05_040_DEBRIEF_main", "box_UseContextualActionModifier_v3_7.UseCalled", "box_ProtectedLootItemModifier_v3_45.RemoveProtectedLootItem", clone:GetLuaBox(), l0:GetLuaBox());
    -- RemoveProtectedLootItem
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_28_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_27();
    l0 = self.box_RemoveEntity_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|2080541631", "2080541631", "UNI05_040_DEBRIEF_main", "box_IsEntityLoaded_v3_28.True", "box_RemoveEntity_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_46_OnePlayer()
    self:OnExit_box_CoopActivePlayers_46_OnePlayer();
end;

function export:f_box_CoopActivePlayers_46_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = self.box_CoopActivePlayers_46;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|2045987713", "2045987713", "UNI05_040_DEBRIEF_main", "box_CoopActivePlayers_46.PlayerAdded", "box_Simple_Node_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_46_TwoPlayers()
    self:OnExit_box_CoopActivePlayers_46_TwoPlayers();
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|161934621", "161934621", "UNI05_040_DEBRIEF_main", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|405167187", "405167187", "UNI05_040_DEBRIEF_main", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CharacterLoadedIdListener_18_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_18_LoadedIdReceived();
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_CharacterLoadedIdListener_18;
    l1 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|963315384", "963315384", "UNI05_040_DEBRIEF_main", "box_CharacterLoadedIdListener_18.LoadedIdReceived", "box_MultipleAND_v2_21.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_11();
    l0 = self.box_Delay_v5_13;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|379133950", "379133950", "UNI05_040_DEBRIEF_main", "box_Delay_v5_13.TimeElapsed", "box_ActivityEnd_11.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_19_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|775776367", "775776367", "UNI05_040_DEBRIEF_main", "box_UseContextualActionModifier_v3_19.Enabled", "box_Delay_v5_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_5();
    l0 = self.box_ActivityInitialized_3;
    l1 = self.box_CharacterLoadedIdListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1879607582", "1879607582", "UNI05_040_DEBRIEF_main", "box_ActivityInitialized_3.Out", "box_CharacterLoadedIdListener_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetActivityFact_37_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1889392287", "1889392287", "UNI05_040_DEBRIEF_main", "box_GetActivityFact_37.FactSet", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_19();
    l0 = self.box_Delay_v5_22;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|711957970", "711957970", "UNI05_040_DEBRIEF_main", "box_Delay_v5_22.TimeElapsed", "box_UseContextualActionModifier_v3_19.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_51_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_StartCelebration_51;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1684221013", "1684221013", "UNI05_040_DEBRIEF_main", "box_StartCelebration_51.Ended", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_38_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|761410213", "761410213", "UNI05_040_DEBRIEF_main", "box_GetActivityFact_38.FactSet", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_32();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|27662466", "27662466", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_34.Out", "box_GetActivityFact_32.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_37();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|2050634503", "2050634503", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_34.Out", "box_GetActivityFact_37.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_39();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|153182754", "153182754", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_34.Out", "box_GetActivityFact_39.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|89364357", "89364357", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_34.Out", "box_GetActivityFact_33.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_35();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|997527508", "997527508", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_34.Out", "box_GetActivityFact_35.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_38();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1570567565", "1570567565", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_34.Out", "box_GetActivityFact_38.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_51();
    l0 = self.box_StartCelebration_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1375082082", "1375082082", "UNI05_040_DEBRIEF_main", "box_OutputOrder_v2_34.Out", "box_StartCelebration_51.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    l0 = self.box_Delay_v5_29;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|2126631375", "2126631375", "UNI05_040_DEBRIEF_main", "box_Delay_v5_29.TimeElapsed", "box_UseContextualActionModifier_v3_23.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_GetActivityFact_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|7732612");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_32_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015183910706983",
        -- Fact,
        [1] = "HOST_HAS_FISH",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015183791252927",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|95464041");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_33_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015183910706983",
        -- Fact,
        [1] = "CLIENT_HAS_FISH",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|151378371");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_35_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015183910714505",
        -- Fact,
        [1] = "CLIENT_HAS_FISH",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_30()
    local params;
    params = {
        -- Group,
        [0] = "2101191185251968942",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|335458926");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_14_True,
    });
    params = {
        -- entityId,
        [0] = "2100223549892467623",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|356218368");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V4_6()
    local params;
    params = {
        -- eNPC,
        [0] = self.eSkylar,
        -- Interrupt STP on Talk,
        [1] = false,
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "UNI05_040_DEBRIEF_ReturnToSkylar",
            id = "408969",
        },
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|472602376");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProtectedLootItemModifier_v3_45()
    local params;
    params = {
        -- LootItemID,
        [0] = "9015292644306574",
        -- pawns,
        [1] = "#ED455357",
        -- RequiredQuantity,
        [2] = 1,
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
        [2] = "2104467084447598589",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|559692246");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
                [3] = self.f_box_OutputOrder_v2_4_Out_3,
                [4] = self.f_box_OutputOrder_v2_4_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_21()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|674033979");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_39_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015183910720872",
        -- Fact,
        [1] = "HOST_HAS_FISH",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|697499167");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_23_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_23_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101191185251968942",
        -- Entity,
        [1] = self.eSkylar,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_25()
    local params;
    params = {
        -- Group,
        [0] = "2103774970271261108",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_40()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015292644306574",
        -- players,
        [2] = self.e_Host,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|910107025");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_15_True,
    });
    params = {
        -- entityId,
        [0] = "2103774982929670582",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|987773741");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
                [3] = self.f_box_OutputOrder_v2_12_Out_3,
                [4] = self.f_box_OutputOrder_v2_12_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1080224462");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_26_True,
    });
    params = {
        -- entityId,
        [0] = "2103774970271261108",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1183187048");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_8_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_8_Yes,
    });
    params = {
        -- ent,
        [4] = self.e_Client,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1187513834");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_24_True,
    });
    params = {
        -- entityId,
        [0] = "2101191185251968942",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_10()
    local params;
    params = {
        -- Group,
        [0] = "2100223549892467623",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_7()
    local params, l0;
    DrawTextToScreen("Comment: Immediately force Skylar back to Drink Beer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UseContextualActionModifier_v3')-- Comment: Immediately force Skylar back to Drink Beer");
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1354471648");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_7_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104467084447598589",
        -- Entity,
        [1] = self.eSkylar,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1416458012");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_28_True,
    });
    params = {
        -- entityId,
        [0] = "2103774982929670581",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_9()
    local params;
    params = {
        -- Group,
        [0] = "2103774982929670582",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015183791252927",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1555224955");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_19_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104467084447598589",
        -- Entity,
        [1] = self.eSkylar,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1679122995");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_37_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015183910714505",
        -- Fact,
        [1] = "HOST_HAS_FISH",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_27()
    local params;
    params = {
        -- Group,
        [0] = "2103774982929670581",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_43()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015292644306574",
        -- players,
        [2] = self.e_Client,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_51()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1909317524");
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

function export:OnEnter_box_GetActivityFact_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|1949109443");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_38_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015183910720872",
        -- Fact,
        [1] = "CLIENT_HAS_FISH",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_DEBRIEF.domino|@UNI05_040_DEBRIEF_main|2004713887");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
                [3] = self.f_box_OutputOrder_v2_34_Out_3,
                [4] = self.f_box_OutputOrder_v2_34_Out_4,
                [5] = self.f_box_OutputOrder_v2_34_Out_5,
                [6] = self.f_box_OutputOrder_v2_34_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_5_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_5;
    self.eSkylar = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_46_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_46;
    self.e_Host = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_46_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_46;
    self.e_Host = l0:GetDataOutValue(0);
    self.e_Client = l0:GetDataOutValue(1);
end;

function export:OnExit_box_CharacterLoadedIdListener_18_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_18;
    self.eSkylar = l0:GetDataOutValue(0);
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
