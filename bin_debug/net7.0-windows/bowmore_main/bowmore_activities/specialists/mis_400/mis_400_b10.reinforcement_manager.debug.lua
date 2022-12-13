LUAC1y -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_400/mis_400_b10.domino
-- User graph: Reinforcement_Manager
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
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2073053573.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4121960318.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_400_B10 = nil;
    Globals.MIS_400_B10 = {
        bB05Completed = false,
        bTwoOnThree = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_400/MIS_400_B10.Reinforcement_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In_Detected",
            },
            [1] = {
                name = "In_Stealth",
            },
            [2] = {
                name = "SkipIsConfirmed",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "EveryoneIsDead",
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
    metadataTable[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Success",
                type = "bool",
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
                name = "othersSpawned",
                type = "list",
            },
            [2] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Reinforcement_Manager";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager";
    self.EveryoneIsDead = DummyFunction;
    self.iCount = 0;
    self.iReinforcementRemain = 0;
    self.bStopReinforcement = false;
    self.iNbOfParts = 0;
    self.box_SpawnAI_2 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|26546923");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_2_Out,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|231990220");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|242778881");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_GroupSizeListener_v6_6 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|297540591");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_6_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_6_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_6_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_6_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_6_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_6_MemberSpawned,
    });
    self.box_GroupSizeListener_v6_64 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|325511882");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_64_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_64_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_64_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_64_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_64_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_64_MemberSpawned,
    });
    self.box_Gate_v3_34 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|532876525");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_34_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_34_Out,
    });
    self.box_SpawnAI_28 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|537790917");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_28_Out,
    });
    self.box_GroupSizeListener_v6_8 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|678706291");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_8_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_8_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_8_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_8_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_8_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_8_MemberSpawned,
    });
    self.box_SpawnAI_79 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|709597471");
    l0:SetConnections({
    });
    self.box_Delay_v5_81 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|713123933");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_81_TimeElapsed,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|761252271");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_OnceOnly_v3_83 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|859145418");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_83_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_12 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|961609068");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_12_Out_0,
            },
            count = 1,
        },
    });
    self.box_Gate_v3_3 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1044433030");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_3_Out,
    });
    self.box_SpawnAI_11 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1077928776");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_11_Out,
    });
    self.box_GroupSizeListener_v6_77 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1088160472");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_77_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_77_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_77_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_77_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_77_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_77_MemberSpawned,
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1103942037");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_Gate_v3_36 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1133667632");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_36_Out,
    });
    self.box_OnceOnly_v3_14 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1140634176");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_14_Out_0,
            },
            count = 1,
        },
    });
    self.box_RequestPhoneCall_v2_56 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1265283822");
    l0:SetConnections({
    });
    self.box_SpawnAI_4 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1364973564");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_4_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_4_Spawned,
    });
    self.box_GroupSizeListener_v6_24 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1379028288");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_24_Disabled,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_24_MemberRemoved,
    });
    self.box_OnceOnly_v3_75 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1397109111");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_75_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1407377781");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1580086390");
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
        [0] = self.f_box_MultipleOR_82_Out,
    });
    self.box_SpawnAI_15 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1597490261");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_15_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_15_Spawned,
    });
    self.box_OnceOnly_v3_32 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1606614279");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
            count = 1,
        },
    });
    self.box_RequestPhoneCall_v2_55 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1688547704");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v6_35 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1716093341");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_35_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_35_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_35_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_35_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_35_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_35_MemberSpawned,
    });
    self.box_SpawnAI_18 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1802113569");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_18_Out,
    });
    self.box_RemoveEntity_v2_33 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1824192250");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_33_Out,
    });
    self.box_RemoveEntity_v2_68 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1883386484");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_68_Out,
    });
    self.box_Delay_v5_23 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1923372048");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_23_TimeElapsed,
    });
end;

