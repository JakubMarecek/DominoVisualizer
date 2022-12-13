LUAC�l -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni54/uni54_020_b10/uni54_020_b10.domino
-- User graph: UNI54_020_B10
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
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetStatistic.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SaveOpenWorld.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/StatisticIncrement_v2.lua");
        cboxRes:RegisterBox("Domino/System/StatisticListener.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI54/UNI54_020_B10/UNI54_020_B10.UNI54_020_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/SetInteger_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
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
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
            [3] = {
                name = "UseFloor",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "Target",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/StatisticIncrement_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Increment",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Incremented",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "increment",
                type = "int",
            },
            [1] = {
                name = "name",
                type = "string",
            },
        },
        dataInCount = 2,
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
    self._name = "UNI54_020_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10";
    self.gFriendlyPlayers = nil;
    self.ePlayer = nil;
    self.gp_size = 0;
    self.iBurnCount = 0;
    self.ProgressID_Trucks = 0;
    self.Trucks_Destroyed = 0;
    self.Trucks_Destroyed_current = 0;
    self.Trucks_needed = 5;
    self.Boats_Destroyed = 0;
    self.ProgressID_Boats = 0;
    self.Trucks_needed_Message01 = 4;
    self.Boats_Destroyed_current = 0;
    self.Boats_needed = 5;
    self.Boats_needed_Message01 = 4;
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|106432159");
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
    self.box_ActivityInitialized_27 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|442459987");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_27_Out,
    });
    self.box_StatisticListener_10 = cbox:CreateBox("Domino/System/StatisticListener.lua");
    l0 = self.box_StatisticListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StatisticListener_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|485652653");
    l0:SetConnections({
        -- Incremented,
        [2] = self.f_box_StatisticListener_10_Incremented,
    });
    self.box_MultipleAND_v2_50 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|956355725");
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
        [0] = self.f_box_MultipleAND_v2_50_Out,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1182447050");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_StatisticListener_8 = cbox:CreateBox("Domino/System/StatisticListener.lua");
    l0 = self.box_StatisticListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StatisticListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1183359675");
    l0:SetConnections({
        -- Incremented,
        [2] = self.f_box_StatisticListener_8_Incremented,
    });
    self.box_ConsoleCommand_v3_32 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1334108277");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_32_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_32_Execute,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1347109127");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_ConsoleCommand_v3_43 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1421310495");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_43_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_43_Execute,
    });
    self.box_ActivityAcknowledgeGate_28 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1727817901");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_28_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_28_Reloaded,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1770784827");
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
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1948024394", "1948024394", "UNI54_020_B10", "In", "box_ActivityAcknowledgeGate_28.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_25_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_25;
    l1 = self.box_ActivityInitialized_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|240362376", "240362376", "UNI54_020_B10", "box_MultipleOR_25.Out", "box_ActivityInitialized_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetActivityObjectiveProgress_v2_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_58();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1587980479", "1587980479", "UNI54_020_B10", "box_SetActivityObjectiveProgress_v2_20.Out", "box_EndActivityObjective_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_40_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_54();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|854942794", "854942794", "UNI54_020_B10", "box_Compare_Integers_40.A_lt_B", "box_SetInteger_v2_54.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_44_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_57();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|861757044", "861757044", "UNI54_020_B10", "box_AddActivityObjectiveProgress_v2_44.Out", "box_SetActivityObjectiveProgress_v2_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_54_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_54_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_47();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1841267325", "1841267325", "UNI54_020_B10", "box_SetInteger_v2_54.Out", "box_SetActivityObjectiveProgress_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_30_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_30_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|286144150", "286144150", "UNI54_020_B10", "box_SetInteger_v2_30.Out", "box_SetActivityObjectiveProgress_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_ActivityInitialized_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1644076608", "1644076608", "UNI54_020_B10", "box_ActivityInitialized_27.Out", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_26_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_26_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_12();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|870321116", "870321116", "UNI54_020_B10", "box_GetStatistic_26.ValueGot", "box_Compare_Integers_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StatisticListener_10_Incremented()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_39();
    l0 = self.box_StatisticListener_10;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1888519372", "1888519372", "UNI54_020_B10", "box_StatisticListener_10.Incremented", "box_GetStatistic_39.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_33_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_33_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_20();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1037047788", "1037047788", "UNI54_020_B10", "box_AddActivityObjectiveProgress_v2_33.Out", "box_SetActivityObjectiveProgress_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_59();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1029932666", "1029932666", "UNI54_020_B10", "box_SetActivityObjectiveProgress_v2_55.Out", "box_EndActivityObjective_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_35_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_35_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_9();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|317663718", "317663718", "UNI54_020_B10", "box_GetStatistic_35.ValueGot", "box_Compare_Integers_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_59_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|747436043", "747436043", "UNI54_020_B10", "box_EndActivityObjective_v2_59.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_MultipleAND_v2_50;
    l1 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|236365140", "236365140", "UNI54_020_B10", "box_MultipleAND_v2_50.Out", "box_Delay_v5_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_48_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_52();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1591938277", "1591938277", "UNI54_020_B10", "box_Compare_Integers_48.A_ge_B", "box_SetInteger_v2_52.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_48_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_40();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|400011963", "400011963", "UNI54_020_B10", "box_Compare_Integers_48.A_lt_B", "box_Compare_Integers_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_29();
    l0 = self.box_Delay_v5_13;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1529173982", "1529173982", "UNI54_020_B10", "box_Delay_v5_13.TimeElapsed", "box_ActivityEnd_29.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StatisticListener_8_Incremented()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_22();
    l0 = self.box_StatisticListener_8;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|662378694", "662378694", "UNI54_020_B10", "box_StatisticListener_8.Incremented", "box_GetStatistic_22.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|518577794", "518577794", "UNI54_020_B10", "box_EndActivityObjective_v2_6.Out", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_44();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1816082411", "1816082411", "UNI54_020_B10", "box_AddActivityObjective_v2_41.Out", "box_AddActivityObjectiveProgress_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_12_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|300874905", "300874905", "UNI54_020_B10", "box_Compare_Integers_12.A_ge_B", "box_AddActivityObjective_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_12_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1290438466", "1290438466", "UNI54_020_B10", "box_Compare_Integers_12.A_lt_B", "box_AddActivityObjective_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_58_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|286406860", "286406860", "UNI54_020_B10", "box_EndActivityObjective_v2_58.Out", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ConsoleCommand_v3_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StatisticListener_8();
    l0 = self.box_ConsoleCommand_v3_32;
    l1 = self.box_StatisticListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|502343456", "502343456", "UNI54_020_B10", "box_ConsoleCommand_v3_32.Enabled", "box_StatisticListener_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_32_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_StatisticIncrement_v2_5();
    l0 = self.box_ConsoleCommand_v3_32;
    l1 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1713132107", "1713132107", "UNI54_020_B10", "box_ConsoleCommand_v3_32.Execute", "box_StatisticIncrement_v2_5.Increment", l0:GetLuaBox(), l1:GetLuaBox());
    -- Increment
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_50();
    l0 = self.box_MultipleOR_17;
    l1 = self.box_MultipleAND_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|279770691", "279770691", "UNI54_020_B10", "box_MultipleOR_17.Out", "box_MultipleAND_v2_50.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Compare_Integers_21_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_30();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1812245359", "1812245359", "UNI54_020_B10", "box_Compare_Integers_21.A_ge_B", "box_SetInteger_v2_30.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_21_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_18();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1924482796", "1924482796", "UNI54_020_B10", "box_Compare_Integers_21.A_lt_B", "box_Compare_Integers_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_34();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1865764031", "1865764031", "UNI54_020_B10", "box_AddActivityObjective_v2_19.Out", "box_AddActivityObjectiveProgress_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_43_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StatisticListener_10();
    l0 = self.box_ConsoleCommand_v3_43;
    l1 = self.box_StatisticListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1139096130", "1139096130", "UNI54_020_B10", "box_ConsoleCommand_v3_43.Enabled", "box_StatisticListener_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_43_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_StatisticIncrement_v2_53();
    l0 = self.box_ConsoleCommand_v3_43;
    l1 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1705486524", "1705486524", "UNI54_020_B10", "box_ConsoleCommand_v3_43.Execute", "box_StatisticIncrement_v2_53.Increment", l0:GetLuaBox(), l1:GetLuaBox());
    -- Increment
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|150372533", "150372533", "UNI54_020_B10", "box_AddActivityObjective_v2_11.Out", "box_AddActivityObjectiveProgress_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_52_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_52_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_51();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1511210239", "1511210239", "UNI54_020_B10", "box_SetInteger_v2_52.Out", "box_SetActivityObjectiveProgress_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|546605300", "546605300", "UNI54_020_B10", "box_EndActivityObjective_v2_45.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetStatistic_22_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_22_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_SaveOpenWorldBox_7();
    l0 = Boxes[GetPathID("Domino/System/SaveOpenWorld.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|934187730", "934187730", "UNI54_020_B10", "box_GetStatistic_22.ValueGot", "box_SaveOpenWorldBox_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_39_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_39_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_SaveOpenWorldBox_14();
    l0 = Boxes[GetPathID("Domino/System/SaveOpenWorld.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|439936716", "439936716", "UNI54_020_B10", "box_GetStatistic_39.ValueGot", "box_SaveOpenWorldBox_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_45();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1326440666", "1326440666", "UNI54_020_B10", "box_SetActivityObjectiveProgress_v2_24.Out", "box_EndActivityObjective_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_28_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_28;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1121954107", "1121954107", "UNI54_020_B10", "box_ActivityAcknowledgeGate_28.Acknowledged", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_28_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_28;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|319685398", "319685398", "UNI54_020_B10", "box_ActivityAcknowledgeGate_28.Reloaded", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjectiveProgress_v2_2_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1705755136", "1705755136", "UNI54_020_B10", "box_AddActivityObjectiveProgress_v2_2.Out", "box_SetActivityObjectiveProgress_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1067125736", "1067125736", "UNI54_020_B10", "box_SetActivityObjectiveProgress_v2_51.Out", "box_EndActivityObjective_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_50();
    l0 = self.box_MultipleOR_16;
    l1 = self.box_MultipleAND_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|849013112", "849013112", "UNI54_020_B10", "box_MultipleOR_16.Out", "box_MultipleAND_v2_50.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Compare_Integers_9_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1756315838", "1756315838", "UNI54_020_B10", "box_Compare_Integers_9.A_ge_B", "box_AddActivityObjective_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_9_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_41();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|2094877855", "2094877855", "UNI54_020_B10", "box_Compare_Integers_9.A_lt_B", "box_AddActivityObjective_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_3_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_32();
    l0 = self.box_ConsoleCommand_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|881375331", "881375331", "UNI54_020_B10", "box_SetActivityObjectiveProgress_v2_3.Out", "box_ConsoleCommand_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_34_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_55();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|132317849", "132317849", "UNI54_020_B10", "box_AddActivityObjectiveProgress_v2_34.Out", "box_SetActivityObjectiveProgress_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_43();
    l0 = self.box_ConsoleCommand_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|269974446", "269974446", "UNI54_020_B10", "box_SetActivityObjectiveProgress_v2_57.Out", "box_ConsoleCommand_v3_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SaveOpenWorldBox_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SaveOpenWorld.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_48();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|470535492", "470535492", "UNI54_020_B10", "box_SaveOpenWorldBox_14.Out", "box_Compare_Integers_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_18_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_1();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|577627416", "577627416", "UNI54_020_B10", "box_Compare_Integers_18.A_lt_B", "box_SetInteger_v2_1.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SaveOpenWorldBox_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SaveOpenWorld.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_21();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|316149343", "316149343", "UNI54_020_B10", "box_SaveOpenWorldBox_7.Out", "box_Compare_Integers_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_26();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1364468061", "1364468061", "UNI54_020_B10", "box_OutputOrder_v2_36.Out", "box_GetStatistic_26.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_35();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1719396620", "1719396620", "UNI54_020_B10", "box_OutputOrder_v2_36.Out", "box_GetStatistic_35.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_1_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|413043698", "413043698", "UNI54_020_B10", "box_SetInteger_v2_1.Out", "box_SetActivityObjectiveProgress_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1389670322", "1389670322", "UNI54_020_B10", "box_AddActivityObjective_v2_4.Out", "box_AddActivityObjectiveProgress_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|216239979");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_20_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ3",
            id = "820150",
        },
        -- Progress,
        [1] = self.Boats_Destroyed,
        -- ProgressId,
        [2] = self.ProgressID_Boats,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|246423737");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_40_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Boats_Destroyed,
        -- B,
        [1] = self.Boats_Destroyed_current,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|323744757");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_44_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ3",
            id = "820150",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|342628345");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_54_Out,
    });
    params = {
        -- Integer,
        [1] = self.Boats_Destroyed_current,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|386320787");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_30_Out,
    });
    params = {
        -- Integer,
        [1] = self.Trucks_Destroyed_current,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|481817022");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_26_ValueGot,
    });
    params = {
        -- name,
        [0] = "World_EncounterFaithRegionFlowerTruckCompleted",
    };
    return params;
