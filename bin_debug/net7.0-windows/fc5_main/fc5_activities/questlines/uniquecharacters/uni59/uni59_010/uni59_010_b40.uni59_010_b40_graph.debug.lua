LUAC�. -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni59/uni59_010/uni59_010_b40.domino
-- User graph: UNI59_010_B40_Graph
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayMissionExitWarning_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[983270084.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2505259732.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI59/UNI59_010/UNI59_010_B40.UNI59_010_B40_Graph.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "eDestinationMarker",
                type = "entity",
            },
            [3] = {
                name = "eDestinationTrigger",
                type = "entity",
            },
            [4] = {
                name = "eNPCMobileMarker",
                type = "entity",
            },
            [5] = {
                name = "eNPCToEscort",
                type = "entity",
            },
            [6] = {
                name = "Objective",
                type = "oasis",
            },
            [7] = {
                name = "WarningMsg",
                type = "oasis",
            },
        },
        dataInCount = 8,
        dataOut = {
            [0] = {
                name = "FailReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua")] = {
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
                name = "FailingZoneEntered",
                delayed = true,
            },
            [1] = {
                name = "WarningZoneEntered",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bShowUI",
                type = "bool",
            },
            [1] = {
                name = "CoopFailRequiresAllPlayer",
                type = "bool",
            },
            [2] = {
                name = "FailingZoneTrigger",
                type = "entity",
            },
            [3] = {
                name = "WarningZoneTrigger",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
                name = "WaitForMusicStatePriorityOver",
                type = "int",
            },
            [10] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [11] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 12,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")] = {
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
                name = "ActivityAbortAndFastTravelEnabled",
                type = "bool",
            },
            [1] = {
                name = "SleepingCampEnabled",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
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
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
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
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
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
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "MessageType",
                type = "int",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/DisplayMissionExitWarning_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "messageId",
                type = "oasis",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "playSound",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
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
    self._name = "UNI59_010_B40_Graph";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph";
    self.PlayerGroup = nil;
    self.e_cougarPeaches = nil;
    self.MissionIsReloaded = false;
    self.var_f_DistanceFail = 90;
    self.var_f_DistanceWarning = 50;
    self.box_ExitZoneWarningListener_v3_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|453119587");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_14_FailingZoneEntered,
        -- WarningZoneEntered,
        [1] = self.f_box_ExitZoneWarningListener_v3_14_WarningZoneEntered,
    });
    self.box_HealthListener_v6_31 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|534085581");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_31_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_31_Killed,
    });
    self.box_ProximityRadiusListener_v3_32 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|540574442");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_32_AllFar,
    });
    self.box_InventoryItemModifier_9 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|566368530");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_9_Out,
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|607032831");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_DisplayCustomUIMsg_v5_27 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|644389276");
    l0:SetConnections({
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|728881887");
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
    self.box_VisibilityModifier_35 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|761011609");
    l0:SetConnections({
    });
    self.box_Brick_Escort_NPC_To_Position_v3_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua");
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Escort_NPC_To_Position_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1018849221");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Escort_NPC_To_Position_v3_16_Fail,
        -- Success,
        [2] = self.f_box_Brick_Escort_NPC_To_Position_v3_16_Success,
    });
    self.box_Music_Quest_v2_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1054263890");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_20 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1107580791");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_20_Out,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1395104432");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_RemoveEntity_v2_21 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1399729631");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_21_Out,
    });
    self.box_InventoryItemModifier_10 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1630740375");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_8 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1734038718");
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
    self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1846043692");
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
        [0] = self.f_box_MultipleOR_28_Out,
    });
    self.box_ProximityRadiusListener_v3_24 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1869765526");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_24_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_24_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_24_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_24_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_24_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_24_SomeoneNear,
    });
    self.box_InventoryItemModifier_11 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|2009077908");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_11_Out,
    });
    self.box_ExitZoneWarningListener_v3_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|2045740842");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_22_FailingZoneEntered,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|2102776995");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1517743828", "1517743828", "UNI59_010_B40_Graph", "In", "box_ActivityAcknowledgeGate_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_1();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|261255994", "261255994", "UNI59_010_B40_Graph", "OnLeaveZone", "box_ActivityRetry_1.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|801657974", "801657974", "UNI59_010_B40_Graph", "box_Simple_Node_34.Out", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1972136791", "1972136791", "UNI59_010_B40_Graph", "box_Simple_Node_33.Out", "box_MultipleOR_28.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1478414786", "1478414786", "UNI59_010_B40_Graph", "box_OutputOrder_v2_30.Out", "box_Simple_Node_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_25();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1789945310", "1789945310", "UNI59_010_B40_Graph", "box_OutputOrder_v2_30.Out", "box_ActivityRetry_25.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_4_Out()
    local l0;
    self:OnExit_box_GetPlayerGroup_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1488603410", "1488603410", "UNI59_010_B40_Graph", "box_GetPlayerGroup_v2_4.Out", "box_ActivityInitialized_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ActivityMiscInfoModifier_v2_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_14();
    l0 = self.box_ExitZoneWarningListener_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1992581214", "1992581214", "UNI59_010_B40_Graph", "box_ActivityMiscInfoModifier_v2_19.Out", "box_ExitZoneWarningListener_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ExitZoneWarningListener_v3_14_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_12();
    l0 = self.box_ExitZoneWarningListener_v3_14;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1361508680", "1361508680", "UNI59_010_B40_Graph", "box_ExitZoneWarningListener_v3_14.FailingZoneEntered", "box_ActivityRetry_12.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_14_WarningZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayMissionExitWarning_v2_13();
    l0 = self.box_ExitZoneWarningListener_v3_14;
    l1 = Boxes[GetPathID("Domino/System/UI/DisplayMissionExitWarning_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|2087472897", "2087472897", "UNI59_010_B40_Graph", "box_ExitZoneWarningListener_v3_14.WarningZoneEntered", "box_DisplayMissionExitWarning_v2_13.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_31_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_31;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|2028294531", "2028294531", "UNI59_010_B40_Graph", "box_HealthListener_v6_31.Downed", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_31_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_31;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|2119588917", "2119588917", "UNI59_010_B40_Graph", "box_HealthListener_v6_31.Killed", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_32_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_ProximityRadiusListener_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|863319224", "863319224", "UNI59_010_B40_Graph", "box_ProximityRadiusListener_v3_32.AllFar", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_10();
    l0 = self.box_InventoryItemModifier_9;
    l1 = self.box_InventoryItemModifier_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|32399007", "32399007", "UNI59_010_B40_Graph", "box_InventoryItemModifier_9.Out", "box_InventoryItemModifier_10.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|621131575", "621131575", "UNI59_010_B40_Graph", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_5();
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|3611990", "3611990", "UNI59_010_B40_Graph", "box_ActivityAcknowledgeGate_6.Reloaded", "box_SetBoolean_v2_5.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_4();
    l0 = self.box_MultipleOR_2;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|2026588880", "2026588880", "UNI59_010_B40_Graph", "box_MultipleOR_2.Out", "box_GetPlayerGroup_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_5_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|633090986", "633090986", "UNI59_010_B40_Graph", "box_SetBoolean_v2_5.Out", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_22();
    l0 = self.box_ExitZoneWarningListener_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|243354411", "243354411", "UNI59_010_B40_Graph", "box_OutputOrder_v2_26.Out", "box_ExitZoneWarningListener_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_31();
    l0 = self.box_HealthListener_v6_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1762235020", "1762235020", "UNI59_010_B40_Graph", "box_OutputOrder_v2_26.Out", "box_HealthListener_v6_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_24();
    l0 = self.box_ProximityRadiusListener_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|675761248", "675761248", "UNI59_010_B40_Graph", "box_OutputOrder_v2_26.Out", "box_ProximityRadiusListener_v3_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_32();
    l0 = self.box_ProximityRadiusListener_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|759145483", "759145483", "UNI59_010_B40_Graph", "box_OutputOrder_v2_26.Out", "box_ProximityRadiusListener_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_16_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_34();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_16;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|203991444", "203991444", "UNI59_010_B40_Graph", "box_Brick_Escort_NPC_To_Position_v3_16.Fail", "box_Simple_Node_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_16_Success()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_20();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_16;
    l1 = self.box_RemoveEntity_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1486897763", "1486897763", "UNI59_010_B40_Graph", "box_Brick_Escort_NPC_To_Position_v3_16.Success", "box_RemoveEntity_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_21();
    l0 = self.box_RemoveEntity_v2_20;
    l1 = self.box_RemoveEntity_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|2101240327", "2101240327", "UNI59_010_B40_Graph", "box_RemoveEntity_v2_20.Out", "box_RemoveEntity_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_23();
    l0 = self.box_MultipleOR_29;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|224826534", "224826534", "UNI59_010_B40_Graph", "box_MultipleOR_29.Out", "box_ActivityRetry_23.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_18();
    l0 = self.box_RemoveEntity_v2_21;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1743113729", "1743113729", "UNI59_010_B40_Graph", "box_RemoveEntity_v2_21.Out", "box_ActivityEnd_18.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_8_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_8_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_CharacterLoadedIdListener_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1921181599", "1921181599", "UNI59_010_B40_Graph", "box_CharacterLoadedIdListener_8.LoadedIdReceived", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_27();
    l0 = self.box_MultipleOR_28;
    l1 = self.box_DisplayCustomUIMsg_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1996144491", "1996144491", "UNI59_010_B40_Graph", "box_MultipleOR_28.Out", "box_DisplayCustomUIMsg_v5_27.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_24_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_24_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_24_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_24_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_24_SomeoneFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_24_SomeoneFar();
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_27();
    l0 = self.box_ProximityRadiusListener_v3_24;
    l1 = self.box_DisplayCustomUIMsg_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1806319883", "1806319883", "UNI59_010_B40_Graph", "box_ProximityRadiusListener_v3_24.SomeoneFar", "box_DisplayCustomUIMsg_v5_27.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_24_SomeoneNear()
    local l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_24_SomeoneNear();
    l0 = self.box_ProximityRadiusListener_v3_24;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1651018008", "1651018008", "UNI59_010_B40_Graph", "box_ProximityRadiusListener_v3_24.SomeoneNear", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Escort_NPC_To_Position_v3_16();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1154867161", "1154867161", "UNI59_010_B40_Graph", "box_OutputOrder_v2_7.Out", "box_Brick_Escort_NPC_To_Position_v3_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_15();
    l0 = self.box_Music_Quest_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|187103664", "187103664", "UNI59_010_B40_Graph", "box_OutputOrder_v2_7.Out", "box_Music_Quest_v2_15.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1083202037", "1083202037", "UNI59_010_B40_Graph", "box_OutputOrder_v2_7.Out", "box_ActivityMiscInfoModifier_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_11();
    l0 = self.box_InventoryItemModifier_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|734537836", "734537836", "UNI59_010_B40_Graph", "box_OutputOrder_v2_7.Out", "box_InventoryItemModifier_11.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_7_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_35();
    l0 = self.box_VisibilityModifier_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|200333118", "200333118", "UNI59_010_B40_Graph", "box_OutputOrder_v2_7.Out", "box_VisibilityModifier_35.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_9();
    l0 = self.box_InventoryItemModifier_11;
    l1 = self.box_InventoryItemModifier_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|389053273", "389053273", "UNI59_010_B40_Graph", "box_InventoryItemModifier_11.Out", "box_InventoryItemModifier_9.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_ExitZoneWarningListener_v3_22_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_17();
    l0 = self.box_ExitZoneWarningListener_v3_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|183081833", "183081833", "UNI59_010_B40_Graph", "box_ExitZoneWarningListener_v3_22.FailingZoneEntered", "box_ActivityRetry_17.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_8();
    l0 = self.box_ActivityInitialized_3;
    l1 = self.box_CharacterLoadedIdListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|454032192", "454032192", "UNI59_010_B40_Graph", "box_ActivityInitialized_3.Out", "box_CharacterLoadedIdListener_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|@FailConditions");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|@RemoveMsgWarning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|84194327");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|403229756");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|415553347");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_19_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|425492537");
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

