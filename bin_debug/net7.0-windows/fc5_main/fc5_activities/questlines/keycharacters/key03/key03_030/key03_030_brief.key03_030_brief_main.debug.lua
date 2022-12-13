LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key03/key03_030/key03_030_brief.domino
-- User graph: KEY03_030_BRIEF_main
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
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetStatistic.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StatisticListener.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1911063107.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY03/KEY03_030/KEY03_030_BRIEF.KEY03_030_BRIEF_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/GetStatistic.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetValue",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "ValueGot",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "name",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "value",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/StatisticListener.lua")] = {
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
                name = "Incremented",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "statisticName",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "incrementValue",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY03_030_BRIEF_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main";
    self.PlayerGroup = nil;
    self.eEli_NPC = nil;
    self.player = nil;
    self.Eli_Speaking_To_Player = false;
    self.hostages_rescued_current = 0;
    self.eEli = nil;
    self.box_StatisticListener_9 = cbox:CreateBox("Domino/System/StatisticListener.lua");
    l0 = self.box_StatisticListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StatisticListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|95836842");
    l0:SetConnections({
        -- Incremented,
        [2] = self.f_box_StatisticListener_9_Incremented,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|129742721");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|170628032");
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
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|336676261");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|410996273");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_OnceOnly_v3_20 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|706348893");
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
                [0] = self.f_box_OnceOnly_v3_20_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|756527659");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|837799415");
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
    self.box_ProximityRadiusListener_v3_22 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|845608632");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_22_AllFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_22_SomeoneNear,
    });
    self.box_Gate_v3_24 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1392517379");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_24_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_24_Out,
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1419132910");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_36_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_13 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1456355525");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_13_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_13_Reloaded,
    });
    self.box_PhoneCallExclusivityModifier_21 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1509233627");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_21_Enabled,
    });
    self.box_CharacterLoadedIdListener_28 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1569689923");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_28_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_28_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_28_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_28_LoadedIdReceived,
    });
    self.box_RequestPhoneCall_v2_1 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1711982393");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_1_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_1_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_1_Failed,
        -- Out,
        [3] = self.f_box_RequestPhoneCall_v2_1_Out,
        -- Pending,
        [4] = self.f_box_RequestPhoneCall_v2_1_Pending,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_1_Started,
    });
    self.box_ActivityInitialized_10 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1726849351");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_10_Out,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|2040818286");
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
    self.box_OnceOnly_v3_34 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|2109525232");
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
                [0] = self.f_box_OnceOnly_v3_34_Out_0,
            },
            count = 2,
        },
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|460359171", "460359171", "KEY03_030_BRIEF_main", "In", "box_ActivityAcknowledgeGate_13.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_22();
    l0 = self.box_ProximityRadiusListener_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|665078576", "665078576", "KEY03_030_BRIEF_main", "box_Simple_Node_19.Out", "box_ProximityRadiusListener_v3_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_CharacterLoadedIdListener_28();
    l0 = self.box_CharacterLoadedIdListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1897308139", "1897308139", "KEY03_030_BRIEF_main", "box_Simple_Node_19.Out", "box_CharacterLoadedIdListener_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_StatisticListener_9_Incremented()
    local l0, l1;
    l0 = self.box_StatisticListener_9;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|779373085", "779373085", "KEY03_030_BRIEF_main", "box_StatisticListener_9.Incremented", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1761499577", "1761499577", "KEY03_030_BRIEF_main", "box_OutputOrder_v2_27.Out", "box_Delay_v5_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_28();
    l0 = self.box_CharacterLoadedIdListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1248094480", "1248094480", "KEY03_030_BRIEF_main", "box_OutputOrder_v2_27.Out", "box_CharacterLoadedIdListener_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_6();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1204187656", "1204187656", "KEY03_030_BRIEF_main", "box_MultipleOR_16.Out", "box_GetStatistic_6.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_31_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_31;
    l1 = self.box_OnceOnly_v3_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1778074305", "1778074305", "KEY03_030_BRIEF_main", "box_MultipleOR_31.Out", "box_OnceOnly_v3_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|696731043", "696731043", "KEY03_030_BRIEF_main", "box_Delay_v5_29.TimeElapsed", "box_Gate_v3_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_25_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_25;
    l1 = self.box_OnceOnly_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1137847692", "1137847692", "KEY03_030_BRIEF_main", "box_MultipleOR_25.Out", "box_OnceOnly_v3_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_20_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_OnceOnly_v3_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|2102677933", "2102677933", "KEY03_030_BRIEF_main", "box_OnceOnly_v3_20.Out", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_37_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_37;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1818303574", "1818303574", "KEY03_030_BRIEF_main", "box_MultipleOR_37.Out", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1341964210", "1341964210", "KEY03_030_BRIEF_main", "box_MultipleOR_8.Out", "box_ActivityEnd_4.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_22_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_ProximityRadiusListener_v3_22;
    l1 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|39377106", "39377106", "KEY03_030_BRIEF_main", "box_ProximityRadiusListener_v3_22.AllFar", "box_Gate_v3_24.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_22_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_ProximityRadiusListener_v3_22;
    l1 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|893688659", "893688659", "KEY03_030_BRIEF_main", "box_ProximityRadiusListener_v3_22.SomeoneNear", "box_Gate_v3_24.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1612946590", "1612946590", "KEY03_030_BRIEF_main", "box_OutputOrder_v2_17.Out", "box_PhoneCallExclusivityModifier_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|809163120", "809163120", "KEY03_030_BRIEF_main", "box_OutputOrder_v2_17.Out", "box_Simple_Node_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_6_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_6_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_5();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1521852718", "1521852718", "KEY03_030_BRIEF_main", "box_GetStatistic_6.ValueGot", "box_Compare_Integers_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_5_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|2084551741", "2084551741", "KEY03_030_BRIEF_main", "box_Compare_Integers_5.A_ge_B", "box_SetActivityFact_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_5_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_23();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1446116877", "1446116877", "KEY03_030_BRIEF_main", "box_Compare_Integers_5.A_lt_B", "box_GetPlayerGroup_v2_23.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_24_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_24;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1976485953", "1976485953", "KEY03_030_BRIEF_main", "box_Gate_v3_24.Opened", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_24_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_24;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1941501570", "1941501570", "KEY03_030_BRIEF_main", "box_Gate_v3_24.Out", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_36_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_36;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|786837213", "786837213", "KEY03_030_BRIEF_main", "box_Delay_v5_36.Stopped", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_36;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1109684466", "1109684466", "KEY03_030_BRIEF_main", "box_Delay_v5_36.TimeElapsed", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityAcknowledgeGate_13_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_13;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1294412690", "1294412690", "KEY03_030_BRIEF_main", "box_ActivityAcknowledgeGate_13.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_13_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_13;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1678754093", "1678754093", "KEY03_030_BRIEF_main", "box_ActivityAcknowledgeGate_13.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PhoneCallExclusivityModifier_21_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_1();
    l0 = self.box_PhoneCallExclusivityModifier_21;
    l1 = self.box_RequestPhoneCall_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1877160354", "1877160354", "KEY03_030_BRIEF_main", "box_PhoneCallExclusivityModifier_21.Enabled", "box_RequestPhoneCall_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_28_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_28_LoadedIdReceived();
    params = self:OnEnter_box_ProximityRadiusListener_v3_22();
    l0 = self.box_CharacterLoadedIdListener_28;
    l1 = self.box_ProximityRadiusListener_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1381671283", "1381671283", "KEY03_030_BRIEF_main", "box_CharacterLoadedIdListener_28.LoadedIdReceived", "box_ProximityRadiusListener_v3_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetActivityFact_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1844562925", "1844562925", "KEY03_030_BRIEF_main", "box_SetActivityFact_2.Out", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_1_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_1;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|207305945", "207305945", "KEY03_030_BRIEF_main", "box_RequestPhoneCall_v2_1.Canceled", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_1_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_RequestPhoneCall_v2_1;
    l1 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1419588225", "1419588225", "KEY03_030_BRIEF_main", "box_RequestPhoneCall_v2_1.Completed", "box_Delay_v5_36.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_RequestPhoneCall_v2_1_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_1;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1872873411", "1872873411", "KEY03_030_BRIEF_main", "box_RequestPhoneCall_v2_1.Failed", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_RequestPhoneCall_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1968971714", "1968971714", "KEY03_030_BRIEF_main", "box_RequestPhoneCall_v2_1.Out", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_1_Pending()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_35();
    l0 = self.box_RequestPhoneCall_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1933517049", "1933517049", "KEY03_030_BRIEF_main", "box_RequestPhoneCall_v2_1.Pending", "box_Simple_Node_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_RequestPhoneCall_v2_1;
    l1 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1702167292", "1702167292", "KEY03_030_BRIEF_main", "box_RequestPhoneCall_v2_1.Started", "box_Delay_v5_36.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityInitialized_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StatisticListener_9();
    l0 = self.box_ActivityInitialized_10;
    l1 = self.box_StatisticListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1501322735", "1501322735", "KEY03_030_BRIEF_main", "box_ActivityInitialized_10.Out", "box_StatisticListener_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_23_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1130421145", "1130421145", "KEY03_030_BRIEF_main", "box_GetPlayerGroup_v2_23.Out", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1940443039", "1940443039", "KEY03_030_BRIEF_main", "box_MultipleOR_3.Out", "box_ActivityInitialized_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OnceOnly_v3_34_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_34;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1779900292", "1779900292", "KEY03_030_BRIEF_main", "box_OnceOnly_v3_34.Out", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|@DisableListeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_19_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StatisticListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- statisticName,
        [1] = "General_TotalHostagesRescued_Jacob",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|117172043");
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

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|141451179");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|536837152");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|734271376");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_22()
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

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1234743391");
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

function export:OnEnter_box_GetStatistic_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1352546566");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_6_ValueGot,
    });
    params = {
        -- name,
        [0] = "General_TotalHostagesRescued_Jacob",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1375529614");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_5_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_5_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.hostages_rescued_current,
        -- B,
        [1] = 20,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_24()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184065313905",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1599057822");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_2_Out,
    });
    params = {
        -- Fact,
        [0] = "KEY03_030_HostagesAlreadyComplete",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_1()
    local params;
    params = {
        -- Delay,
        [2] = 4,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1911063107",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_030\\KEY03_030_BRIEF.domino|@KEY03_030_BRIEF_main|1970068399");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetStatistic_6_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self.hostages_rescued_current = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_28_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_28;
    self.eEli_NPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.player = l0:GetDataOutValue(0);
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
