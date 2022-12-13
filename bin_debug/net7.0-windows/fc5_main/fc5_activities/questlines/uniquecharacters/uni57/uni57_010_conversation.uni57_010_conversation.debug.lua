LUAC�D -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni57/uni57_010_conversation.domino
-- User graph: UNI57_010_CONVERSATION
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsGunsForHire_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioStationModifier.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2966688045.bnk]], "CSoundResource");
        cboxRes:LoadResource([[entityarchetypeslibrary/9015222041342298.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[1888679892.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1944410654.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2155906783.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1514998874.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI57/UNI57_010_CONVERSATION.UNI57_010_CONVERSATION.debug.lua")] = {
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
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/GetPawnVehicleInfo.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InVehicle",
                delayed = false,
            },
            [1] = {
                name = "NotInVehicle",
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "seatType",
                type = "string",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
            [3] = {
                name = "vehicleType",
                type = "string",
            },
        },
        dataOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/IsGunsForHire_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Roster",
                delayed = false,
            },
            [3] = {
                name = "Squad",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Player",
                type = "entity",
            },
            [1] = {
                name = "targetGFHArchetype",
                type = "archetype",
            },
            [2] = {
                name = "targetGFHEntity",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "affectedGFHEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/RadioModifier_v3.lua")] = {
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
                name = "Enable",
                type = "bool",
            },
            [1] = {
                name = "ImmediateOverride",
                type = "bool",
            },
            [2] = {
                name = "LockOnOff",
                type = "bool",
            },
            [3] = {
                name = "LockStationSwitching",
                type = "bool",
            },
            [4] = {
                name = "StationOverride",
                type = "genericdb",
            },
            [5] = {
                name = "TargetRadio",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/RadioStationModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddBlockToPlay",
            },
            [1] = {
                name = "Censor",
            },
            [2] = {
                name = "Uncensor",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "AddedBlockToPlay",
                delayed = false,
            },
            [1] = {
                name = "Censored",
                delayed = false,
            },
            [2] = {
                name = "Uncensored",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "FadeDuration",
                type = "float",
            },
            [1] = {
                name = "IsRadioBlockPermanent",
                type = "bool",
            },
            [2] = {
                name = "MustPlayRadioBlockImmediately",
                type = "bool",
            },
            [3] = {
                name = "RadioBlockToPlay",
                type = "genericdb",
            },
            [4] = {
                name = "TargetStation",
                type = "genericdb",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
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
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI57_010_CONVERSATION";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION";
    self.Out = DummyFunction;
    self.PlayerGroup = nil;
    self.Helicopter = "";
    self.eGFH = nil;
    self.eHelicopter = nil;
    self.isPlayerInHelicopter = false;
    self.IsGFHInVehicle = false;
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|10168114");
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
    self.box_RadioStationModifier_25 = cbox:CreateBox("Domino/System/RadioStationModifier.lua");
    l0 = self.box_RadioStationModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioStationModifier_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|46136582");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_7 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|108055664");
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
        [0] = self.f_box_MultipleAND_v2_7_Out,
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|223066705");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_38_Finished,
    });
    self.box_VehicleListener_v3_12 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|384767125");
    l0:SetConnections({
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_12_OnAllStanding,
    });
    self.box_VehicleListener_v3_15 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|387600118");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_15_OnSit,
    });
    self.box_VehicleListener_v3_6 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|486577549");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_6_OnSit,
    });
    self.box_MultipleAND_v2_35 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|806762146");
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
        [0] = self.f_box_MultipleAND_v2_35_Out,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|901141994");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|946951316");
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
    self.box_VehicleListener_v3_14 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1004681528");
    l0:SetConnections({
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_14_OnStandUp,
    });
    self.box_ActivityInitialized_23 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1076620831");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_23_Out,
    });
    self.box_MultipleAND_v2_22 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1126886617");
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
        [0] = self.f_box_MultipleAND_v2_22_Out,
    });
    self.box_VehicleListener_v3_31 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1240169430");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_31_OnSit,
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1434468873");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_16_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_PlayDialog_v6_24 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1456233773");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_24_Finished,
    });
    self.box_VehicleListener_v3_8 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1517130547");
    l0:SetConnections({
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_8_OnStandUp,
    });
    self.box_ActivityAcknowledgeGate_20 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1590400906");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_20_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_20_Reloaded,
    });
    self.box_VehicleListener_v3_21 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1624951879");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_21_OnSit,
    });
    self.box_VehicleListener_v3_2 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1647921245");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_2_OnSit,
    });
    self.box_CharacterLoadedIdListener_37 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1720243786");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_37_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_37_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_37_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_37_LoadedIdReceived,
    });
    self.box_VehicleListener_v3_30 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1776357137");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_30_OnSit,
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|2018385261");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_10_Finished,
    });
    self.box_SoundModifier_v2_40 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|2020759688");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_40_Finished,
    });
    self.box_SoundModifier_v2_39 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|2035576607");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_39_Finished,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|572940521", "572940521", "UNI57_010_CONVERSATION", "In", "box_ActivityAcknowledgeGate_20.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|931149117", "931149117", "UNI57_010_CONVERSATION", "box_Simple_Node_17.Out", "box_PlayDialog_v6_38.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_MultipleOR_5;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1293527935", "1293527935", "UNI57_010_CONVERSATION", "box_MultipleOR_5.Out", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetPawnVehicleInfo_1_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_1_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_8();
    l0 = self.box_VehicleListener_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1425190754", "1425190754", "UNI57_010_CONVERSATION", "box_GetPawnVehicleInfo_1.InVehicle", "box_VehicleListener_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_1_NotInVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_1_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1731625222", "1731625222", "UNI57_010_CONVERSATION", "box_GetPawnVehicleInfo_1.NotInVehicle", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_1_Out()
    self:OnExit_box_GetPawnVehicleInfo_1_Out();