function export:In_Detected()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_34();
    l0 = self.box_Gate_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1718040827", "1718040827", "Reinforcement_Manager", "In_Detected", "box_Gate_v3_34.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:In_Stealth()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_36();
    l0 = self.box_Gate_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1803696132", "1803696132", "Reinforcement_Manager", "In_Stealth", "box_Gate_v3_36.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:SkipIsConfirmed()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_36();
    l0 = self.box_Gate_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1216256521", "1216256521", "Reinforcement_Manager", "SkipIsConfirmed", "box_Gate_v3_36.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_34();
    l0 = self.box_Gate_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1394864555", "1394864555", "Reinforcement_Manager", "SkipIsConfirmed", "box_Gate_v3_34.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_24();
    l0 = self.box_SpawnAI_2;
    l1 = self.box_GroupSizeListener_v6_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1371710151", "1371710151", "Reinforcement_Manager", "box_SpawnAI_2.Out", "box_GroupSizeListener_v6_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_80_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|78612346", "78612346", "Reinforcement_Manager", "box_EndActivityObjective_v2_80.Out", "EveryoneIsDead", clone:GetLuaBox(), self);
    self:EveryoneIsDead();
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_56();
    l0 = self.box_Delay_v5_13;
    l1 = self.box_RequestPhoneCall_v2_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|40198803", "40198803", "Reinforcement_Manager", "box_Delay_v5_13.TimeElapsed", "box_RequestPhoneCall_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_16();
    l0 = self.box_Delay_v5_1;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|145473600", "145473600", "Reinforcement_Manager", "box_Delay_v5_1.TimeElapsed", "box_Print_v2_16.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_6_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_18();
    l0 = self.box_GroupSizeListener_v6_6;
    l1 = self.box_SpawnAI_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1591636948", "1591636948", "Reinforcement_Manager", "box_GroupSizeListener_v6_6.Disabled", "box_SpawnAI_18.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_6_Enabled()
    self:OnExit_box_GroupSizeListener_v6_6_Enabled();
end;

function export:f_box_GroupSizeListener_v6_6_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_6_MemberAdded();
    l0 = self.box_GroupSizeListener_v6_6;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|226054430", "226054430", "Reinforcement_Manager", "box_GroupSizeListener_v6_6.MemberAdded", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_6_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_6_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_6_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_6_MemberRemoved();
    l0 = self.box_GroupSizeListener_v6_6;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1176376203", "1176376203", "Reinforcement_Manager", "box_GroupSizeListener_v6_6.MemberRemoved", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_6_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_6_MemberSpawned();
end;

function export:f_box_GroupSizeListener_v6_64_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_68();
    l0 = self.box_GroupSizeListener_v6_64;
    l1 = self.box_RemoveEntity_v2_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|495715886", "495715886", "Reinforcement_Manager", "box_GroupSizeListener_v6_64.Disabled", "box_RemoveEntity_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_64_Enabled()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_64_Enabled();
    params = self:OnEnter_box_Delay_v5_81();
    l0 = self.box_GroupSizeListener_v6_64;
    l1 = self.box_Delay_v5_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1690079908", "1690079908", "Reinforcement_Manager", "box_GroupSizeListener_v6_64.Enabled", "box_Delay_v5_81.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v6_64_MemberAdded()
    self:OnExit_box_GroupSizeListener_v6_64_MemberAdded();
end;

function export:f_box_GroupSizeListener_v6_64_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_64_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_64_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_64_MemberRemoved();
    params = self:OnEnter_box_Compare_Integers_65();
    l0 = self.box_GroupSizeListener_v6_64;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|13647613", "13647613", "Reinforcement_Manager", "box_GroupSizeListener_v6_64.MemberRemoved", "box_Compare_Integers_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_64_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_64_MemberSpawned();
end;

function export:f_box_AddActivityObjective_v2_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|630306772", "630306772", "Reinforcement_Manager", "box_AddActivityObjective_v2_31.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_8();
    l0 = self.box_GroupSizeListener_v6_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|646665504", "646665504", "Reinforcement_Manager", "box_OutputOrder_v2_10.Out", "box_GroupSizeListener_v6_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1718176982", "1718176982", "Reinforcement_Manager", "box_OutputOrder_v2_10.Out", "box_Print_v2_9.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_77();
    l0 = self.box_GroupSizeListener_v6_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1995047682", "1995047682", "Reinforcement_Manager", "box_OutputOrder_v2_76.Out", "box_GroupSizeListener_v6_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_64();
    l0 = self.box_GroupSizeListener_v6_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1694276672", "1694276672", "Reinforcement_Manager", "box_OutputOrder_v2_76.Out", "box_GroupSizeListener_v6_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_34_Closed()
    local l0;
    l0 = self.box_Gate_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|51197420", "51197420", "Reinforcement_Manager", "box_Gate_v3_34.Closed", "EveryoneIsDead", l0:GetLuaBox(), self);
    self:EveryoneIsDead();
end;

