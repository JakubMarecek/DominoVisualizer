LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni25/uni25_030/uni25_030_omni_secondgrouptracker.domino
-- User graph: UNI25_030_Omni_SecondGroupTracker
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
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI25/UNI25_030/UNI25_030_Omni_SecondGroupTracker.UNI25_030_Omni_SecondGroupObjectiveProgress.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI25/UNI25_030/UNI25_030_Omni_SecondGroupTracker.UNI25_030_Omni_SecondGroupTracker.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/PreconditionListener.lua")] = {
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
                name = "PreconditionMet",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "PreconditionId",
                type = "string",
            },
            [2] = {
                name = "TestOnEnable",
                type = "bool",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI25/UNI25_030/UNI25_030_Omni_SecondGroupTracker.UNI25_030_Omni_SecondGroupObjectiveProgress.debug.lua")] = {
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
            [0] = {
                name = "i_Destroyed",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI25_030_Omni_SecondGroupTracker";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker";
    self.iProgressID = 0;
    self.var_i_DestroyedWolfEmitters = 0;
    self.box_PreconditionListener_61 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|277771124");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_61_PreconditionMet,
    });
    self.box_OnceOnly_v3_31 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|315529892");
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
                [0] = self.f_box_OnceOnly_v3_31_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_28 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|332486401");
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
                [0] = self.f_box_OnceOnly_v3_28_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|558894958");
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
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|798932680");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|907835705");
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
    self.box_PreconditionListener_52 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1054092144");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_52_PreconditionMet,
    });
    self.box_OnceOnly_v3_15 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1140890747");
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
                [0] = self.f_box_OnceOnly_v3_15_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1263707865");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_PreconditionListener_22 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1348891980");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_22_PreconditionMet,
    });
    self.box_PreconditionListener_24 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1432078204");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_24_PreconditionMet,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1447526521");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_OnceOnly_v3_35 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1547914366");
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
    self.box_OnceOnly_v3_26 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1692988235");
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
                [0] = self.f_box_OnceOnly_v3_26_Out_0,
            },
            count = 2,
        },
    });
    self.box_PreconditionListener_63 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1719952572");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_63_PreconditionMet,
    });
    self.box_OnceOnly_v3_43 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1797978629");
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
                [0] = self.f_box_OnceOnly_v3_43_Out_0,
            },
            count = 2,
        },
    });
    self.box_UNI25_030_Omni_SecondGroupObjectiveProgress_7 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI25/UNI25_030/UNI25_030_Omni_SecondGroupTracker.UNI25_030_Omni_SecondGroupObjectiveProgress.debug.lua");
    l0 = self.box_UNI25_030_Omni_SecondGroupObjectiveProgress_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI25_030_Omni_SecondGroupObjectiveProgress_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1821655809");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI25_030_Omni_SecondGroupObjectiveProgress_7_Out,
    });
    self.box_OnceOnly_v3_3 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1883178990");
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
                [0] = self.f_box_OnceOnly_v3_3_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_23 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1897821263");
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
                [0] = self.f_box_OnceOnly_v3_23_Out_0,
            },
            count = 2,
        },
    });
    self.box_PreconditionListener_30 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|2034851211");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_30_PreconditionMet,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|2046297488", "2046297488", "UNI25_030_Omni_SecondGroupTracker", "In", "box_ActivityAcknowledgeGate_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_20();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1857037775", "1857037775", "UNI25_030_Omni_SecondGroupTracker", "box_Simple_Node_68.Out", "box_EndActivityObjective_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_65_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|973647431", "973647431", "UNI25_030_Omni_SecondGroupTracker", "box_Simple_Node_65.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityObjectiveProgress_v2_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|79736896", "79736896", "UNI25_030_Omni_SecondGroupTracker", "box_SetActivityObjectiveProgress_v2_40.Out", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_61_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_61;
    l1 = self.box_OnceOnly_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1653206093", "1653206093", "UNI25_030_Omni_SecondGroupTracker", "box_PreconditionListener_61.PreconditionMet", "box_OnceOnly_v3_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_31_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_OnceOnly_v3_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|796057250", "796057250", "UNI25_030_Omni_SecondGroupTracker", "box_OnceOnly_v3_31.Out", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_28_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_65();
    l0 = self.box_OnceOnly_v3_28;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|34265787", "34265787", "UNI25_030_Omni_SecondGroupTracker", "box_OnceOnly_v3_28.Out", "box_Simple_Node_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|984569752", "984569752", "UNI25_030_Omni_SecondGroupTracker", "box_AddActivityObjective_v2_10.Out", "box_AddActivityObjectiveProgress_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_8_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_8;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1747150753", "1747150753", "UNI25_030_Omni_SecondGroupTracker", "box_MultipleOR_8.Out", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_6_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_6;
    l1 = self.box_OnceOnly_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|547290519", "547290519", "UNI25_030_Omni_SecondGroupTracker", "box_ActivityInitialized_6.Out", "box_OnceOnly_v3_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_11_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_11;
    l1 = self.box_UNI25_030_Omni_SecondGroupObjectiveProgress_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1179773353", "1179773353", "UNI25_030_Omni_SecondGroupTracker", "box_MultipleOR_11.Out", "box_UNI25_030_Omni_SecondGroupObjectiveProgress_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PreconditionListener_52_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_52;
    l1 = self.box_OnceOnly_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1351214269", "1351214269", "UNI25_030_Omni_SecondGroupTracker", "box_PreconditionListener_52.PreconditionMet", "box_OnceOnly_v3_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_15_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_65();
    l0 = self.box_OnceOnly_v3_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1132789759", "1132789759", "UNI25_030_Omni_SecondGroupTracker", "box_OnceOnly_v3_15.Out", "box_Simple_Node_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_40();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|684801379", "684801379", "UNI25_030_Omni_SecondGroupTracker", "box_Delay_v5_19.TimeElapsed", "box_SetActivityObjectiveProgress_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_25_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_68();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|996287691", "996287691", "UNI25_030_Omni_SecondGroupTracker", "box_Compare_Integers_25.A_eq_B", "box_Simple_Node_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_25_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|2009740718", "2009740718", "UNI25_030_Omni_SecondGroupTracker", "box_Compare_Integers_25.A_gt_B", "box_OnceOnly_v3_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PreconditionListener_22_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_22;
    l1 = self.box_OnceOnly_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|652326287", "652326287", "UNI25_030_Omni_SecondGroupTracker", "box_PreconditionListener_22.PreconditionMet", "box_OnceOnly_v3_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PreconditionListener_24_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_24;
    l1 = self.box_OnceOnly_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1581505773", "1581505773", "UNI25_030_Omni_SecondGroupTracker", "box_PreconditionListener_24.PreconditionMet", "box_OnceOnly_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|54919013", "54919013", "UNI25_030_Omni_SecondGroupTracker", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|2146220680", "2146220680", "UNI25_030_Omni_SecondGroupTracker", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjectiveProgress_v2_1_Out()
    local l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|2073206628", "2073206628", "UNI25_030_Omni_SecondGroupTracker", "box_AddActivityObjectiveProgress_v2_1.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_25();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1205657302", "1205657302", "UNI25_030_Omni_SecondGroupTracker", "box_OutputOrder_v2_51.Out", "box_Compare_Integers_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_35_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_65();
    l0 = self.box_OnceOnly_v3_35;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1123287534", "1123287534", "UNI25_030_Omni_SecondGroupTracker", "box_OnceOnly_v3_35.Out", "box_Simple_Node_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_30();
    l0 = self.box_PreconditionListener_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|612371347", "612371347", "UNI25_030_Omni_SecondGroupTracker", "box_OutputOrder_v2_14.Out", "box_PreconditionListener_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_24();
    l0 = self.box_PreconditionListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1290717146", "1290717146", "UNI25_030_Omni_SecondGroupTracker", "box_OutputOrder_v2_14.Out", "box_PreconditionListener_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_61();
    l0 = self.box_PreconditionListener_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1881904818", "1881904818", "UNI25_030_Omni_SecondGroupTracker", "box_OutputOrder_v2_14.Out", "box_PreconditionListener_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_52();
    l0 = self.box_PreconditionListener_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1099261955", "1099261955", "UNI25_030_Omni_SecondGroupTracker", "box_OutputOrder_v2_14.Out", "box_PreconditionListener_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_22();
    l0 = self.box_PreconditionListener_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|2014516039", "2014516039", "UNI25_030_Omni_SecondGroupTracker", "box_OutputOrder_v2_14.Out", "box_PreconditionListener_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_63();
    l0 = self.box_PreconditionListener_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|680896908", "680896908", "UNI25_030_Omni_SecondGroupTracker", "box_OutputOrder_v2_14.Out", "box_PreconditionListener_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_26_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_65();
    l0 = self.box_OnceOnly_v3_26;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1216826499", "1216826499", "UNI25_030_Omni_SecondGroupTracker", "box_OnceOnly_v3_26.Out", "box_Simple_Node_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_63_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_63;
    l1 = self.box_OnceOnly_v3_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|329535816", "329535816", "UNI25_030_Omni_SecondGroupTracker", "box_PreconditionListener_63.PreconditionMet", "box_OnceOnly_v3_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_18();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1491196873", "1491196873", "UNI25_030_Omni_SecondGroupTracker", "box_EndActivityObjective_v2_20.Out", "box_ActivityEnd_18.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_43_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_65();
    l0 = self.box_OnceOnly_v3_43;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1721536531", "1721536531", "UNI25_030_Omni_SecondGroupTracker", "box_OnceOnly_v3_43.Out", "box_Simple_Node_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI25_030_Omni_SecondGroupObjectiveProgress_7_Out()
    local params, l0, l1;
    self:OnExit_box_UNI25_030_Omni_SecondGroupObjectiveProgress_7_Out();
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_UNI25_030_Omni_SecondGroupObjectiveProgress_7;
    l1 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1907947866", "1907947866", "UNI25_030_Omni_SecondGroupTracker", "box_UNI25_030_Omni_SecondGroupObjectiveProgress_7.Out", "box_Delay_v5_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_3_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_10();
    l0 = self.box_OnceOnly_v3_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|437193853", "437193853", "UNI25_030_Omni_SecondGroupTracker", "box_OnceOnly_v3_3.Out", "box_AddActivityObjective_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_23_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_65();
    l0 = self.box_OnceOnly_v3_23;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|218444599", "218444599", "UNI25_030_Omni_SecondGroupTracker", "box_OnceOnly_v3_23.Out", "box_Simple_Node_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_30_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_30;
    l1 = self.box_OnceOnly_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|441458339", "441458339", "UNI25_030_Omni_SecondGroupTracker", "box_PreconditionListener_30.PreconditionMet", "box_OnceOnly_v3_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|@n_AllSilosDestroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_68_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|@n_CheckObjective");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_65_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|196250088");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_40_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI25_030_B10_DestroyStations",
            id = "546330",
        },
        -- Progress,
        [1] = self.var_i_DestroyedWolfEmitters,
        -- ProgressId,
        [2] = self.iProgressID,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_61()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015218555825554",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|485745984");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_10_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI25_030_B10_DestroyStations",
            id = "546330",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_52()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015247290435671",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1074627860");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1311763513");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_25_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_25_A_gt_B,
    });
    params = {
        -- A,
        [0] = 6,
        -- B,
        [1] = self.var_i_DestroyedWolfEmitters,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_22()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015247290477798",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_24()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015218555814324",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1472618112");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_1_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI25_030_B10_DestroyStations",
            id = "546330",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 6,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1540579720");
    l0:SetDynAnchorCount({
        controlIn = {
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
            },
            count = 1,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1592574652");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
                [2] = self.f_box_OutputOrder_v2_14_Out_2,
                [3] = self.f_box_OutputOrder_v2_14_Out_3,
                [4] = self.f_box_OutputOrder_v2_14_Out_4,
                [5] = self.f_box_OutputOrder_v2_14_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_63()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015247290490810",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030\\UNI25_030_Omni_SecondGroupTracker.domino|@UNI25_030_Omni_SecondGroupTracker|1793634062");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_20_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI25_030_B10_DestroyStations",
            id = "546330",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_30()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015218555806270",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iProgressID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI25_030_Omni_SecondGroupObjectiveProgress_7_Out()
    local l0;
    l0 = self.box_UNI25_030_Omni_SecondGroupObjectiveProgress_7;
    self.var_i_DestroyedWolfEmitters = l0:GetDataOutValue(0);
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