end;

function export:f_box_MultipleAND_v2_7_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_7;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|151451895", "151451895", "UNI57_010_CONVERSATION", "box_MultipleAND_v2_7.Out", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_38_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_40();
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_SoundModifier_v2_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|66767976", "66767976", "UNI57_010_CONVERSATION", "box_PlayDialog_v6_38.Finished", "box_SoundModifier_v2_40.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_32_Out()
    self:OnExit_box_SetBoolean_v2_32_Out();
end;

function export:f_box_VehicleListener_v3_12_OnAllStanding()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_12;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|2120687708", "2120687708", "UNI57_010_CONVERSATION", "box_VehicleListener_v3_12.OnAllStanding", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_15_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_VehicleListener_v3_15;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1145458809", "1145458809", "UNI57_010_CONVERSATION", "box_VehicleListener_v3_15.OnSit", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_VehicleListener_v3_6_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_22();
    l0 = self.box_VehicleListener_v3_6;
    l1 = self.box_MultipleAND_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1705455015", "1705455015", "UNI57_010_CONVERSATION", "box_VehicleListener_v3_6.OnSit", "box_MultipleAND_v2_22.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_2();
    l0 = self.box_VehicleListener_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1465738384", "1465738384", "UNI57_010_CONVERSATION", "box_OutputOrder_v2_4.Out", "box_VehicleListener_v3_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_6();
    l0 = self.box_VehicleListener_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|998574962", "998574962", "UNI57_010_CONVERSATION", "box_OutputOrder_v2_4.Out", "box_VehicleListener_v3_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_36_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|970110069", "970110069", "UNI57_010_CONVERSATION", "box_Compare_Boolean_36.A_is_False", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_36_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_35();
    l0 = self.box_MultipleAND_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|810242944", "810242944", "UNI57_010_CONVERSATION", "box_Compare_Boolean_36.A_is_True", "box_MultipleAND_v2_35.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_MultipleAND_v2_35;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|824597621", "824597621", "UNI57_010_CONVERSATION", "box_MultipleAND_v2_35.Out", "box_PlayDialog_v6_38.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_30();
    l0 = self.box_VehicleListener_v3_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|547811670", "547811670", "UNI57_010_CONVERSATION", "box_OutputOrder_v2_29.Out", "box_VehicleListener_v3_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_31();
    l0 = self.box_VehicleListener_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1142679990", "1142679990", "UNI57_010_CONVERSATION", "box_OutputOrder_v2_29.Out", "box_VehicleListener_v3_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_18_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_18;
    l1 = self.box_ActivityInitialized_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1744246174", "1744246174", "UNI57_010_CONVERSATION", "box_MultipleOR_18.Out", "box_ActivityInitialized_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1608671366", "1608671366", "UNI57_010_CONVERSATION", "box_MultipleOR_11.Out", "box_Simple_Node_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_14_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_14;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|663442780", "663442780", "UNI57_010_CONVERSATION", "box_VehicleListener_v3_14.OnStandUp", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_19();
    l0 = self.box_ActivityInitialized_23;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|540548456", "540548456", "UNI57_010_CONVERSATION", "box_ActivityInitialized_23.Out", "box_GetPlayerGroup_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_26();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|492043431", "492043431", "UNI57_010_CONVERSATION", "box_OutputOrder_v2_27.Out", "box_RadioModifier_v3_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_22();
    l0 = self.box_MultipleAND_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1831613232", "1831613232", "UNI57_010_CONVERSATION", "box_OutputOrder_v2_27.Out", "box_MultipleAND_v2_22.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_22_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_22;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|669971199", "669971199", "UNI57_010_CONVERSATION", "box_MultipleAND_v2_22.Out", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_33_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|286067816", "286067816", "UNI57_010_CONVERSATION", "box_Compare_Boolean_33.A_is_False", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_33_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_35();
    l0 = self.box_MultipleAND_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|599463347", "599463347", "UNI57_010_CONVERSATION", "box_Compare_Boolean_33.A_is_True", "box_MultipleAND_v2_35.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_VehicleListener_v3_31_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_34();
    l0 = self.box_VehicleListener_v3_31;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|277573815", "277573815", "UNI57_010_CONVERSATION", "box_VehicleListener_v3_31.OnSit", "box_SetBoolean_v2_34.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|783471183", "783471183", "UNI57_010_CONVERSATION", "box_Delay_v5_16.Started", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1182600336", "1182600336", "UNI57_010_CONVERSATION", "box_Delay_v5_16.TimeElapsed", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_24_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_39();
    l0 = self.box_PlayDialog_v6_24;
    l1 = self.box_SoundModifier_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|889572668", "889572668", "UNI57_010_CONVERSATION", "box_PlayDialog_v6_24.Finished", "box_SoundModifier_v2_39.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_8_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_VehicleListener_v3_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|421433679", "421433679", "UNI57_010_CONVERSATION", "box_VehicleListener_v3_8.OnStandUp", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_20_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_20;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|574888914", "574888914", "UNI57_010_CONVERSATION", "box_ActivityAcknowledgeGate_20.Acknowledged", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_20_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_20;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|426147026", "426147026", "UNI57_010_CONVERSATION", "box_ActivityAcknowledgeGate_20.Reloaded", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_21_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_VehicleListener_v3_21;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1618553352", "1618553352", "UNI57_010_CONVERSATION", "box_VehicleListener_v3_21.OnSit", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_VehicleListener_v3_2_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_VehicleListener_v3_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1412764961", "1412764961", "UNI57_010_CONVERSATION", "box_VehicleListener_v3_2.OnSit", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_33();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|765343764", "765343764", "UNI57_010_CONVERSATION", "box_OutputOrder_v2_13.Out", "box_Compare_Boolean_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_36();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|880143596", "880143596", "UNI57_010_CONVERSATION", "box_OutputOrder_v2_13.Out", "box_Compare_Boolean_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_12();
    l0 = self.box_VehicleListener_v3_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1561782692", "1561782692", "UNI57_010_CONVERSATION", "box_OutputOrder_v2_13.Out", "box_VehicleListener_v3_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_14();
    l0 = self.box_VehicleListener_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1653074681", "1653074681", "UNI57_010_CONVERSATION", "box_OutputOrder_v2_13.Out", "box_VehicleListener_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_34_Out()
    self:OnExit_box_SetBoolean_v2_34_Out();
