LUAC�# -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni51/uni51_010_25.domino
-- User graph: UNI51_010_B25
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ConversationListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_25.UNI51_010_B25.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "FadeIn",
            },
            [1] = {
                name = "FadeOut",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FadedIn",
                delayed = false,
            },
            [1] = {
                name = "FadedOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "HUD",
                type = "string",
            },
            [1] = {
                name = "PostFX",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BasicSetup",
            },
            [1] = {
                name = "HolsterWeapon",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Holstered",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Enable_Blackbars",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")] = {
        stateless = true,
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CharacterId",
                type = "genericdb",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
            [2] = {
                name = "ObjectiveId",
                type = "oasis",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
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
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/AI/ConversationListener.lua")] = {
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
                name = "Aborted",
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
                name = "Finished",
                delayed = true,
            },
            [4] = {
                name = "Paused",
                delayed = true,
            },
            [5] = {
                name = "Resumed",
                delayed = true,
            },
            [6] = {
                name = "Skipped",
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
                name = "AutoDisable",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/AI/RegenerateNavmesh.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Completed",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "RegionEntity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/GetHealthState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Critical",
                delayed = false,
            },
            [1] = {
                name = "Dead",
                delayed = false,
            },
            [2] = {
                name = "Down",
                delayed = false,
            },
            [3] = {
                name = "Healthy",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
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
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
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
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
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
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI51_010_B25";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25";
    self.Tweak = nil;
    self.box_TeleportPawns_31 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|77991063");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_31_Out,
    });
    self.box_ConversationListener_16 = cbox:CreateBox("Domino/System/AI/ConversationListener.lua");
    l0 = self.box_ConversationListener_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConversationListener_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|188920706");
    l0:SetConnections({
        -- Finished,
        [3] = self.f_box_ConversationListener_16_Finished,
        -- Paused,
        [4] = self.f_box_ConversationListener_16_Paused,
    });
    self.box_NarrativeSceneSetup_41 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|217511211");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_41_Out,
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|401825205");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|407926039");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
    self.box_TeleportPawns_46 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|488845137");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_46_Out,
    });
    self.box_PositionModifier_v2_35 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|561235413");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_35_StartOut,
    });
    self.box_RegenerateNavmesh_32 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|689128124");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|773461393");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_CharacterLoadedIdListener_9 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|982106844");
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
    self.box_PositionModifier_v2_51 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1190774866");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_51_StartOut,
    });
    self.box_PositionModifier_v2_43 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1192161141");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_43_StartOut,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1351553235");
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
    self.box_PositionModifier_v2_14 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1569012888");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_14_Done,
    });
    self.box_NarrativeFade_37 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1582193936");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_37_FadedOut,
    });
    self.box_Delay_v5_45 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1783425306");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_45_TimeElapsed,
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1966554495");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_MultipleOR_54 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|2006195792");
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
        [0] = self.f_box_MultipleOR_54_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1920601524", "1920601524", "UNI51_010_B25", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1174186155", "1174186155", "UNI51_010_B25", "OnLeaveZone", "box_ActivityRetry_3.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_53_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|277868182", "277868182", "UNI51_010_B25", "box_IsEntityLoaded_v3_53.False", "box_MultipleOR_54.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_53_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_35();
    l0 = self.box_PositionModifier_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1954205679", "1954205679", "UNI51_010_B25", "box_IsEntityLoaded_v3_53.True", "box_PositionModifier_v2_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_TeleportPawns_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_TeleportPawns_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|994956030", "994956030", "UNI51_010_B25", "box_TeleportPawns_31.Out", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_50();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|800742802", "800742802", "UNI51_010_B25", "box_OutputOrder_v2_39.Out", "box_IsEntityLoaded_v3_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_40();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1356443156", "1356443156", "UNI51_010_B25", "box_OutputOrder_v2_39.Out", "box_IsEntityLoaded_v3_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_38_Critical()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1751145625", "1751145625", "UNI51_010_B25", "box_GetHealthState_38.Critical", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_38_Dead()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|426995086", "426995086", "UNI51_010_B25", "box_GetHealthState_38.Dead", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetHealthState_38_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1626600815", "1626600815", "UNI51_010_B25", "box_GetHealthState_38.Down", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_38_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1407701556", "1407701556", "UNI51_010_B25", "box_GetHealthState_38.Healthy", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ConversationListener_16_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_41();
    l0 = self.box_ConversationListener_16;
    l1 = self.box_NarrativeSceneSetup_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|332487249", "332487249", "UNI51_010_B25", "box_ConversationListener_16.Finished", "box_NarrativeSceneSetup_41.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_ConversationListener_16_Paused()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_15();
    l0 = self.box_ConversationListener_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1333821819", "1333821819", "UNI51_010_B25", "box_ConversationListener_16.Paused", "box_AddActivityObjective_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_37();
    l0 = self.box_NarrativeSceneSetup_41;
    l1 = self.box_NarrativeFade_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|486058028", "486058028", "UNI51_010_B25", "box_NarrativeSceneSetup_41.Out", "box_NarrativeFade_37.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_46();
    l0 = self.box_MultipleOR_44;
    l1 = self.box_TeleportPawns_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1864944795", "1864944795", "UNI51_010_B25", "box_MultipleOR_44.Out", "box_TeleportPawns_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_9();
    l0 = self.box_ActivityInitialized_8;
    l1 = self.box_CharacterLoadedIdListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|338182558", "338182558", "UNI51_010_B25", "box_ActivityInitialized_8.Out", "box_CharacterLoadedIdListener_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1279261103", "1279261103", "UNI51_010_B25", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1623775969", "1623775969", "UNI51_010_B25", "box_OutputOrder_v2_2.Out", "box_Print_v2_11.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_TeleportPawns_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1375454924", "1375454924", "UNI51_010_B25", "box_TeleportPawns_46.Out", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|2052814398", "2052814398", "UNI51_010_B25", "box_AddActivityObjective_v2_15.Out", "box_ActivityObjectiveMarkerModifier_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_35_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_51();
    l0 = self.box_PositionModifier_v2_35;
    l1 = self.box_PositionModifier_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1840403329", "1840403329", "UNI51_010_B25", "box_PositionModifier_v2_35.StartOut", "box_PositionModifier_v2_51.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1694500779", "1694500779", "UNI51_010_B25", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1418034289", "1418034289", "UNI51_010_B25", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthModifier_v2_48_Healed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|936355840", "936355840", "UNI51_010_B25", "box_HealthModifier_v2_48.Healed", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CharacterLoadedIdListener_9_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_9_LoadedIdReceived();
    params = self:OnEnter_box_ConversationListener_16();
    l0 = self.box_CharacterLoadedIdListener_9;
    l1 = self.box_ConversationListener_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|2051152656", "2051152656", "UNI51_010_B25", "box_CharacterLoadedIdListener_9.LoadedIdReceived", "box_ConversationListener_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_51_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_43();
    l0 = self.box_PositionModifier_v2_51;
    l1 = self.box_PositionModifier_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1639906037", "1639906037", "UNI51_010_B25", "box_PositionModifier_v2_51.StartOut", "box_PositionModifier_v2_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_43_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_14();
    l0 = self.box_PositionModifier_v2_43;
    l1 = self.box_PositionModifier_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|171801342", "171801342", "UNI51_010_B25", "box_PositionModifier_v2_43.StartOut", "box_PositionModifier_v2_14.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_50_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_42();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|2005349483", "2005349483", "UNI51_010_B25", "box_IsEntityLoaded_v3_50.True", "box_HealthModifier_v2_42.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1229313656", "1229313656", "UNI51_010_B25", "box_MultipleOR_1.Out", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_IsEntityLoaded_v3_40_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_33();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1079004570", "1079004570", "UNI51_010_B25", "box_IsEntityLoaded_v3_40.True", "box_HealthModifier_v2_33.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_14_Done()
    local l0, l1;
    l0 = self.box_PositionModifier_v2_14;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|629240073", "629240073", "UNI51_010_B25", "box_PositionModifier_v2_14.Done", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeFade_37_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_NarrativeFade_37;
    l1 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|198199771", "198199771", "UNI51_010_B25", "box_NarrativeFade_37.FadedOut", "box_Delay_v5_45.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_38();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|2050011709", "2050011709", "UNI51_010_B25", "box_OutputOrder_v2_52.Out", "box_GetHealthState_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RegenerateNavmesh_32();
    l0 = self.box_RegenerateNavmesh_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|232795267", "232795267", "UNI51_010_B25", "box_OutputOrder_v2_52.Out", "box_RegenerateNavmesh_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_52_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_34();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1602828166", "1602828166", "UNI51_010_B25", "box_OutputOrder_v2_52.Out", "box_MissionBlockLayer_34.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_45_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_53();
    l0 = self.box_Delay_v5_45;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1725241874", "1725241874", "UNI51_010_B25", "box_Delay_v5_45.TimeElapsed", "box_IsEntityLoaded_v3_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_48();
    l0 = self.box_MultipleOR_49;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1602086098", "1602086098", "UNI51_010_B25", "box_MultipleOR_49.Out", "box_HealthModifier_v2_48.Heal", l0:GetLuaBox(), l1:GetLuaBox());
    -- Heal
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_31();
    l0 = self.box_MultipleOR_54;
    l1 = self.box_TeleportPawns_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1073189366", "1073189366", "UNI51_010_B25", "box_MultipleOR_54.Out", "box_TeleportPawns_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1586507439", "1586507439", "UNI51_010_B25", "box_OutputOrder_v2_36.Out", "box_OutputOrder_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1312581897", "1312581897", "UNI51_010_B25", "box_OutputOrder_v2_36.Out", "box_OutputOrder_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|843772163", "843772163", "UNI51_010_B25", "box_OutputOrder_v2_4.Out", "box_Print_v2_7.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|166281556", "166281556", "UNI51_010_B25", "box_OutputOrder_v2_4.Out", "box_ActivityEnd_5.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_IsEntityLoaded_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|35580281");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_53_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_53_True,
    });
    params = {
        -- entityId,
        [0] = "2101756814321264658",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_31()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2103372511581330722",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|120964048");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|157893760");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_GetHealthState_38_Critical,
        -- Dead,
        [1] = self.f_box_GetHealthState_38_Dead,
        -- Down,
        [2] = self.f_box_GetHealthState_38_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_38_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.Tweak,
    };
    return params;
