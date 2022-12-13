LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_450/mis_450_debrief.domino
-- User graph: MIS_450_DEBRIEF_graph
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_FakeAwareness.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SaveOpenWorld.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2820544222.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2604139666.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/mis_450/MIS_450_DEBRIEF.MIS_450_DEBRIEF_graph.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua")] = {
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
                name = "bCheckAmountInInventory",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [4] = {
                name = "LootItemID",
                type = "genericdb",
            },
            [5] = {
                name = "MarkerTypeId",
                type = "database",
            },
            [6] = {
                name = "Objective",
                type = "oasis",
            },
            [7] = {
                name = "opt_eMarker",
                type = "entity",
            },
            [8] = {
                name = "ProtectItemOnSuccess",
                type = "bool",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua")] = {
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
                name = "LineStarted",
                delayed = true,
            },
            [4] = {
                name = "OasisLineStarted",
                delayed = true,
            },
            [5] = {
                name = "Paused",
                delayed = true,
            },
            [6] = {
                name = "Resumed",
                delayed = true,
            },
            [7] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "b_IsNPCPersistentCharacter",
                type = "bool",
            },
            [1] = {
                name = "b_WaitForConvoEndOnSkip",
                type = "bool",
            },
            [2] = {
                name = "CheckedOasisID",
                type = "int",
            },
            [3] = {
                name = "e_MobileObjectiveMarker",
                type = "entity",
            },
            [4] = {
                name = "eNPC",
                type = "entity",
            },
            [5] = {
                name = "Interrupt_STP_on_Talk",
                type = "bool",
            },
            [6] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "TriggeredLineId",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CIN_Skip",
            },
            [1] = {
                name = "Start",
            },
            [2] = {
                name = "Start_Reset_MIS_Attacked",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Box_Skipped",
                delayed = false,
            },
            [1] = {
                name = "CIN_Skipped",
                delayed = false,
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
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "MUS_MIS_Step",
                type = "int",
            },
            [3] = {
                name = "Priority",
                type = "int",
            },
            [4] = {
                name = "SoundType",
                type = "SoundType",
            },
            [5] = {
                name = "Stackable",
                type = "bool",
            },
            [6] = {
                name = "StartEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopEvent",
                type = "Sound",
            },
            [8] = {
                name = "StopFadeOut",
                type = "float",
            },
            [9] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [10] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 11,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")] = {
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
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                type = "genericdb",
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
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/GFHSystemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableGFHSystem",
            },
            [1] = {
                name = "EnableGFHSystem",
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "enableAfterBeat",
                type = "bool",
            },
            [1] = {
                name = "immediateDespawn",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SaveOpenWorld.lua")] = {
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
    self._name = "MIS_450_DEBRIEF_graph";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph";
    self.Players = nil;
    self.Quebecois = nil;
    self.MetaSequenceID = 0;
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|6939101");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|211419569");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|217833515");
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
    self.box_Realization_FakeAwareness_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_FakeAwareness.debug.lua");
    l0 = self.box_Realization_FakeAwareness_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Realization_FakeAwareness_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|231685804");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_Realization_FakeAwareness_11_Disabled,
    });
    self.box_CharacterLoadedIdListener_v2_25 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|290744868");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_25_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_25_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_25_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_25_LoadedIdReceived,
    });
    self.box_Brick_NarrativeQuickCinema_V7_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V7_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V7_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|389399472");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V7_8_Finished,
    });
    self.box_Music_Quest_v2_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|588313310");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_v2_9 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1021203854");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_9_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_9_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_9_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_9_LoadedIdReceived,
    });
    self.box_GunsForHireSystemModifier_15 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1022628959");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_15_Enabled,
    });
    self.box_StartCelebration_4 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1221106770");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_4_Ended,
    });
    self.box_Brick_AcquireObject_v6_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
    l0 = self.box_Brick_AcquireObject_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v6_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1285498122");
    l0:SetConnections({
        -- ItemsRemoved,
        [1] = self.f_box_Brick_AcquireObject_v6_10_ItemsRemoved,
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1342635373");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_PositionModifier_v2_18 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1487584799");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_20 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1959479637");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_20_Disabled,
    });
    self.box_GunsForHireSystemModifier_22 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1975780374");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_22_Enabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|68336420", "68336420", "MIS_450_DEBRIEF_graph", "In", "box_OutputOrder_v2_12.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_22();
    l0 = self.box_GunsForHireSystemModifier_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1778091838", "1778091838", "MIS_450_DEBRIEF_graph", "OnLeaveZone", "box_GunsForHireSystemModifier_22.EnableGFHSystem", self, l0:GetLuaBox());
    -- EnableGFHSystem
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1000326454", "1000326454", "MIS_450_DEBRIEF_graph", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1479097669", "1479097669", "MIS_450_DEBRIEF_graph", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_2();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|2056300846", "2056300846", "MIS_450_DEBRIEF_graph", "box_ActivityInitialized_5.Out", "box_GetPlayerGroup_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|2031137759", "2031137759", "MIS_450_DEBRIEF_graph", "box_MultipleOR_3.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Realization_FakeAwareness_11_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = self.box_Realization_FakeAwareness_11;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1332069113", "1332069113", "MIS_450_DEBRIEF_graph", "box_Realization_FakeAwareness_11.Disabled", "box_UseContextualActionModifier_v3_14.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SaveOpenWorldBox_24();
    l0 = Boxes[GetPathID("Domino/System/SaveOpenWorld.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1358945847", "1358945847", "MIS_450_DEBRIEF_graph", "box_SetActivityFact_21.Out", "box_SaveOpenWorldBox_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_25_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_25_LoadedIdReceived();
    params = self:OnEnter_box_Realization_FakeAwareness_11();
    l0 = self.box_CharacterLoadedIdListener_v2_25;
    l1 = self.box_Realization_FakeAwareness_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1350390015", "1350390015", "MIS_450_DEBRIEF_graph", "box_CharacterLoadedIdListener_v2_25.LoadedIdReceived", "box_Realization_FakeAwareness_11.MediumRange5_10m", l0:GetLuaBox(), l1:GetLuaBox());
    -- MediumRange5_10m
    l1:Exec(3, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_8_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|616787825", "616787825", "MIS_450_DEBRIEF_graph", "box_Brick_NarrativeQuickCinema_V7_8.Finished", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_9_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_9_LoadedIdReceived();
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V7_8();
    l0 = self.box_CharacterLoadedIdListener_v2_9;
    l1 = self.box_Brick_NarrativeQuickCinema_V7_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|654282402", "654282402", "MIS_450_DEBRIEF_graph", "box_CharacterLoadedIdListener_v2_9.LoadedIdReceived", "box_Brick_NarrativeQuickCinema_V7_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_GunsForHireSystemModifier_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_GunsForHireSystemModifier_15;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|175579099", "175579099", "MIS_450_DEBRIEF_graph", "box_GunsForHireSystemModifier_15.Enabled", "box_ActivityEnd_7.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_4_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_15();
    l0 = self.box_StartCelebration_4;
    l1 = self.box_GunsForHireSystemModifier_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1543208841", "1543208841", "MIS_450_DEBRIEF_graph", "box_StartCelebration_4.Ended", "box_GunsForHireSystemModifier_15.EnableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableGFHSystem
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_9();
    l0 = self.box_CharacterLoadedIdListener_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|106312780", "106312780", "MIS_450_DEBRIEF_graph", "box_GetPlayerGroup_v2_2.Out", "box_CharacterLoadedIdListener_v2_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Realization_FakeAwareness_11();
    l0 = self.box_Realization_FakeAwareness_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1413674007", "1413674007", "MIS_450_DEBRIEF_graph", "box_OutputOrder_v2_17.Out", "box_Realization_FakeAwareness_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v6_10();
    l0 = self.box_Brick_AcquireObject_v6_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|234802075", "234802075", "MIS_450_DEBRIEF_graph", "box_OutputOrder_v2_17.Out", "box_Brick_AcquireObject_v6_10.RemoveItemFromInventory", clone:GetLuaBox(), l0:GetLuaBox());
    -- RemoveItemFromInventory
    l0:Exec(1, params);
end;

function export:f_box_Brick_AcquireObject_v6_10_ItemsRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_4();
    l0 = self.box_Brick_AcquireObject_v6_10;
    l1 = self.box_StartCelebration_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|274323480", "274323480", "MIS_450_DEBRIEF_graph", "box_Brick_AcquireObject_v6_10.ItemsRemoved", "box_StartCelebration_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_18();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_PositionModifier_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|656476614", "656476614", "MIS_450_DEBRIEF_graph", "box_EntityStatusListener_13.Loaded", "box_PositionModifier_v2_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_14_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|576754096", "576754096", "MIS_450_DEBRIEF_graph", "box_UseContextualActionModifier_v3_14.Disabled", "box_UseContextualActionModifier_v3_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_20_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_21();
    l0 = self.box_GunsForHireSystemModifier_20;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1702733265", "1702733265", "MIS_450_DEBRIEF_graph", "box_GunsForHireSystemModifier_20.Disabled", "box_SetActivityFact_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_1();
    l0 = self.box_GunsForHireSystemModifier_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1000641090", "1000641090", "MIS_450_DEBRIEF_graph", "box_GunsForHireSystemModifier_22.Enabled", "box_ActivityRetry_v2_1.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|979820999", "979820999", "MIS_450_DEBRIEF_graph", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|949351560", "949351560", "MIS_450_DEBRIEF_graph", "box_OutputOrder_v2_12.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_25();
    l0 = self.box_CharacterLoadedIdListener_v2_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|635917099", "635917099", "MIS_450_DEBRIEF_graph", "box_OutputOrder_v2_12.Out", "box_CharacterLoadedIdListener_v2_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_19();
    l0 = self.box_Music_Quest_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|838244345", "838244345", "MIS_450_DEBRIEF_graph", "box_OutputOrder_v2_12.Out", "box_Music_Quest_v2_19.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_12_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_23();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|714789571", "714789571", "MIS_450_DEBRIEF_graph", "box_OutputOrder_v2_12.Out", "box_GetActivityFact_23.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_23_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_20();
    l0 = self.box_GunsForHireSystemModifier_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1038133956", "1038133956", "MIS_450_DEBRIEF_graph", "box_GetActivityFact_23.FactNotSet", "box_GunsForHireSystemModifier_20.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:OnEnter_box_Realization_FakeAwareness_11()
    local params;
    params = {
        -- NPC,
        [0] = self.Quebecois,
        -- STP_Aware_Optional,
        [1] = "2109497797746107281",
        -- STP_Original,
        [2] = "2108297341369847352",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|231746174");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_21_Out,
    });
    params = {
        -- Fact,
        [0] = "GFHDisabled",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328869770419",
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V7_8()
    local params;
    params = {
        -- b_IsNPCPersistentCharacter,
        [0] = true,
        -- b_WaitForConvoEndOnSkip,
        [1] = false,
        -- eNPC,
        [4] = self.Quebecois,
        -- Interrupt STP on Talk,
        [5] = false,
        -- oObjective,
        [6] = {
            section = "Objectives",
            item = "MIS_450_BRIEF_GOAL",
            id = "1025407",
        },
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|420783416");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2109497797746107281",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_19()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 3,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2820544222",
        -- StopEvent,
        [7] = "2604139666",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|713592559");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328869770419",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_15()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_4()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1255444930");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1275559337");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v6_10()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bCheckAmountInInventory,
        [1] = true,
        -- bRequiresObjective,
        [2] = true,
        -- CompletePreviousObjective,
        [3] = true,
        -- LootItemID,
        [4] = "9015349274280809",
        -- ProtectItemOnSuccess,
        [8] = true,
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
        [2] = "2100194873448598553",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_18()
    local params;
    DrawTextToScreen("Comment: WATER ON TOP!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: WATER ON TOP!");
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2107643324723628389",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100194873448598553",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SaveOpenWorldBox_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SaveOpenWorld.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SaveOpenWorldBox_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1642197366");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1876947379");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|1912821184");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_14_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108297341369847352",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_20()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_22()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|2013951920");
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

function export:OnEnter_box_GetActivityFact_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_DEBRIEF.domino|@MIS_450_DEBRIEF_graph|2112849976");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_23_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015338665227675",
        -- Fact,
        [1] = "GFHDisabled",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_25_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_25;
    self.Quebecois = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_9_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_9;
    self.Quebecois = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
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
