LUAC4 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni50/uni50_020/uni50_020_brief.domino
-- User graph: UNI_50_020_BRIEF
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_CustomAttractLines.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_FakeAwareness.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[58981854.bnk]], "CSoundResource");
        cboxRes:LoadResource([[767292449.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3185151417.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1419762754.bnk]], "CSoundResource");
        cboxRes:LoadResource([[831355077.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_BRIEF.UNI_50_020_BRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
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
    self._name = "UNI_50_020_BRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF";
    self.Earl_Whitehorse = nil;
    self.Player_Group = nil;
    self.LineID = 0;
    self.box_CharacterLoadedIdListener_5 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|28104584");
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
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|347580657");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_ContextualActionListener_34 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|403291086");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_34_Start,
    });
    self.box_Realization_FakeAwareness_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_FakeAwareness.debug.lua");
    l0 = self.box_Realization_FakeAwareness_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Realization_FakeAwareness_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|445439362");
    l0:SetConnections({
        -- Aware,
        [0] = self.f_box_Realization_FakeAwareness_14_Aware,
        -- Disabled,
        [2] = self.f_box_Realization_FakeAwareness_14_Disabled,
        -- Started,
        [3] = self.f_box_Realization_FakeAwareness_14_Started,
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|548543525");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_SpawnAI_24 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|805839022");
    l0:SetConnections({
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1009538039");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_Delay_v5_32 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1028710266");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_32_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1063985519");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1072555851");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_Brick_NarrativeQuickCinema_V4_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V4_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V4_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1681138924");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_Brick_NarrativeQuickCinema_V4_9_Enabled,
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V4_9_Finished,
        -- Started,
        [5] = self.f_box_Brick_NarrativeQuickCinema_V4_9_Started,
    });
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1721370454");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
    });
    self.box_Gate_v3_38 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1725557621");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_38_Out,
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1737596915");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_ProximityRadiusListener_v3_20 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1752096074");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_20_SomeoneNear,
    });
    self.box_OnceOnly_v3_40 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1761113818");
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
                [0] = self.f_box_OnceOnly_v3_40_Out_0,
            },
            count = 2,
        },
    });
    self.box_Realization_CustomAttractLines_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_CustomAttractLines.debug.lua");
    l0 = self.box_Realization_CustomAttractLines_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Realization_CustomAttractLines_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1819330271");
    l0:SetConnections({
        -- Ended,
        [1] = self.f_box_Realization_CustomAttractLines_15_Ended,
    });
    self.box_SpawnAI_25 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1874086986");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_5();
    l0 = self.box_CharacterLoadedIdListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1224026932", "1224026932", "UNI_50_020_BRIEF", "In", "box_CharacterLoadedIdListener_5.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_38();
    l0 = self.box_Gate_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|921326414", "921326414", "UNI_50_020_BRIEF", "box_Simple_Node_42.Out", "box_Gate_v3_38.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Realization_FakeAwareness_14();
    l0 = self.box_Realization_FakeAwareness_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1385363332", "1385363332", "UNI_50_020_BRIEF", "box_Simple_Node_41.Out", "box_Realization_FakeAwareness_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_5_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_5_LoadedIdReceived();
    params = self:OnEnter_box_UseContextualActionModifier_v3_31();
    l0 = self.box_CharacterLoadedIdListener_5;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|315534116", "315534116", "UNI_50_020_BRIEF", "box_CharacterLoadedIdListener_5.LoadedIdReceived", "box_UseContextualActionModifier_v3_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_23_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1527334740", "1527334740", "UNI_50_020_BRIEF", "box_UseContextualActionModifier_v3_23.Enabled", "box_UseContextualActionModifier_v3_23.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_23_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|480646226", "480646226", "UNI_50_020_BRIEF", "box_UseContextualActionModifier_v3_23.UseCalled", "box_ActivityEnd_2.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_30();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|921654804", "921654804", "UNI_50_020_BRIEF", "box_OutputOrder_v2_35.Out", "box_GetPlayerGroup_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_32();
    l0 = self.box_Delay_v5_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1932575786", "1932575786", "UNI_50_020_BRIEF", "box_OutputOrder_v2_35.Out", "box_Delay_v5_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_35_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_43();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1608849465", "1608849465", "UNI_50_020_BRIEF", "box_OutputOrder_v2_35.Out", "box_UseContextualActionModifier_v3_43.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1247546125", "1247546125", "UNI_50_020_BRIEF", "box_OutputOrder_v2_21.Out", "box_Delay_v5_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|103450728", "103450728", "UNI_50_020_BRIEF", "box_OutputOrder_v2_21.Out", "box_ActivityAcknowledgeGate_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|2035426459", "2035426459", "UNI_50_020_BRIEF", "box_OutputOrder_v2_21.Out", "box_EntityStatusListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|812631053", "812631053", "UNI_50_020_BRIEF", "box_OutputOrder_v2_21.Out", "box_EntityStatusListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_44();
    l0 = self.box_Delay_v5_17;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1361628374", "1361628374", "UNI_50_020_BRIEF", "box_Delay_v5_17.TimeElapsed", "box_UseContextualActionModifier_v3_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_34_Start()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_20();
    l0 = self.box_ContextualActionListener_34;
    l1 = self.box_ProximityRadiusListener_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1257149318", "1257149318", "UNI_50_020_BRIEF", "box_ContextualActionListener_34.Start", "box_ProximityRadiusListener_v3_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_44_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Realization_FakeAwareness_14();
    l0 = self.box_Realization_FakeAwareness_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|2005840580", "2005840580", "UNI_50_020_BRIEF", "box_UseContextualActionModifier_v3_44.Enabled", "box_Realization_FakeAwareness_14.MediumRange5_10m", clone:GetLuaBox(), l0:GetLuaBox());
    -- MediumRange5_10m
    l0:Exec(3, params);