end;

function export:OnEnter_box_StatisticListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- statisticName,
        [1] = "World_EncounterFaithRegionDrugBoatCompleted",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|516165221");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_33_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ3",
            id = "820150",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|554451687");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_55_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ2",
            id = "820149",
        },
        -- Progress,
        [1] = self.Trucks_Destroyed,
        -- ProgressId,
        [2] = self.ProgressID_Trucks,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|580391698");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_35_ValueGot,
    });
    params = {
        -- name,
        [0] = "World_EncounterFaithRegionDrugBoatCompleted",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|799868841");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ3",
            id = "820150",
        },
        -- Progress,
        [1] = self.Boats_Destroyed,
        -- ProgressId,
        [2] = self.ProgressID_Boats,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|867413502");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_59_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ2",
            id = "820149",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_50()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_StatisticIncrement_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StatisticIncrement_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1063527874");
    l0:SetConnections({
    });
    params = {
        -- increment,
        [0] = 1,
        -- name,
        [1] = "World_EncounterFaithRegionFlowerTruckCompleted",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1139535855");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_48_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_48_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Boats_Destroyed_current,
        -- B,
        [1] = self.Boats_needed,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_StatisticListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- statisticName,
        [1] = "World_EncounterFaithRegionFlowerTruckCompleted",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1230795285");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_6_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ3",
            id = "820150",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1249934037");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_41_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ3",
            id = "820150",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_StatisticIncrement_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StatisticIncrement_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1281694484");
    l0:SetConnections({
    });
    params = {
        -- increment,
        [0] = 1,
        -- name,
        [1] = "World_EncounterFaithRegionDrugBoatCompleted",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1286346018");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_12_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_12_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Trucks_Destroyed,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1331844749");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_58_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ3",
            id = "820150",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_32()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "addtruck",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1359695341");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_21_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_21_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Trucks_Destroyed_current,
        -- B,
        [1] = self.Trucks_needed,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1397631329");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_19_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ2",
            id = "820149",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_43()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "addBoat",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1432946925");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_11_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ3",
            id = "820150",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1484008137");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_52_Out,
    });
    params = {
        -- Integer,
        [1] = self.Boats_Destroyed_current,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1577729117");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_45_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ2",
            id = "820149",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1579993809");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1605931561");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_22_ValueGot,
    });
    params = {
        -- name,
        [0] = "World_EncounterFaithRegionFlowerTruckCompleted",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1624151841");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_39_ValueGot,
    });
    params = {
        -- name,
        [0] = "World_EncounterFaithRegionDrugBoatCompleted",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1727326091");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_24_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ2",
            id = "820149",
        },
        -- Progress,
        [1] = self.Trucks_Destroyed,
        -- ProgressId,
        [2] = self.ProgressID_Trucks,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1744156481");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ2",
            id = "820149",
        },
        -- Progress,
        [1] = self.Trucks_Destroyed,
        -- ProgressId,
        [2] = self.ProgressID_Trucks,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1762858158");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_2_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ2",
            id = "820149",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1767254721");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_51_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ3",
            id = "820150",
        },
        -- Progress,
        [1] = self.Boats_Destroyed,
        -- ProgressId,
        [2] = self.ProgressID_Boats,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1775981546");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_9_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_9_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Boats_Destroyed,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1797470888");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_3_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ2",
            id = "820149",
        },
        -- Progress,
        [1] = self.Trucks_Destroyed,
        -- ProgressId,
        [2] = self.ProgressID_Trucks,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1914224764");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_34_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ2",
            id = "820149",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1946771577");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_57_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ3",
            id = "820150",
        },
        -- Progress,
        [1] = self.Boats_Destroyed,
        -- ProgressId,
        [2] = self.ProgressID_Boats,
    };
    return params;