function export:f_box_Gate_v3_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_Gate_v3_34;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1359746116", "1359746116", "Reinforcement_Manager", "box_Gate_v3_34.Out", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_SpawnAI_28;
    l1 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|2078795650", "2078795650", "Reinforcement_Manager", "box_SpawnAI_28.Out", "box_Delay_v5_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_AddActivityObjective_v2_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_35();
    l0 = self.box_GroupSizeListener_v6_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|407961583", "407961583", "Reinforcement_Manager", "box_AddActivityObjective_v2_5.Out", "box_GroupSizeListener_v6_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_8_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_GroupSizeListener_v6_8;
    l1 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|62516808", "62516808", "Reinforcement_Manager", "box_GroupSizeListener_v6_8.Disabled", "box_SpawnAI_11.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_8_Enabled()
    self:OnExit_box_GroupSizeListener_v6_8_Enabled();
end;

function export:f_box_GroupSizeListener_v6_8_MemberAdded()
    self:OnExit_box_GroupSizeListener_v6_8_MemberAdded();
end;

function export:f_box_GroupSizeListener_v6_8_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_8_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_8_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_8_MemberRemoved();
    params = self:OnEnter_box_Compare_Integers_26();
    l0 = self.box_GroupSizeListener_v6_8;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1664849666", "1664849666", "Reinforcement_Manager", "box_GroupSizeListener_v6_8.MemberRemoved", "box_Compare_Integers_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_8_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_8_MemberSpawned();
end;

function export:f_box_Delay_v5_81_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_81;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1547054603", "1547054603", "Reinforcement_Manager", "box_Delay_v5_81.TimeElapsed", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_22();
    l0 = self.box_MultipleOR_21;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1892062796", "1892062796", "Reinforcement_Manager", "box_MultipleOR_21.Out", "box_Compare_Integers_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_25_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_24();
    l0 = self.box_GroupSizeListener_v6_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1489731648", "1489731648", "Reinforcement_Manager", "box_Compare_Integers_25.A_le_B", "box_GroupSizeListener_v6_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|409927677", "409927677", "Reinforcement_Manager", "box_Simple_Node_38.Out", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_78_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_77();
    l0 = self.box_GroupSizeListener_v6_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|682180557", "682180557", "Reinforcement_Manager", "box_Compare_Integers_78.A_le_B", "box_GroupSizeListener_v6_77.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_83_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_64();
    l0 = self.box_OnceOnly_v3_83;
    l1 = self.box_GroupSizeListener_v6_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|70084074", "70084074", "Reinforcement_Manager", "box_OnceOnly_v3_83.Out", "box_GroupSizeListener_v6_64.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_12_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_20();
    l0 = self.box_OnceOnly_v3_12;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|188364413", "188364413", "Reinforcement_Manager", "box_OnceOnly_v3_12.Out", "box_EndActivityObjective_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_3_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_3;
    l1 = self.box_OnceOnly_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|684189926", "684189926", "Reinforcement_Manager", "box_Gate_v3_3.Out", "box_OnceOnly_v3_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_SpawnAI_11;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|991571318", "991571318", "Reinforcement_Manager", "box_SpawnAI_11.Out", "box_Delay_v5_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v6_77_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_79();
    l0 = self.box_GroupSizeListener_v6_77;
    l1 = self.box_SpawnAI_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1513569811", "1513569811", "Reinforcement_Manager", "box_GroupSizeListener_v6_77.Disabled", "box_SpawnAI_79.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_77_Enabled()
    self:OnExit_box_GroupSizeListener_v6_77_Enabled();
end;

function export:f_box_GroupSizeListener_v6_77_MemberAdded()
    self:OnExit_box_GroupSizeListener_v6_77_MemberAdded();
end;

