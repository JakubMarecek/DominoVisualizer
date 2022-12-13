LUAC	�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key02/key02_005/key02_005_b15.domino
-- User graph: KEY02_005_B15_RoadEvents
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
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B15.KEY02_005_ChaseSequence.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B20.KEY02_005_ChaseSequence.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3873557286.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.KEY02_005_B15 = nil;
    Globals.KEY02_005_B15 = {
        var_Reloaded = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B15.KEY02_005_B15_RoadEvents.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "listenToGroupSizeChange",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B15.KEY02_005_ChaseSequence.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "E_Gunner",
                type = "entity",
            },
            [1] = {
                name = "E_ModulateSTP",
                type = "entity",
            },
            [2] = {
                name = "E_Vehicle",
                type = "entity",
            },
            [3] = {
                name = "EngineBreakToggle",
                type = "bool",
            },
            [4] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B20.KEY02_005_ChaseSequence.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "E_Gunner",
                type = "entity",
            },
            [1] = {
                name = "E_ModulateSTP",
                type = "entity",
            },
            [2] = {
                name = "E_Vehicle",
                type = "entity",
            },
            [3] = {
                name = "EngineBreakToggle",
                type = "bool",
            },
            [4] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY02_005_B15_RoadEvents";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents";
    self.g_PlayerGroup = nil;
    self.box_ProximityTrigger_v2_36 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|195826628");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_36_Enter,
    });
    self.box_KEY02_005_ChaseSequence_32 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B20.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|211703872");
    l0:SetConnections({
    });
    self.box_KEY02_005_ChaseSequence_1 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B15.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|238628671");
    l0:SetConnections({
    });
    self.box_KEY02_005_ChaseSequence_29 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B20.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|278542237");
    l0:SetConnections({
    });
    self.box_KEY02_005_ChaseSequence_18 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B15.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|279476212");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_26 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|349355092");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_26_Enter,
    });
    self.box_KEY02_005_ChaseSequence_27 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B20.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|670985392");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_20 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|708268673");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_20_Enter,
    });
    self.box_ProximityTrigger_v2_7 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|796656262");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_7_Enter,
    });
    self.box_KEY02_005_ChaseSequence_28 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B20.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|838863058");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_4 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|899699723");
    l0:SetConnections({
    });
    self.box_KEY02_005_ChaseSequence_12 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B15.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|970686699");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_13 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|975644633");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_13_Enter,
    });
    self.box_ProximityTrigger_v2_41 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|981916457");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_41_Enter,
    });
    self.box_KEY02_005_ChaseSequence_30 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B20.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1043524890");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_23 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1066813722");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_23_Enter,
    });
    self.box_KEY02_005_ChaseSequence_24 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B20.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1333428857");
    l0:SetConnections({
    });
    self.box_KEY02_005_ChaseSequence_40 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B20.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1337896378");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_10 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1416012405");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_10_Enter,
    });
    self.box_ProximityTrigger_v2_6 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1480045724");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_6_Enter,
    });
    self.box_KEY02_005_ChaseSequence_22 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B20.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1697665561");
    l0:SetConnections({
    });
    self.box_KEY02_005_ChaseSequence_8 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B15.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1747021030");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_17 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1747683111");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_17_Enter,
    });
    self.box_ProximityTrigger_v2_9 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1846324274");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_9_Enter,
    });
    self.box_KEY02_005_ChaseSequence_39 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B20.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1851298637");
    l0:SetConnections({
    });
    self.box_KEY02_005_ChaseSequence_15 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B15.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1884990269");
    l0:SetConnections({
    });
    self.box_KEY02_005_ChaseSequence_14 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B15.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1962397842");
    l0:SetConnections({
    });
    self.box_KEY02_005_ChaseSequence_3 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B15.KEY02_005_ChaseSequence.debug.lua");
    l0 = self.box_KEY02_005_ChaseSequence_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_ChaseSequence_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|2132583446");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1352680782", "1352680782", "KEY02_005_B15_RoadEvents", "In", "box_OutputOrder_v2_37.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_8();
    l0 = self.box_KEY02_005_ChaseSequence_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|947140080", "947140080", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_34.Out", "box_KEY02_005_ChaseSequence_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|2014890987", "2014890987", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_19.Out", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_41();
    l0 = self.box_ProximityTrigger_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|838909926", "838909926", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_19.Out", "box_ProximityTrigger_v2_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_23();
    l0 = self.box_ProximityTrigger_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|178695164", "178695164", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_19.Out", "box_ProximityTrigger_v2_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_36();
    l0 = self.box_ProximityTrigger_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1177293241", "1177293241", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_19.Out", "box_ProximityTrigger_v2_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_20();
    l0 = self.box_ProximityTrigger_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|2073176936", "2073176936", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_19.Out", "box_ProximityTrigger_v2_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_26();
    l0 = self.box_ProximityTrigger_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1643635388", "1643635388", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_19.Out", "box_ProximityTrigger_v2_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_36_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_28();
    l0 = self.box_ProximityTrigger_v2_36;
    l1 = self.box_KEY02_005_ChaseSequence_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|914134017", "914134017", "KEY02_005_B15_RoadEvents", "box_ProximityTrigger_v2_36.Enter", "box_KEY02_005_ChaseSequence_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_26_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_32();
    l0 = self.box_ProximityTrigger_v2_26;
    l1 = self.box_KEY02_005_ChaseSequence_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|149229196", "149229196", "KEY02_005_B15_RoadEvents", "box_ProximityTrigger_v2_26.Enter", "box_KEY02_005_ChaseSequence_32.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1163261119", "1163261119", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_37.Out", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|195339440", "195339440", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_37.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_27();
    l0 = self.box_KEY02_005_ChaseSequence_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1856825964", "1856825964", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_31.Out", "box_KEY02_005_ChaseSequence_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_29();
    l0 = self.box_KEY02_005_ChaseSequence_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1239641811", "1239641811", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_31.Out", "box_KEY02_005_ChaseSequence_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_1();
    l0 = self.box_KEY02_005_ChaseSequence_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|82410457", "82410457", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_33.Out", "box_KEY02_005_ChaseSequence_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_15();
    l0 = self.box_KEY02_005_ChaseSequence_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|105750187", "105750187", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_33.Out", "box_KEY02_005_ChaseSequence_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_20_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_39();
    l0 = self.box_ProximityTrigger_v2_20;
    l1 = self.box_KEY02_005_ChaseSequence_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|2039756252", "2039756252", "KEY02_005_B15_RoadEvents", "box_ProximityTrigger_v2_20.Enter", "box_KEY02_005_ChaseSequence_39.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_40();
    l0 = self.box_KEY02_005_ChaseSequence_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|151381827", "151381827", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_25.Out", "box_KEY02_005_ChaseSequence_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_30();
    l0 = self.box_KEY02_005_ChaseSequence_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|2078914445", "2078914445", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_25.Out", "box_KEY02_005_ChaseSequence_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_24();
    l0 = self.box_KEY02_005_ChaseSequence_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|289375842", "289375842", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_25.Out", "box_KEY02_005_ChaseSequence_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_7_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_ProximityTrigger_v2_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1768126003", "1768126003", "KEY02_005_B15_RoadEvents", "box_ProximityTrigger_v2_7.Enter", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_13_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_ProximityTrigger_v2_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1118789623", "1118789623", "KEY02_005_B15_RoadEvents", "box_ProximityTrigger_v2_13.Enter", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_41_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_ProximityTrigger_v2_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|416967922", "416967922", "KEY02_005_B15_RoadEvents", "box_ProximityTrigger_v2_41.Enter", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_23_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_22();
    l0 = self.box_ProximityTrigger_v2_23;
    l1 = self.box_KEY02_005_ChaseSequence_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1667335168", "1667335168", "KEY02_005_B15_RoadEvents", "box_ProximityTrigger_v2_23.Enter", "box_KEY02_005_ChaseSequence_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_12();
    l0 = self.box_KEY02_005_ChaseSequence_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1678236795", "1678236795", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_16.Out", "box_KEY02_005_ChaseSequence_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_14();
    l0 = self.box_KEY02_005_ChaseSequence_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1379477894", "1379477894", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_16.Out", "box_KEY02_005_ChaseSequence_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_10_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_3();
    l0 = self.box_ProximityTrigger_v2_10;
    l1 = self.box_KEY02_005_ChaseSequence_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|43863005", "43863005", "KEY02_005_B15_RoadEvents", "box_ProximityTrigger_v2_10.Enter", "box_KEY02_005_ChaseSequence_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_6_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_4();
    l0 = self.box_ProximityTrigger_v2_6;
    l1 = self.box_RequestPhoneCall_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|900385060", "900385060", "KEY02_005_B15_RoadEvents", "box_ProximityTrigger_v2_6.Enter", "box_RequestPhoneCall_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_6();
    l0 = self.box_ProximityTrigger_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|500671967", "500671967", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_5.Out", "box_ProximityTrigger_v2_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_9();
    l0 = self.box_ProximityTrigger_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|177495695", "177495695", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_5.Out", "box_ProximityTrigger_v2_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_10();
    l0 = self.box_ProximityTrigger_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1489934784", "1489934784", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_5.Out", "box_ProximityTrigger_v2_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_7();
    l0 = self.box_ProximityTrigger_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|937445499", "937445499", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_5.Out", "box_ProximityTrigger_v2_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_13();
    l0 = self.box_ProximityTrigger_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|916340813", "916340813", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_5.Out", "box_ProximityTrigger_v2_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_17();
    l0 = self.box_ProximityTrigger_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|625298546", "625298546", "KEY02_005_B15_RoadEvents", "box_OutputOrder_v2_5.Out", "box_ProximityTrigger_v2_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_17_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_ProximityTrigger_v2_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|876452740", "876452740", "KEY02_005_B15_RoadEvents", "box_ProximityTrigger_v2_17.Enter", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_9_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_KEY02_005_ChaseSequence_18();
    l0 = self.box_ProximityTrigger_v2_9;
    l1 = self.box_KEY02_005_ChaseSequence_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1562620206", "1562620206", "KEY02_005_B15_RoadEvents", "box_ProximityTrigger_v2_9.Enter", "box_KEY02_005_ChaseSequence_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|9243312");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|30668488");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
                [3] = self.f_box_OutputOrder_v2_19_Out_3,
                [4] = self.f_box_OutputOrder_v2_19_Out_4,
                [5] = self.f_box_OutputOrder_v2_19_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104063227081106289",
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_32()
    local params;
    params = {
        -- E_Gunner,
        [0] = "2103291776981841192",
        -- E_ModulateSTP,
        [1] = "2104341578758786059",
        -- E_Vehicle,
        [2] = "2103291776977646884",
        -- Time,
        [4] = 10,
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_1()
    local params;
    params = {
        -- E_Gunner,
        [0] = "2102447834509912137",
        -- E_ModulateSTP,
        [1] = "2104338830466271249",
        -- E_Vehicle,
        [2] = "2102210435127202657",
        -- Time,
        [4] = 10,
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_29()
    local params;
    params = {
        -- E_Gunner,
        [0] = "2102447834509912137",
        -- E_ModulateSTP,
        [1] = "2104338830466271249",
        -- E_Vehicle,
        [2] = "2102210435127202657",
        -- Time,
        [4] = 15,
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_18()
    local params;
    params = {
        -- E_ModulateSTP,
        [1] = "2104339357413421886",
        -- E_Vehicle,
        [2] = "2103690942493008479",
        -- Time,
        [4] = 20,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102129400924369911",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|392733191");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|474880174");
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

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|526409075");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_27()
    local params;
    params = {
        -- E_Gunner,
        [0] = "2102447809503471534",
        -- E_ModulateSTP,
        [1] = "2104338906867616289",
        -- E_Vehicle,
        [2] = "2102210435133494115",
        -- Time,
        [4] = 15,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104341609469480121",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|723999029");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103760452453451245",
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_28()
    local params;
    params = {
        -- E_Gunner,
        [0] = "2104048100678058969",
        -- E_ModulateSTP,
        [1] = "2104341566584818675",
        -- E_Vehicle,
        [2] = "2104048100673864661",
        -- Time,
        [4] = 20,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_4()
    local params;
    DrawTextToScreen("Comment: Cultist : They took the Widowmaker", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Cultist : They took the Widowmaker");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3873557286",
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_12()
    local params;
    params = {
        -- E_ModulateSTP,
        [1] = "2104339014663326507",
        -- E_Vehicle,
        [2] = "2103701966354945330",
        -- Time,
        [4] = 15,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103701970018670223",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_41()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103703278339533847",
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_30()
    local params;
    params = {
        -- E_Gunner,
        [0] = "2104339987685231591",
        -- E_ModulateSTP,
        [1] = "2104340031394073984",
        -- E_Vehicle,
        [2] = "2104339987681037283",
        -- Time,
        [4] = 20,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102113774644276779",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1176271398");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_24()
    local params;
    params = {
        -- E_Gunner,
        [0] = "2102527954463498823",
        -- E_ModulateSTP,
        [1] = "2104340747879763646",
        -- E_Vehicle,
        [2] = "2102527954457207363",
        -- Time,
        [4] = 20,
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_40()
    local params;
    params = {
        -- E_Gunner,
        [0] = "2102527966134150252",
        -- E_ModulateSTP,
        [1] = "2104339990795308044",
        -- E_Vehicle,
        [2] = "2102527966129955944",
        -- Time,
        [4] = 20,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103691330384314440",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103981614838070332",
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_22()
    local params;
    params = {
        -- E_ModulateSTP,
        [1] = "2104341515795991319",
        -- E_Vehicle,
        [2] = "2102113775363600437",
        -- Time,
        [4] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RoadEvents|1703277289");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
                [4] = self.f_box_OutputOrder_v2_5_Out_4,
                [5] = self.f_box_OutputOrder_v2_5_Out_5,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_8()
    local params;
    params = {
        -- E_ModulateSTP,
        [1] = "2104338228898219076",
        -- E_Vehicle,
        [2] = "2103774565917316569",
        -- Time,
        [4] = 10,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102198638945016826",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103691342581351588",
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_39()
    local params;
    params = {
        -- E_Gunner,
        [0] = "2103291587149736659",
        -- E_ModulateSTP,
        [1] = "2104341569220938751",
        -- E_Vehicle,
        [2] = "2103291587145542351",
        -- Time,
        [4] = 10,
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_15()
    local params;
    params = {
        -- E_Gunner,
        [0] = "2102447809503471534",
        -- E_ModulateSTP,
        [1] = "2104338906867616289",
        -- E_Vehicle,
        [2] = "2102210435133494115",
        -- Time,
        [4] = 45,
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_14()
    local params;
    params = {
        -- E_ModulateSTP,
        [1] = "2104338717488498169",
        -- E_Vehicle,
        [2] = "2103702021480684169",
        -- Time,
        [4] = 15,
    };
    return params;
end;

function export:OnEnter_box_KEY02_005_ChaseSequence_3()
    local params;
    params = {
        -- E_Gunner,
        [0] = "2103693387254237785",
        -- E_ModulateSTP,
        [1] = "2104286863436035425",
        -- E_Vehicle,
        [2] = "2103690947924632204",
        -- Time,
        [4] = 20,
    };
    return params;
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