end;

function export:f_box_Realization_FakeAwareness_14_Aware()
    local l0, l1;
    l0 = self.box_Realization_FakeAwareness_14;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|721183960", "721183960", "UNI_50_020_BRIEF", "box_Realization_FakeAwareness_14.Aware", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Realization_FakeAwareness_14_Disabled()
    local l0, l1;
    l0 = self.box_Realization_FakeAwareness_14;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|526816385", "526816385", "UNI_50_020_BRIEF", "box_Realization_FakeAwareness_14.Disabled", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Realization_FakeAwareness_14_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_34();
    l0 = self.box_Realization_FakeAwareness_14;
    l1 = self.box_ContextualActionListener_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|956403248", "956403248", "UNI_50_020_BRIEF", "box_Realization_FakeAwareness_14.Started", "box_ContextualActionListener_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_37_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_37();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1432394066", "1432394066", "UNI_50_020_BRIEF", "box_UseContextualActionModifier_v3_37.Enabled", "box_UseContextualActionModifier_v3_37.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_37_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|2103293318", "2103293318", "UNI_50_020_BRIEF", "box_UseContextualActionModifier_v3_37.UseCalled", "box_Simple_Node_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V4_9();
    l0 = self.box_ActivityInitialized_6;
    l1 = self.box_Brick_NarrativeQuickCinema_V4_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|936521996", "936521996", "UNI_50_020_BRIEF", "box_ActivityInitialized_6.Out", "box_Brick_NarrativeQuickCinema_V4_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_31_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_31();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1184444966", "1184444966", "UNI_50_020_BRIEF", "box_UseContextualActionModifier_v3_31.Enabled", "box_UseContextualActionModifier_v3_31.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_31_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1992458317", "1992458317", "UNI_50_020_BRIEF", "box_UseContextualActionModifier_v3_31.UseCalled", "box_OutputOrder_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1970246358", "1970246358", "UNI_50_020_BRIEF", "box_MultipleOR_4.Out", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_32_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = self.box_Delay_v5_32;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|528042981", "528042981", "UNI_50_020_BRIEF", "box_Delay_v5_32.TimeElapsed", "box_UseContextualActionModifier_v3_33.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|491875185", "491875185", "UNI_50_020_BRIEF", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1332745429", "1332745429", "UNI_50_020_BRIEF", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_38();
    l0 = self.box_MultipleOR_10;
    l1 = self.box_Gate_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1291063608", "1291063608", "UNI_50_020_BRIEF", "box_MultipleOR_10.Out", "box_Gate_v3_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_39_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_37();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|863151645", "863151645", "UNI_50_020_BRIEF", "box_UseContextualActionModifier_v3_39.Disabled", "box_UseContextualActionModifier_v3_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1341871169", "1341871169", "UNI_50_020_BRIEF", "box_Brick_NarrativeQuickCinema_V4_9.Enabled", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_9_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_28();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_9;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1336430561", "1336430561", "UNI_50_020_BRIEF", "box_Brick_NarrativeQuickCinema_V4_9.Finished", "box_UseContextualActionModifier_v3_28.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_9_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_9;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|41272741", "41272741", "UNI_50_020_BRIEF", "box_Brick_NarrativeQuickCinema_V4_9.Started", "box_Simple_Node_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_8();
    l0 = self.box_EntityStatusListener_7;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|41341881", "41341881", "UNI_50_020_BRIEF", "box_EntityStatusListener_7.Loaded", "box_UseContextualActionModifier_v3_8.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Realization_CustomAttractLines_15();
    l0 = self.box_Gate_v3_38;
    l1 = self.box_Realization_CustomAttractLines_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1232605439", "1232605439", "UNI_50_020_BRIEF", "box_Gate_v3_38.Out", "box_Realization_CustomAttractLines_15.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_3();
    l0 = self.box_EntityStatusListener_13;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1818069298", "1818069298", "UNI_50_020_BRIEF", "box_EntityStatusListener_13.Loaded", "box_UseContextualActionModifier_v3_3.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_20_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Realization_CustomAttractLines_15();
    l0 = self.box_ProximityRadiusListener_v3_20;
    l1 = self.box_Realization_CustomAttractLines_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|328748659", "328748659", "UNI_50_020_BRIEF", "box_ProximityRadiusListener_v3_20.SomeoneNear", "box_Realization_CustomAttractLines_15.ShortDelay2_3s", l0:GetLuaBox(), l1:GetLuaBox());
    -- ShortDelay2_3s
    l1:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_40_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_36();
    l0 = self.box_OnceOnly_v3_40;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1845482987", "1845482987", "UNI_50_020_BRIEF", "box_OnceOnly_v3_40.Out", "box_UseContextualActionModifier_v3_36.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Realization_CustomAttractLines_15_Ended()
    local l0, l1;
    l0 = self.box_Realization_CustomAttractLines_15;
    l1 = self.box_OnceOnly_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|2136655334", "2136655334", "UNI_50_020_BRIEF", "box_Realization_CustomAttractLines_15.Ended", "box_OnceOnly_v3_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_30_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_30_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1678168979", "1678168979", "UNI_50_020_BRIEF", "box_GetPlayerGroup_v2_30.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_28_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1654085514", "1654085514", "UNI_50_020_BRIEF", "box_UseContextualActionModifier_v3_28.Disabled", "box_UseContextualActionModifier_v3_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_24();
    l0 = self.box_SpawnAI_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|572343330", "572343330", "UNI_50_020_BRIEF", "box_OutputOrder_v2_12.Out", "box_SpawnAI_24.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_25();
    l0 = self.box_SpawnAI_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|2000895826", "2000895826", "UNI_50_020_BRIEF", "box_OutputOrder_v2_12.Out", "box_SpawnAI_25.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_36_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_39();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|949764747", "949764747", "UNI_50_020_BRIEF", "box_UseContextualActionModifier_v3_36.Disabled", "box_UseContextualActionModifier_v3_39.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|@DISABLE QCA");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|@Disabler");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_41_Out,
    });
    params = {
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

function export:OnEnter_box_UseContextualActionModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|61375065");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_23_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_23_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103661398488795924",
        -- Entity,
        [1] = self.Earl_Whitehorse,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|89500670");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
                [2] = self.f_box_OutputOrder_v2_35_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|132974015");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|189506972");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
                [2] = self.f_box_OutputOrder_v2_21_Out_2,
                [3] = self.f_box_OutputOrder_v2_21_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_34()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103661398488795924",
        -- UserFilter,
        [1] = self.Earl_Whitehorse,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|438779018");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_44_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104518919862635895",
    };
    return params;