function export:f_box_GroupSizeListener_v6_77_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_77_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_77_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_77_MemberRemoved();
    params = self:OnEnter_box_Compare_Integers_78();
    l0 = self.box_GroupSizeListener_v6_77;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1538824813", "1538824813", "Reinforcement_Manager", "box_GroupSizeListener_v6_77.MemberRemoved", "box_Compare_Integers_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_77_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_77_MemberSpawned();
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_Delay_v5_27;
    l1 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|2067302761", "2067302761", "Reinforcement_Manager", "box_Delay_v5_27.TimeElapsed", "box_SpawnAI_15.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_Gate_v3_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|96473208", "96473208", "Reinforcement_Manager", "box_Gate_v3_36.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|533854592", "533854592", "Reinforcement_Manager", "box_OutputOrder_v2_37.Out", "box_AddActivityObjective_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1812692162", "1812692162", "Reinforcement_Manager", "box_OutputOrder_v2_37.Out", "box_Delay_v5_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_14_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_35();
    l0 = self.box_OnceOnly_v3_14;
    l1 = self.box_GroupSizeListener_v6_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|637428029", "637428029", "Reinforcement_Manager", "box_OnceOnly_v3_14.Out", "box_GroupSizeListener_v6_35.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_6();
    l0 = self.box_SpawnAI_4;
    l1 = self.box_GroupSizeListener_v6_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1535264712", "1535264712", "Reinforcement_Manager", "box_SpawnAI_4.Out", "box_GroupSizeListener_v6_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_4_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_55();
    l0 = self.box_SpawnAI_4;
    l1 = self.box_RequestPhoneCall_v2_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|455574265", "455574265", "Reinforcement_Manager", "box_SpawnAI_4.Spawned", "box_RequestPhoneCall_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_24_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_GroupSizeListener_v6_24;
    l1 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|2112102797", "2112102797", "Reinforcement_Manager", "box_GroupSizeListener_v6_24.Disabled", "box_SpawnAI_28.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v6_24_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_25();
    l0 = self.box_GroupSizeListener_v6_24;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1645085453", "1645085453", "Reinforcement_Manager", "box_GroupSizeListener_v6_24.MemberRemoved", "box_Compare_Integers_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_75_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_80();
    l0 = self.box_OnceOnly_v3_75;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|975382589", "975382589", "Reinforcement_Manager", "box_OnceOnly_v3_75.Out", "box_EndActivityObjective_v2_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_2();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_SpawnAI_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1615560217", "1615560217", "Reinforcement_Manager", "box_Delay_v5_29.TimeElapsed", "box_SpawnAI_2.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_19_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1762536173", "1762536173", "Reinforcement_Manager", "box_Compare_Integers_19.A_le_B", "box_OnceOnly_v3_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_26_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_8();
    l0 = self.box_GroupSizeListener_v6_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1290394534", "1290394534", "Reinforcement_Manager", "box_Compare_Integers_26.A_le_B", "box_GroupSizeListener_v6_8.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_3();
    l0 = self.box_Gate_v3_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1100774693", "1100774693", "Reinforcement_Manager", "box_Simple_Node_17.Out", "box_Gate_v3_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_65_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1999242427", "1999242427", "Reinforcement_Manager", "box_Compare_Integers_65.A_le_B", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_82_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_82;
    l1 = self.box_OnceOnly_v3_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1386178467", "1386178467", "Reinforcement_Manager", "box_MultipleOR_82.Out", "box_OnceOnly_v3_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = self.box_SpawnAI_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|2086807402", "2086807402", "Reinforcement_Manager", "box_SpawnAI_15.Out", "box_OutputOrder_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_15_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_SpawnAI_15;
    l1 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|667731280", "667731280", "Reinforcement_Manager", "box_SpawnAI_15.Spawned", "box_Delay_v5_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_32_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_OnceOnly_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|949411092", "949411092", "Reinforcement_Manager", "box_OnceOnly_v3_32.Out", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_35_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_33();
    l0 = self.box_GroupSizeListener_v6_35;
    l1 = self.box_RemoveEntity_v2_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1609302919", "1609302919", "Reinforcement_Manager", "box_GroupSizeListener_v6_35.Disabled", "box_RemoveEntity_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_35_Enabled()
    self:OnExit_box_GroupSizeListener_v6_35_Enabled();
end;

function export:f_box_GroupSizeListener_v6_35_MemberAdded()
    self:OnExit_box_GroupSizeListener_v6_35_MemberAdded();
end;

function export:f_box_GroupSizeListener_v6_35_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_35_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_35_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_35_MemberRemoved();
    params = self:OnEnter_box_Compare_Integers_19();
    l0 = self.box_GroupSizeListener_v6_35;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|882788404", "882788404", "Reinforcement_Manager", "box_GroupSizeListener_v6_35.MemberRemoved", "box_Compare_Integers_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_35_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_35_MemberSpawned();
end;

function export:f_box_SpawnAI_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_SpawnAI_18;
    l1 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1470717408", "1470717408", "Reinforcement_Manager", "box_SpawnAI_18.Out", "box_Delay_v5_27.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_33_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_33;
    l1 = self.box_OnceOnly_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1237973128", "1237973128", "Reinforcement_Manager", "box_RemoveEntity_v2_33.Out", "box_OnceOnly_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1282259350", "1282259350", "Reinforcement_Manager", "box_EndActivityObjective_v2_20.Out", "EveryoneIsDead", clone:GetLuaBox(), self);
    self:EveryoneIsDead();