end;

function export:f_box_CharacterLoadedIdListener_37_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_37_LoadedIdReceived();
    params = self:OnEnter_box_IsGunsForHire_v2_3();
    l0 = self.box_CharacterLoadedIdListener_37;
    l1 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1133713703", "1133713703", "UNI57_010_CONVERSATION", "box_CharacterLoadedIdListener_37.LoadedIdReceived", "box_IsGunsForHire_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_19_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_37();
    l0 = self.box_CharacterLoadedIdListener_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|276245336", "276245336", "UNI57_010_CONVERSATION", "box_GetPlayerGroup_v2_19.Out", "box_CharacterLoadedIdListener_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_30_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_32();
    l0 = self.box_VehicleListener_v3_30;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|2066930864", "2066930864", "UNI57_010_CONVERSATION", "box_VehicleListener_v3_30.OnSit", "box_SetBoolean_v2_32.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioStationModifier_25();
    l0 = self.box_RadioStationModifier_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1276822941", "1276822941", "UNI57_010_CONVERSATION", "box_RadioModifier_v3_26.Out", "box_RadioStationModifier_25.AddBlockToPlay", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddBlockToPlay
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_15();
    l0 = self.box_VehicleListener_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1612438249", "1612438249", "UNI57_010_CONVERSATION", "box_OutputOrder_v2_9.Out", "box_VehicleListener_v3_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_21();
    l0 = self.box_VehicleListener_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|649196982", "649196982", "UNI57_010_CONVERSATION", "box_OutputOrder_v2_9.Out", "box_VehicleListener_v3_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_10_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_28();
    l0 = self.box_PlayDialog_v6_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1993838553", "1993838553", "UNI57_010_CONVERSATION", "box_PlayDialog_v6_10.Finished", "box_ActivityEnd_28.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_40_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_24();
    l0 = self.box_SoundModifier_v2_40;
    l1 = self.box_PlayDialog_v6_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|952095736", "952095736", "UNI57_010_CONVERSATION", "box_SoundModifier_v2_40.Finished", "box_PlayDialog_v6_24.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_39_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_SoundModifier_v2_39;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|2020798464", "2020798464", "UNI57_010_CONVERSATION", "box_SoundModifier_v2_39.Finished", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IsGunsForHire_v2_3_Squad()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_1();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|384983305", "384983305", "UNI57_010_CONVERSATION", "box_IsGunsForHire_v2_3.Squad", "box_GetPawnVehicleInfo_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|@CancelCalls");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|40443924");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_1_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_1_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_1_Out,
    });
    params = {
        -- pawn,
        [0] = self.eGFH,
    };
    return params;