end;

function export:OnEnter_box_Realization_FakeAwareness_14()
    local params;
    params = {
        -- NPC,
        [0] = self.Earl_Whitehorse,
        -- STP_Aware_Optional,
        [1] = "2099998059105628628",
        -- STP_Original,
        [2] = "2103661398488795924",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|473934525");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_37_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_37_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104949655893734571",
        -- Entity,
        [1] = self.Earl_Whitehorse,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_24()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102613428962087326",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|882205267");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_31_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_31_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103661398488795924",
        -- Entity,
        [1] = self.Earl_Whitehorse,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_32()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1155575458");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2099998059105628628",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1305881978");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104466747382830230",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1313891499");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_39_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099998059105628628",
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V4_9()
    local params;
    params = {
        -- eNPC,
        [0] = self.Earl_Whitehorse,
        -- Interrupt STP on Talk,
        [1] = true,
        -- oObjective,
        [2] = {
            section = "Brick_FreeNPC",
            item = "BRICK_FreeNPC_Obj_Main",
            id = "533114",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104466747382830230",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_38()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102601028122712745",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Player_Group,
        -- id2,
        [3] = self.Earl_Whitehorse,
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Realization_CustomAttractLines_15()
    local params;
    params = {
        -- eNPC,
        [0] = self.Earl_Whitehorse,
        -- LoopLines,
        [1] = false,
        -- RandomLineOrder,
        [2] = false,
        -- SoundID_01,
        [3] = "3185151417",
        -- SoundID_02,
        [4] = "767292449",
        -- SoundID_03,
        [5] = "1419762754",
        -- SoundID_04,
        [6] = "58981854",
        -- SoundID_05,
        [7] = "831355077",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1873451463");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_25()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102613424457404786",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1938606652");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_28_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099998059105628628",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1949299049");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|1952988476");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102601028122712745",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|2015824065");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104466747382830230",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_BRIEF.domino|@UNI_50_020_BRIEF|2056455588");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_36_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103661398488795924",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_5_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_5;
    self.Earl_Whitehorse = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Player_Group = l0:GetDataOutValue(0);
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