end;

function export:f_box_RemoveEntity_v2_68_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_68;
    l1 = self.box_OnceOnly_v3_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1902799061", "1902799061", "Reinforcement_Manager", "box_RemoveEntity_v2_68.Out", "box_OnceOnly_v3_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_3();
    l0 = self.box_Gate_v3_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|514932030", "514932030", "Reinforcement_Manager", "box_OutputOrder_v2_7.Out", "box_Gate_v3_3.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1177376181", "1177376181", "Reinforcement_Manager", "box_OutputOrder_v2_7.Out", "box_AddActivityObjective_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_23_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_4();
    l0 = self.box_Delay_v5_23;
    l1 = self.box_SpawnAI_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|103691616", "103691616", "Reinforcement_Manager", "box_Delay_v5_23.TimeElapsed", "box_SpawnAI_4.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_22_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_6();
    l0 = self.box_GroupSizeListener_v6_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|866129016", "866129016", "Reinforcement_Manager", "box_Compare_Integers_22.A_le_B", "box_GroupSizeListener_v6_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|8239316");
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
        [8] = "Guyz in combat yo",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_2()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107963240462962399",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|141590178");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_80_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_400_OBJ_B10_ClearSecure",
            id = "1001255",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_1()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_6()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#FB3D813C",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_64()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#FB3D813C",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|346116103");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_31_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_400_OBJ_B10_ClearSecure",
            id = "1001255",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|398909985");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|453991826");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_34()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_28()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107961377887886877",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|587794252");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_5_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_400_OBJ_B10_ClearSecure",
            id = "1001255",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_8()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#FB3D813C",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_79()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107963444692014467",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_81()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 33,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|799730055");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_25_A_le_B,
    });
    params = {
        -- A,
        [0] = self.iReinforcementRemain,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|802788597");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|802846370");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_78_A_le_B,
    });
    params = {
        -- A,
        [0] = self.iReinforcementRemain,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|805981037");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 1,
        -- int,
        [6] = self.iReinforcementRemain,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_3()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_11()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107963232055478377",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_77()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#FB3D813C",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 11,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_36()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1140282383");
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

function export:OnEnter_box_RequestPhoneCall_v2_56()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "4121960318",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_4()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107962996037797252",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_24()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#FB3D813C",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1445117297");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_19_A_le_B,
    });
    params = {
        -- A,
        [0] = self.iReinforcementRemain,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1470980263");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_26_A_le_B,
    });
    params = {
        -- A,
        [0] = self.iReinforcementRemain,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1537540020");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1557895038");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_65_A_le_B,
    });
    params = {
        -- A,
        [0] = self.iReinforcementRemain,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_15()
    local params;
    DrawTextToScreen("Comment: Helicopter reinforcement", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: Helicopter reinforcement");
    params = {
        -- EntitySpawner,
        [0] = "2108999678604349278",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_55()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2073053573",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_35()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#FB3D813C",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_18()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107963444692014467",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_33()
    local params;
    params = {
        -- Group,
        [0] = "2108019031792424853",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1847559448");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_20_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_400_OBJ_B10_ClearSecure",
            id = "1001255",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_68()
    local params;
    params = {
        -- Group,
        [0] = "2108019031792424853",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1891887749");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_23()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_400\\MIS_400_B10.domino|@Reinforcement_Manager|1960055314");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_22_A_le_B,
    });
    params = {
        -- A,
        [0] = self.iReinforcementRemain,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnExit_box_GroupSizeListener_v6_6_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_6;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_6_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_6;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_6_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_6;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_6_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_6;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_6_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_6;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_64_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_64;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_64_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_64;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_64_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_64;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_64_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_64;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_64_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_64;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_8_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_8;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_8_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_8;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_8_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_8;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_8_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_8;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_8_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_8;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_77_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_77;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_77_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_77;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_77_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_77;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_77_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_77;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_77_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_77;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_35_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_35;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_35_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_35;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_35_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_35;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_35_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_35;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_35_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_35;
    self.iReinforcementRemain = l0:GetDataOutValue(1);
end;

-- Empty out anchor definitions
function export:EveryoneIsDead()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In_Detected" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Stealth" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SkipIsConfirmed" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="EveryoneIsDead" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
