LUACN\ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key03/key03_030/key03_030_debrief.domino
-- User graph: KEY03_030_DEBRIEF_main
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
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1587202278.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1418808635.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2975086019.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY03/KEY03_030/KEY03_030_DEBRIEF.KEY03_030_DEBRIEF_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Active",
                delayed = false,
            },
            [1] = {
                name = "Canceled",
                delayed = false,
            },
            [2] = {
                name = "Completed",
                delayed = false,
            },
            [3] = {
                name = "Failed",
                delayed = false,
            },
            [4] = {
                name = "Inactive",
                delayed = false,
            },
            [5] = {
                name = "Out",
                delayed = false,
            },
            [6] = {
                name = "Unavailable",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "activityDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/PhoneCallExclusivityModifier.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/RequestPhoneCall_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Canceled",
                delayed = true,
            },
            [1] = {
                name = "Completed",
                delayed = true,
            },
            [2] = {
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Pending",
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
                name = "CustomRingInSound",
                type = "Sound",
            },
            [1] = {
                name = "CustomRingOutSound",
                type = "Sound",
            },
            [2] = {
                name = "Delay",
                type = "float",
            },
            [3] = {
                name = "NoDeadair",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 6,
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
    self._name = "KEY03_030_DEBRIEF_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main";
    self.Perkins = nil;
    self.PlayerGroup = nil;
    self.eEliPersistent = nil;
    self.eEli_NPC = nil;
    self.player = nil;
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|15465179");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_Delay_v5_45 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|67539505");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_45_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_45_TimeElapsed,
    });
    self.box_OnceOnly_v3_32 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|81458020");
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
                [0] = self.f_box_OnceOnly_v3_32_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_22 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|116620143");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_22_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_22_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_22_Failed,
        -- Out,
        [3] = self.f_box_RequestPhoneCall_v2_22_Out,
        -- Pending,
        [4] = self.f_box_RequestPhoneCall_v2_22_Pending,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_22_Started,
    });
    self.box_OnceOnly_v3_10 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|447287863");
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
                [0] = self.f_box_OnceOnly_v3_10_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|452810405");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_PhoneCallExclusivityModifier_28 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|531790405");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_28_Enabled,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|535890036");
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
    self.box_PhoneCallExclusivityModifier_27 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|562626343");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_27_Enabled,
    });
    self.box_OnceOnly_v3_35 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|759803819");
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
                [0] = self.f_box_OnceOnly_v3_35_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|812303399");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|842873694");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_34_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_25 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|874121491");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_25_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_25_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_25_Failed,
        -- Out,
        [3] = self.f_box_RequestPhoneCall_v2_25_Out,
        -- Pending,
        [4] = self.f_box_RequestPhoneCall_v2_25_Pending,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_25_Started,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|908059427");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1049424699");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_StartCelebration_3 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1252912097");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_StartCelebration_3_Started,
    });
    self.box_OnceOnly_v3_44 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1284265598");
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
                [0] = self.f_box_OnceOnly_v3_44_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1346395103");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1477609688");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1493020097");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_RequestPhoneCall_v2_11 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1499717866");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_11_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_11_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_11_Failed,
        -- Out,
        [3] = self.f_box_RequestPhoneCall_v2_11_Out,
        -- Pending,
        [4] = self.f_box_RequestPhoneCall_v2_11_Pending,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_11_Started,
    });
    self.box_CharacterLoadedIdListener_5 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1602949996");
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
    self.box_Gate_v3_16 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1621130422");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_16_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_16_Out,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1654680623");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1695638624");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1772405688");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1944806437");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_39_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_29 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1949036231");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_29_Enabled,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2010350069");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2052968640");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_OnceOnly_v3_19 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2062546338");
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
                [0] = self.f_box_OnceOnly_v3_19_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityRadiusListener_v3_2 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2110197910");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_2_AllFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_2_SomeoneNear,
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2124458848");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|869773243", "869773243", "KEY03_030_DEBRIEF_main", "In", "box_ActivityAcknowledgeGate_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_2();
    l0 = self.box_ProximityRadiusListener_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1949102209", "1949102209", "KEY03_030_DEBRIEF_main", "box_Simple_Node_23.Out", "box_ProximityRadiusListener_v3_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_CharacterLoadedIdListener_5();
    l0 = self.box_CharacterLoadedIdListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1998738740", "1998738740", "KEY03_030_DEBRIEF_main", "box_Simple_Node_23.Out", "box_CharacterLoadedIdListener_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_16();
    l0 = self.box_Delay_v5_14;
    l1 = self.box_Gate_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|226600390", "226600390", "KEY03_030_DEBRIEF_main", "box_Delay_v5_14.TimeElapsed", "box_Gate_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_45_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_45;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1434566099", "1434566099", "KEY03_030_DEBRIEF_main", "box_Delay_v5_45.Stopped", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_45_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_45;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1621372921", "1621372921", "KEY03_030_DEBRIEF_main", "box_Delay_v5_45.TimeElapsed", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_32_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_32;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2102035489", "2102035489", "KEY03_030_DEBRIEF_main", "box_OnceOnly_v3_32.Out", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_22_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_22;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|170198127", "170198127", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_22.Canceled", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_22_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_RequestPhoneCall_v2_22;
    l1 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1583666764", "1583666764", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_22.Completed", "box_Delay_v5_39.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_RequestPhoneCall_v2_22_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_22;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1903549739", "1903549739", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_22.Failed", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = self.box_RequestPhoneCall_v2_22;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|120828859", "120828859", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_22.Out", "box_Simple_Node_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_22_Pending()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_RequestPhoneCall_v2_22;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|811289593", "811289593", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_22.Pending", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_22_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_RequestPhoneCall_v2_22;
    l1 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2112311980", "2112311980", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_22.Started", "box_Delay_v5_39.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetActivityFact_8_FactNotSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1384383", "1384383", "KEY03_030_DEBRIEF_main", "box_GetActivityFact_8.FactNotSet", "box_PhoneCallExclusivityModifier_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_GetActivityFact_8_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2049862231", "2049862231", "KEY03_030_DEBRIEF_main", "box_GetActivityFact_8.FactSet", "box_PhoneCallExclusivityModifier_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OnceOnly_v3_10_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_10;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|613034530", "613034530", "KEY03_030_DEBRIEF_main", "box_OnceOnly_v3_10.Out", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_46_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_46;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|610796395", "610796395", "KEY03_030_DEBRIEF_main", "box_MultipleOR_46.Out", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PhoneCallExclusivityModifier_28_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_25();
    l0 = self.box_PhoneCallExclusivityModifier_28;
    l1 = self.box_RequestPhoneCall_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|405300301", "405300301", "KEY03_030_DEBRIEF_main", "box_PhoneCallExclusivityModifier_28.Enabled", "box_RequestPhoneCall_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_MultipleOR_18;
    l1 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1096367659", "1096367659", "KEY03_030_DEBRIEF_main", "box_MultipleOR_18.Out", "box_Delay_v5_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_27_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_22();
    l0 = self.box_PhoneCallExclusivityModifier_27;
    l1 = self.box_RequestPhoneCall_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1602342462", "1602342462", "KEY03_030_DEBRIEF_main", "box_PhoneCallExclusivityModifier_27.Enabled", "box_RequestPhoneCall_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_5();
    l0 = self.box_CharacterLoadedIdListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1464338906", "1464338906", "KEY03_030_DEBRIEF_main", "box_OutputOrder_v2_15.Out", "box_CharacterLoadedIdListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1836274980", "1836274980", "KEY03_030_DEBRIEF_main", "box_OutputOrder_v2_15.Out", "box_Delay_v5_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_35_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_35;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2024558953", "2024558953", "KEY03_030_DEBRIEF_main", "box_OnceOnly_v3_35.Out", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_26_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_26;
    l1 = self.box_OnceOnly_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1054767411", "1054767411", "KEY03_030_DEBRIEF_main", "box_MultipleOR_26.Out", "box_OnceOnly_v3_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_13_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|319065734", "319065734", "KEY03_030_DEBRIEF_main", "box_GetPlayerGroup_v2_13.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_34;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|686644500", "686644500", "KEY03_030_DEBRIEF_main", "box_Delay_v5_34.Stopped", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_34;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2092893874", "2092893874", "KEY03_030_DEBRIEF_main", "box_Delay_v5_34.TimeElapsed", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_25_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_25;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2120924519", "2120924519", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_25.Canceled", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_25_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_RequestPhoneCall_v2_25;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1830463529", "1830463529", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_25.Completed", "box_Delay_v5_34.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_RequestPhoneCall_v2_25_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_25;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|23077403", "23077403", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_25.Failed", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = self.box_RequestPhoneCall_v2_25;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1953125896", "1953125896", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_25.Out", "box_Simple_Node_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_25_Pending()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = self.box_RequestPhoneCall_v2_25;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|734019946", "734019946", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_25.Pending", "box_Simple_Node_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_25_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_RequestPhoneCall_v2_25;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1760612452", "1760612452", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_25.Started", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_9_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_9;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|669386241", "669386241", "KEY03_030_DEBRIEF_main", "box_MultipleOR_9.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_36_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_36;
    l1 = self.box_OnceOnly_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1846389452", "1846389452", "KEY03_030_DEBRIEF_main", "box_MultipleOR_36.Out", "box_OnceOnly_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StartCelebration_3_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_6();
    l0 = self.box_StartCelebration_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|175886043", "175886043", "KEY03_030_DEBRIEF_main", "box_StartCelebration_3.Started", "box_ActivityEnd_6.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_44_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_44;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|334276666", "334276666", "KEY03_030_DEBRIEF_main", "box_OnceOnly_v3_44.Out", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1726277927", "1726277927", "KEY03_030_DEBRIEF_main", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|996711503", "996711503", "KEY03_030_DEBRIEF_main", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_7_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|904699047", "904699047", "KEY03_030_DEBRIEF_main", "box_GetActivityState_v2_7.Active", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_7_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1770316600", "1770316600", "KEY03_030_DEBRIEF_main", "box_GetActivityState_v2_7.Canceled", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_7_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1087611849", "1087611849", "KEY03_030_DEBRIEF_main", "box_GetActivityState_v2_7.Completed", "box_PhoneCallExclusivityModifier_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_GetActivityState_v2_7_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|862153449", "862153449", "KEY03_030_DEBRIEF_main", "box_GetActivityState_v2_7.Failed", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_7_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1562140009", "1562140009", "KEY03_030_DEBRIEF_main", "box_GetActivityState_v2_7.Inactive", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_7_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1977883396", "1977883396", "KEY03_030_DEBRIEF_main", "box_GetActivityState_v2_7.Unavailable", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_31_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_31;
    l1 = self.box_OnceOnly_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1546572079", "1546572079", "KEY03_030_DEBRIEF_main", "box_MultipleOR_31.Out", "box_OnceOnly_v3_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_43_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_43;
    l1 = self.box_OnceOnly_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|858203591", "858203591", "KEY03_030_DEBRIEF_main", "box_MultipleOR_43.Out", "box_OnceOnly_v3_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_11_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_11;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1219317775", "1219317775", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_11.Canceled", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_11_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_RequestPhoneCall_v2_11;
    l1 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1974655159", "1974655159", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_11.Completed", "box_Delay_v5_45.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_RequestPhoneCall_v2_11_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_11;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1702292209", "1702292209", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_11.Failed", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_47();
    l0 = self.box_RequestPhoneCall_v2_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|174627229", "174627229", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_11.Out", "box_Simple_Node_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_11_Pending()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = self.box_RequestPhoneCall_v2_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|560395532", "560395532", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_11.Pending", "box_Simple_Node_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_11_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_RequestPhoneCall_v2_11;
    l1 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|752641713", "752641713", "KEY03_030_DEBRIEF_main", "box_RequestPhoneCall_v2_11.Started", "box_Delay_v5_45.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CharacterLoadedIdListener_5_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_5_LoadedIdReceived();
    params = self:OnEnter_box_ProximityRadiusListener_v3_2();
    l0 = self.box_CharacterLoadedIdListener_5;
    l1 = self.box_ProximityRadiusListener_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2059503126", "2059503126", "KEY03_030_DEBRIEF_main", "box_CharacterLoadedIdListener_5.LoadedIdReceived", "box_ProximityRadiusListener_v3_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_16_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_16;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|238859477", "238859477", "KEY03_030_DEBRIEF_main", "box_Gate_v3_16.Opened", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_16_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_16;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1303308732", "1303308732", "KEY03_030_DEBRIEF_main", "box_Gate_v3_16.Out", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_20_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_20;
    l1 = self.box_OnceOnly_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|252168273", "252168273", "KEY03_030_DEBRIEF_main", "box_MultipleOR_20.Out", "box_OnceOnly_v3_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_13();
    l0 = self.box_ActivityInitialized_1;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|506065072", "506065072", "KEY03_030_DEBRIEF_main", "box_ActivityInitialized_1.Out", "box_GetPlayerGroup_v2_13.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_3();
    l0 = self.box_Delay_v5_12;
    l1 = self.box_StartCelebration_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|349304924", "349304924", "KEY03_030_DEBRIEF_main", "box_Delay_v5_12.TimeElapsed", "box_StartCelebration_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1498653346", "1498653346", "KEY03_030_DEBRIEF_main", "box_OutputOrder_v2_21.Out", "box_Simple_Node_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|943328471", "943328471", "KEY03_030_DEBRIEF_main", "box_OutputOrder_v2_21.Out", "box_GetActivityState_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_39_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_39;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|40871151", "40871151", "KEY03_030_DEBRIEF_main", "box_Delay_v5_39.Stopped", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_39;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1597655780", "1597655780", "KEY03_030_DEBRIEF_main", "box_Delay_v5_39.TimeElapsed", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PhoneCallExclusivityModifier_29_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_11();
    l0 = self.box_PhoneCallExclusivityModifier_29;
    l1 = self.box_RequestPhoneCall_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1375165343", "1375165343", "KEY03_030_DEBRIEF_main", "box_PhoneCallExclusivityModifier_29.Enabled", "box_RequestPhoneCall_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_8();
    l0 = self.box_MultipleOR_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|580760134", "580760134", "KEY03_030_DEBRIEF_main", "box_MultipleOR_17.Out", "box_GetActivityFact_8.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_33_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_33;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1650066163", "1650066163", "KEY03_030_DEBRIEF_main", "box_MultipleOR_33.Out", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_19_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_OnceOnly_v3_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|257818698", "257818698", "KEY03_030_DEBRIEF_main", "box_OnceOnly_v3_19.Out", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_2_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_16();
    l0 = self.box_ProximityRadiusListener_v3_2;
    l1 = self.box_Gate_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1089266025", "1089266025", "KEY03_030_DEBRIEF_main", "box_ProximityRadiusListener_v3_2.AllFar", "box_Gate_v3_16.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_2_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_16();
    l0 = self.box_ProximityRadiusListener_v3_2;
    l1 = self.box_Gate_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|258089306", "258089306", "KEY03_030_DEBRIEF_main", "box_ProximityRadiusListener_v3_2.SomeoneNear", "box_Gate_v3_16.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_38_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_38;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|142245700", "142245700", "KEY03_030_DEBRIEF_main", "box_MultipleOR_38.Out", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|@DISABLE_LISTENER");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_45()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_22()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1587202278",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|337991545");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_8_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_8_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015202448829604",
        -- Fact,
        [1] = "KEY03_030_HostagesAlreadyComplete",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|693810978");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|821020722");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_25()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2975086019",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1003899801");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1087337622");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_3()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1454470547");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_7_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_7_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_7_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_7_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_7_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_7_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015221228719349",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_11()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1418808635",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1505125412");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1599894990");
    l0:SetConnections({
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
        [1] = "9015184065313905",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_16()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1680423658");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1705314333");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|1850025237");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_39()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_DEBRIEF.domino|@KEY03_030_DEBRIEF_main|2053559932");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_2()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.player,
        -- id2,
        [3] = self.eEli_NPC,
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_5_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_5;
    self.eEli_NPC = l0:GetDataOutValue(0);
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