function export:OnEnter_box_ExitZoneWarningListener_v3_14()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2102641843081587716",
        -- WarningZoneTrigger,
        [3] = "2104423785183585196",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_31()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.e_cougarPeaches,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_32()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.PlayerGroup,
        -- farZone,
        [2] = self.var_f_DistanceFail,
        -- id2,
        [3] = self.e_cougarPeaches,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_9()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015219095438131",
        -- players,
        [2] = self.PlayerGroup,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_27()
    local params, l0;
    l0 = self.box_ProximityRadiusListener_v3_24;
    params = {
        -- MessageId,
        [0] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_YoureTooFar",
            id = "376649",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|758220312");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_5_Out,
    });
    params = {
        -- Bool,
        [0] = self.MissionIsReloaded,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_35()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102434219820071168",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|870357641");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
                [3] = self.f_box_OutputOrder_v2_26_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Escort_NPC_To_Position_v3_16()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bRequiresObjective,
        [1] = true,
        -- eDestinationMarker,
        [2] = "2101520715827200728",
        -- eDestinationTrigger,
        [3] = "2100028707690252715",
        -- eNPCMobileMarker,
        [4] = "2103664046440988051",
        -- eNPCToEscort,
        [5] = self.e_cougarPeaches,
        -- Objective,
        [6] = {
            section = "Objective",
            item = "UNI59_010_B30_OBJ2_",
            id = "743928",
        },
        -- WarningMsg,
        [7] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_YoureTooFar",
            id = "376649",
        },
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_15()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2505259732",
        -- StopEvent,
        [7] = "983270084",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = true,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayMissionExitWarning_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayMissionExitWarning_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayMissionExitWarning_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1081531611");
    l0:SetConnections({
    });
    params = {
        -- pawns,
        [1] = "#ED455357",
        -- playSound,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_20()
    local params;
    params = {
        -- Group,
        [0] = "2100776715509828011",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1190303748");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_FailNPCDead",
            id = "376651",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_21()
    local params;
    params = {
        -- Group,
        [0] = "2101479756120729134",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1589986489");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "IGE_Notifications",
            item = "NOTIF_MAP_END_OBJECTIVE_FAILED",
            id = "245652",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1609966385");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_FailTooFar",
            id = "376650",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_10()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015253180486088",
        -- players,
        [2] = self.PlayerGroup,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015245006160999",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_24()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.PlayerGroup,
        -- farZone,
        [2] = 51,
        -- id2,
        [3] = self.e_cougarPeaches,
        -- nearZone,
        [4] = self.var_f_DistanceWarning,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1895636319");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI24_010_FAIL_LeaveZone",
            id = "656985",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1932944081");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI59\\UNI59_010\\UNI59_010_B40.domino|@UNI59_010_B40_Graph|1958804133");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
                [4] = self.f_box_OutputOrder_v2_7_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_11()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015142581953263",
        -- players,
        [2] = self.PlayerGroup,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_22()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2104424245323931398",
        -- WarningZoneTrigger,
        [3] = "2100068145210336047",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.MissionIsReloaded = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_8_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_8;
    self.e_cougarPeaches = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_24_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_24;
    l1 = self.box_DisplayCustomUIMsg_v5_27;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_24_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_24;
    l1 = self.box_DisplayCustomUIMsg_v5_27;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_24_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_24;
    l1 = self.box_DisplayCustomUIMsg_v5_27;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_24_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_24;
    l1 = self.box_DisplayCustomUIMsg_v5_27;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
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
