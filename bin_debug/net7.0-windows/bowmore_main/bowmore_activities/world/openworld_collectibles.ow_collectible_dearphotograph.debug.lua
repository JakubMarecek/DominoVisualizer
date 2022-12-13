LUAC�= -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/world/openworld_collectibles.domino
-- User graph: OW_Collectible_DearPhotograph
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/World/OpenWorld_Collectibles.OW_Collectible_DearPhotograph.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NotValid",
                delayed = false,
            },
            [1] = {
                name = "Valid",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PreconditionId",
                type = "database",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/PreconditionListener_v2.lua")] = {
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
                type = "database",
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
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
            [0] = {
                name = "Result",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "OW_Collectible_DearPhotograph";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph";
    self.iProgress = 0;
    self.box_PreconditionListener_v2_47 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|16429189");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_47_PreconditionMet,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|206592026");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|434865132");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|504241632");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_PreconditionListener_v2_29 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|515663401");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_29_PreconditionMet,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|536640625");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_PreconditionListener_v2_41 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|540696630");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_41_PreconditionMet,
    });
    self.box_PreconditionListener_v2_17 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|596752354");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_17_PreconditionMet,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|607002413");
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
        [0] = self.f_box_MultipleOR_30_Out,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|619697424");
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|669780225");
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
    self.box_PreconditionListener_v2_50 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|840797104");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_50_PreconditionMet,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1013143965");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1048021457");
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
        [0] = self.f_box_MultipleOR_57_Out,
    });
    self.box_PreconditionListener_v2_5 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1405719013");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_5_PreconditionMet,
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1410264443");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_PreconditionListener_v2_44 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1608477152");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_44_PreconditionMet,
    });
    self.box_PreconditionListener_v2_56 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1670952608");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_56_PreconditionMet,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1690696817");
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
    self.box_PreconditionListener_v2_23 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1701558193");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_23_PreconditionMet,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1847919531");
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
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1862799054");
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
        [0] = self.f_box_MultipleOR_48_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1666703116", "1666703116", "OW_Collectible_DearPhotograph", "In", "box_ActivityAcknowledgeGate_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1986770156", "1986770156", "OW_Collectible_DearPhotograph", "OnLeaveZone", "box_ActivityRetry_v2_7.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_60_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_11();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1721582244", "1721582244", "OW_Collectible_DearPhotograph", "box_Simple_Node_60.Out", "box_IntegerArithmetics_v2_11.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_v2_47_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_v2_47;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|224039578", "224039578", "OW_Collectible_DearPhotograph", "box_PreconditionListener_v2_47.PreconditionMet", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = self.box_MultipleOR_45;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|134492755", "134492755", "OW_Collectible_DearPhotograph", "box_MultipleOR_45.Out", "box_Simple_Node_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_9();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|634839640", "634839640", "OW_Collectible_DearPhotograph", "box_OutputOrder_v2_58.Out", "box_GetPreconditionState_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_19();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1658821550", "1658821550", "OW_Collectible_DearPhotograph", "box_OutputOrder_v2_58.Out", "box_GetPreconditionState_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_25();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1033059104", "1033059104", "OW_Collectible_DearPhotograph", "box_OutputOrder_v2_58.Out", "box_GetPreconditionState_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_31();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|504077662", "504077662", "OW_Collectible_DearPhotograph", "box_OutputOrder_v2_58.Out", "box_GetPreconditionState_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_43();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1466851771", "1466851771", "OW_Collectible_DearPhotograph", "box_OutputOrder_v2_58.Out", "box_GetPreconditionState_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_46();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1340441343", "1340441343", "OW_Collectible_DearPhotograph", "box_OutputOrder_v2_58.Out", "box_GetPreconditionState_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_49();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1670708548", "1670708548", "OW_Collectible_DearPhotograph", "box_OutputOrder_v2_58.Out", "box_GetPreconditionState_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_52();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|2113372428", "2113372428", "OW_Collectible_DearPhotograph", "box_OutputOrder_v2_58.Out", "box_GetPreconditionState_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_59();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|2139283428", "2139283428", "OW_Collectible_DearPhotograph", "box_OutputOrder_v2_58.Out", "box_GetPreconditionState_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|556683719", "556683719", "OW_Collectible_DearPhotograph", "box_SetActivityObjectiveProgress_v2_8.Out", "box_OutputOrder_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1068606540", "1068606540", "OW_Collectible_DearPhotograph", "box_AddActivityObjectiveProgress_v2_10.Out", "box_SetActivityObjectiveProgress_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1289908988", "1289908988", "OW_Collectible_DearPhotograph", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1968255434", "1968255434", "OW_Collectible_DearPhotograph", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = self.box_MultipleOR_51;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|109282907", "109282907", "OW_Collectible_DearPhotograph", "box_MultipleOR_51.Out", "box_Simple_Node_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_v2_29_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_v2_29;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|901988445", "901988445", "OW_Collectible_DearPhotograph", "box_PreconditionListener_v2_29.PreconditionMet", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = self.box_MultipleOR_42;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|103424025", "103424025", "OW_Collectible_DearPhotograph", "box_MultipleOR_42.Out", "box_Simple_Node_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_v2_41_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_v2_41;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|45628388", "45628388", "OW_Collectible_DearPhotograph", "box_PreconditionListener_v2_41.PreconditionMet", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PreconditionListener_v2_17_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_v2_17;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1404072187", "1404072187", "OW_Collectible_DearPhotograph", "box_PreconditionListener_v2_17.PreconditionMet", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = self.box_MultipleOR_30;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1307999963", "1307999963", "OW_Collectible_DearPhotograph", "box_MultipleOR_30.Out", "box_Simple_Node_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = self.box_MultipleOR_24;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|2061263854", "2061263854", "OW_Collectible_DearPhotograph", "box_MultipleOR_24.Out", "box_Simple_Node_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1041419294", "1041419294", "OW_Collectible_DearPhotograph", "box_MultipleOR_3.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_GetPreconditionState_v2_9_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_5();
    l0 = self.box_PreconditionListener_v2_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1407445298", "1407445298", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_9.NotValid", "box_PreconditionListener_v2_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_9_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1339324926", "1339324926", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_9.Valid", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityObjectiveProgress_v2_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1127012924", "1127012924", "OW_Collectible_DearPhotograph", "box_SetActivityObjectiveProgress_v2_15.Out", "box_Delay_v5_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IntegerArithmetics_v2_11_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_12();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|615319144", "615319144", "OW_Collectible_DearPhotograph", "box_IntegerArithmetics_v2_11.Out", "box_Compare_Integers_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_v2_50_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_v2_50;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1798268921", "1798268921", "OW_Collectible_DearPhotograph", "box_PreconditionListener_v2_50.PreconditionMet", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_6();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1155053439", "1155053439", "OW_Collectible_DearPhotograph", "box_ActivityInitialized_2.Out", "box_AddActivityObjective_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = self.box_MultipleOR_57;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|430834847", "430834847", "OW_Collectible_DearPhotograph", "box_MultipleOR_57.Out", "box_Simple_Node_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_25_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_23();
    l0 = self.box_PreconditionListener_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1706449583", "1706449583", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_25.NotValid", "box_PreconditionListener_v2_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_25_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|233762255", "233762255", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_25.Valid", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_31_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_29();
    l0 = self.box_PreconditionListener_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1854238362", "1854238362", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_31.NotValid", "box_PreconditionListener_v2_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_31_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|662412382", "662412382", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_31.Valid", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_49_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_47();
    l0 = self.box_PreconditionListener_v2_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|765338159", "765338159", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_49.NotValid", "box_PreconditionListener_v2_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_49_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1437914737", "1437914737", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_49.Valid", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_52_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_50();
    l0 = self.box_PreconditionListener_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|708407193", "708407193", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_52.NotValid", "box_PreconditionListener_v2_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_52_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|2112294787", "2112294787", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_52.Valid", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjective_v2_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1941998277", "1941998277", "OW_Collectible_DearPhotograph", "box_AddActivityObjective_v2_6.Out", "box_AddActivityObjectiveProgress_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_v2_5_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_v2_5;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|969632398", "969632398", "OW_Collectible_DearPhotograph", "box_PreconditionListener_v2_5.PreconditionMet", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_Delay_v5_14;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1112999171", "1112999171", "OW_Collectible_DearPhotograph", "box_Delay_v5_14.TimeElapsed", "box_ActivityEnd_4.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_12_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|2028925707", "2028925707", "OW_Collectible_DearPhotograph", "box_Compare_Integers_12.A_ge_B", "box_SetActivityObjectiveProgress_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_12_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_13();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1644265232", "1644265232", "OW_Collectible_DearPhotograph", "box_Compare_Integers_12.A_lt_B", "box_SetActivityObjectiveProgress_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_v2_44_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_v2_44;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1730619758", "1730619758", "OW_Collectible_DearPhotograph", "box_PreconditionListener_v2_44.PreconditionMet", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PreconditionListener_v2_56_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_v2_56;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|474324457", "474324457", "OW_Collectible_DearPhotograph", "box_PreconditionListener_v2_56.PreconditionMet", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|187004367", "187004367", "OW_Collectible_DearPhotograph", "box_MultipleOR_16.Out", "box_Simple_Node_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_v2_23_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_v2_23;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|636483923", "636483923", "OW_Collectible_DearPhotograph", "box_PreconditionListener_v2_23.PreconditionMet", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPreconditionState_v2_46_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_44();
    l0 = self.box_PreconditionListener_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|227247780", "227247780", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_46.NotValid", "box_PreconditionListener_v2_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_46_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1557234232", "1557234232", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_46.Valid", "box_MultipleOR_45.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_59_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_56();
    l0 = self.box_PreconditionListener_v2_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1599535032", "1599535032", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_59.NotValid", "box_PreconditionListener_v2_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_59_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1215524544", "1215524544", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_59.Valid", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = self.box_MultipleOR_18;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1367615713", "1367615713", "OW_Collectible_DearPhotograph", "box_MultipleOR_18.Out", "box_Simple_Node_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = self.box_MultipleOR_48;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|302139332", "302139332", "OW_Collectible_DearPhotograph", "box_MultipleOR_48.Out", "box_Simple_Node_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_43_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_41();
    l0 = self.box_PreconditionListener_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1676926228", "1676926228", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_43.NotValid", "box_PreconditionListener_v2_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_43_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|344210537", "344210537", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_43.Valid", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_19_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_17();
    l0 = self.box_PreconditionListener_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1521925600", "1521925600", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_19.NotValid", "box_PreconditionListener_v2_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_19_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|762743697", "762743697", "OW_Collectible_DearPhotograph", "box_GetPreconditionState_v2_19.Valid", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|@UpdateInteger");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_60_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_47()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015344319920571",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|215683603");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 15,
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
                [3] = self.f_box_OutputOrder_v2_58_Out_3,
                [5] = self.f_box_OutputOrder_v2_58_Out_5,
                [9] = self.f_box_OutputOrder_v2_58_Out_9,
                [10] = self.f_box_OutputOrder_v2_58_Out_10,
                [11] = self.f_box_OutputOrder_v2_58_Out_11,
                [12] = self.f_box_OutputOrder_v2_58_Out_12,
                [14] = self.f_box_OutputOrder_v2_58_Out_14,
            },
            count = 15,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|264583139");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_8_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Collectibles",
            item = "OW_Coll_DearPhotos_OBJ",
            id = "1018043",
        },
        -- Progress,
        [1] = self.iProgress,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|316118488");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_10_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = "9015345398838531",
        -- ObjectiveId,
        [1] = {
            section = "Collectibles",
            item = "OW_Coll_DearPhotos_OBJ",
            id = "1018043",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 9,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_29()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015344319899870",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_41()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015344319914253",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|569550257");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Collectibles",
            item = "OW_Coll_DearPhotos_OBJ",
            id = "1018043",
        },
        -- Progress,
        [1] = self.iProgress,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_17()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015344319878233",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|633394901");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|686726434");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_9_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_9_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015344319769824",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|693276832");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_15_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Collectibles",
            item = "OW_Coll_DearPhotos_OBJ",
            id = "1018043",
        },
        -- Progress,
        [1] = self.iProgress,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|812669089");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_11_Out,
    });
    params = {
        -- A,
        [0] = self.iProgress,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_50()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015344319926283",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1092622761");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_25_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_25_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015344319889746",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1093434722");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_31_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_31_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015344319899870",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1098507108");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_49_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_49_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015344319920571",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    DrawTextToScreen("Comment: TEST", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ActivityEnd')-- Comment: TEST");
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1134136284");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1209322909");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_52_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_52_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015344319926283",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1247839057");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_6_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Collectibles",
            item = "OW_Coll_DearPhotos_OBJ",
            id = "1018043",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_5()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015344319769824",
        -- TestOnEnable,
        [2] = true,
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

function export:OnEnter_box_Compare_Integers_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1502308646");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_12_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_12_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iProgress,
        -- B,
        [1] = 9,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_44()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015344319917398",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_56()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015344319934254",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_23()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015344319889746",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1717796518");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_46_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_46_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015344319917398",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1720907455");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_59_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_59_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015344319934254",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1889124462");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_43_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_43_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015344319914253",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@OW_Collectible_DearPhotograph|1935368315");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_19_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_19_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015344319878233",
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iProgress = l0:GetDataOutValue(0);
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