end;

function export:OnEnter_box_RadioStationModifier_25()
    local params;
    params = {
        -- FadeDuration,
        [0] = 3,
        -- IsRadioBlockPermanent,
        [1] = false,
        -- MustPlayRadioBlockImmediately,
        [2] = true,
        -- RadioBlockToPlay,
        [3] = "9015313996410532",
        -- TargetStation,
        [4] = "9015204464899149",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_7()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    params = {
        -- Group,
        [0] = self.eGFH,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1514998874",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|313108242");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_12()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicleTypeFilter,
        [5] = 4,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_15()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicleTypeFilter,
        [5] = 4,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_6()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eGFH,
        -- vehicle,
        [4] = self.eHelicopter,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|695210456");
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

function export:OnEnter_box_ActivityEnd_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|743628682");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|793203157");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_36_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_36_A_is_True,
    });
    params = {
        -- A,
        [0] = self.IsGFHInVehicle,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_35()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|899183561");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_14()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eGFH,
        -- vehicleTypeFilter,
        [5] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1098471222");
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

function export:OnEnter_box_MultipleAND_v2_22()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1226372947");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_33_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_33_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isPlayerInHelicopter,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_31()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = self.eGFH,
        -- vehicleTypeFilter,
        [5] = 4,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_24()
    local params;
    params = {
        -- Group,
        [0] = self.eGFH,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2966688045",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_8()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eGFH,
        -- vehicle,
        [4] = self.eHelicopter,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_21()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eGFH,
        -- vehicleTypeFilter,
        [5] = 4,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_2()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = self.eHelicopter,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1656827017");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
                [3] = self.f_box_OutputOrder_v2_13_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1701137419");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015218968275679",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1761701049");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_19_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_30()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#ED455357",
        -- vehicleTypeFilter,
        [5] = 4,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1805062968");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_26_Out,
    });
    params = {
        -- Enable,
        [0] = true,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = self.eHelicopter,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|1815032545");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    params = {
        -- Group,
        [0] = self.eGFH,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2155906783",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_40()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1944410654",
        -- SoundType,
        [2] = 2,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_39()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1888679892",
        -- SoundType,
        [2] = 2,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_IsGunsForHire_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsGunsForHire_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_CONVERSATION.domino|@UNI57_010_CONVERSATION|2107659462");
    l0:SetConnections({
        -- Squad,
        [3] = self.f_box_IsGunsForHire_v2_3_Squad,
    });
    params = {
        -- targetGFHArchetype,
        [1] = "9015222041342298",
    };
    return params;
end;

function export:OnExit_box_GetPawnVehicleInfo_1_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eHelicopter = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_1_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eHelicopter = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eHelicopter = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetBoolean_v2_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isPlayerInHelicopter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.IsGFHInVehicle = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_37_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_37;
    self.eGFH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