end;

function export:OnEnter_box_ConversationListener_16()
    local params;
    DrawTextToScreen("Comment: NPC is using STP. Start Conversation Listener", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ConversationListener')-- Comment: NPC is using STP. Start Conversation Listener");
    params = {
        -- AutoDisable,
        [0] = false,
        -- Entity,
        [1] = self.Tweak,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_41()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|241562444");
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
        [8] = "B20 -Started!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|293165192");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2103456032823980477",
        -- pawns,
        [2] = "2103456032823980477",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|445159302");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_46()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2103952998356019924",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.Tweak,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|523399572");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_15_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI51_010_BRIEF_BackUpTalk",
            id = "869392",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_35()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101836492709048110",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101756814321264658",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_32()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2104436312045003314",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|907561152");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "45174585823128468",
        -- missionLayerId,
        [1] = "63188984332610455",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|925372575");
    l0:SetConnections({
        -- Healed,
        [1] = self.f_box_HealthModifier_v2_48_Healed,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.Tweak,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015218968191127",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1143940019");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = self.Tweak,
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_BRIEF_BackUpTalk",
            id = "869392",
        },
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_51()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101836559685791542",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101756129865378859",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_43()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101836591063379774",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101756382454746490",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1224775610");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_50_True,
    });
    params = {
        -- entityId,
        [0] = "2100551415742088847",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1476026160");
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

function export:OnEnter_box_IsEntityLoaded_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1496880108");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_40_True,
    });
    params = {
        -- entityId,
        [0] = "2103456032823980477",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_14()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2101836612538216262",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101756993185261646",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_37()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1616802599");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
                [2] = self.f_box_OutputOrder_v2_52_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_45()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1950278536");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2100551415742088847",
        -- pawns,
        [2] = "2100551415742088847",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1980948645");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|1998445846");
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
        [8] = "B25 -DONE!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|2007963499");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_25.domino|@UNI51_010_B25|2055508968");
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

function export:OnExit_box_CharacterLoadedIdListener_9_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_9;
    self.Tweak = l0:GetDataOutValue(0);
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