end;

function export:OnEnter_box_SaveOpenWorldBox_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SaveOpenWorld.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SaveOpenWorldBox_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|1977966538");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SaveOpenWorldBox_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|2027779882");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_18_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Trucks_Destroyed,
        -- B,
        [1] = self.Trucks_Destroyed_current,
    };
    return params;
end;

function export:OnEnter_box_SaveOpenWorldBox_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SaveOpenWorld.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SaveOpenWorldBox_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|2029840323");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SaveOpenWorldBox_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|2034501009");
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

function export:OnEnter_box_SetInteger_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|2036511653");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_1_Out,
    });
    params = {
        -- Integer,
        [1] = self.Trucks_Destroyed_current,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI54\\UNI54_020_B10\\UNI54_020_B10.domino|@UNI54_020_B10|2103406917");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_4_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI54_020_B10_OBJ2",
            id = "820149",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.ProgressID_Boats = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.Boats_Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.Trucks_Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_26_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self.Trucks_Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.ProgressID_Boats = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_35_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self.Boats_Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_52_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.Boats_Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_22_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self.Trucks_Destroyed_current = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_39_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self.Boats_Destroyed_current = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.ProgressID_Trucks = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.ProgressID_Trucks = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.Trucks_Destroyed = l0:GetDataOutValue(0);
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
