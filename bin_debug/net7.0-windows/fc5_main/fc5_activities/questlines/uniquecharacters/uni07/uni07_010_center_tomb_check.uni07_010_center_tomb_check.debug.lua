LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni07/uni07_010_center_tomb_check.domino
-- User graph: UNI07_010_Center_Tomb_Check
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_Center_Tomb_Check.UNI07_010_Center_Tomb_Check.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "LastWave_Cleanup",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = false,
            },
            [3] = {
                name = "Waves",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Attacker_Group",
                type = "group",
            },
            [1] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [2] = {
                name = "DisplayObjectHealthBar",
                type = "bool",
            },
            [3] = {
                name = "Entities_Group",
                type = "group",
            },
            [4] = {
                name = "Entity_Single",
                type = "entity",
            },
            [5] = {
                name = "IsGroup",
                type = "bool",
            },
            [6] = {
                name = "IsVehicle",
                type = "bool",
            },
            [7] = {
                name = "Marker",
                type = "entity",
            },
            [8] = {
                name = "MinimumIntactRequired",
                type = "int",
            },
            [9] = {
                name = "Objective",
                type = "oasis",
            },
            [10] = {
                name = "opt_ObjectiveFail",
                type = "oasis",
            },
        },
        dataInCount = 11,
        dataOut = {
            [0] = {
                name = "FailReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
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
                name = "message",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI07_010_Center_Tomb_Check";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check";
    self.TotalTombsDown = 0;
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|90037416");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_StaticBreakableListener_15 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|142047682");
    l0:SetConnections({
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_15_OnBreakAll,
    });
    self.box_Gate_v3_6 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|574269232");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_6_Out,
    });
    self.box_Gate_v3_28 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|608042681");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_28_Out,
    });
    self.box_MessageListener_v3_27 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|779043072");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_27_Received,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|870290521");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|970682147");
    l0:SetConnections({
    });
    self.box_PreconditionListener_31 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1113915031");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_31_PreconditionMet,
    });
    self.box_MessageListener_v3_29 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1194588268");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_29_Received,
    });
    self.box_StaticBreakableListener_17 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1216419859");
    l0:SetConnections({
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_17_OnBreakAll,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1241583671");
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
    self.box_Brick_Defend_Object_CORE_v3_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua");
    l0 = self.box_Brick_Defend_Object_CORE_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Defend_Object_CORE_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1318333767");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Defend_Object_CORE_v3_1_Fail,
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1361521866");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1424393404");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_StaticBreakableListener_9 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1536779980");
    l0:SetConnections({
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_9_OnBreakAll,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1120394578", "1120394578", "UNI07_010_Center_Tomb_Check", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|46016961", "46016961", "UNI07_010_Center_Tomb_Check", "OnLeaveZone", "box_ActivityRetry_7.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|650726106", "650726106", "UNI07_010_Center_Tomb_Check", "box_ActivityInitialized_5.Out", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_15_OnBreakAll()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_12();
    l0 = self.box_StaticBreakableListener_15;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|384247028", "384247028", "UNI07_010_Center_Tomb_Check", "box_StaticBreakableListener_15.OnBreakAll", "box_IntegerArithmetics_v2_12.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_8_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|344133854", "344133854", "UNI07_010_Center_Tomb_Check", "box_IntegerArithmetics_v2_8.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IntegerArithmetics_v2_24_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1174867565", "1174867565", "UNI07_010_Center_Tomb_Check", "box_IntegerArithmetics_v2_24.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_27();
    l0 = self.box_MessageListener_v3_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1559065090", "1559065090", "UNI07_010_Center_Tomb_Check", "box_OutputOrder_v2_16.Out", "box_MessageListener_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_1();
    l0 = self.box_Brick_Defend_Object_CORE_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1105751927", "1105751927", "UNI07_010_Center_Tomb_Check", "box_OutputOrder_v2_16.Out", "box_Brick_Defend_Object_CORE_v3_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|45049660", "45049660", "UNI07_010_Center_Tomb_Check", "box_OutputOrder_v2_16.Out", "box_Simple_Node_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_29();
    l0 = self.box_MessageListener_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|956843302", "956843302", "UNI07_010_Center_Tomb_Check", "box_OutputOrder_v2_16.Out", "box_MessageListener_v3_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_21_Failed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_23();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1444311969", "1444311969", "UNI07_010_Center_Tomb_Check", "box_GetActivityState_v2_21.Failed", "box_IntegerArithmetics_v2_23.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_23_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1535565433", "1535565433", "UNI07_010_Center_Tomb_Check", "box_IntegerArithmetics_v2_23.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Gate_v3_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_Gate_v3_6;
    l1 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1368511591", "1368511591", "UNI07_010_Center_Tomb_Check", "box_Gate_v3_6.Out", "box_Delay_v5_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetActivityState_v2_20_Failed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_25();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1772007904", "1772007904", "UNI07_010_Center_Tomb_Check", "box_GetActivityState_v2_20.Failed", "box_IntegerArithmetics_v2_25.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_Gate_v3_28;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|259242060", "259242060", "UNI07_010_Center_Tomb_Check", "box_Gate_v3_28.Out", "box_ActivityEnd_4.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_27_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_6();
    l0 = self.box_MessageListener_v3_27;
    l1 = self.box_Gate_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1292230481", "1292230481", "UNI07_010_Center_Tomb_Check", "box_MessageListener_v3_27.Received", "box_Gate_v3_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1292882857", "1292882857", "UNI07_010_Center_Tomb_Check", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1747673882", "1747673882", "UNI07_010_Center_Tomb_Check", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IntegerArithmetics_v2_25_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1057951227", "1057951227", "UNI07_010_Center_Tomb_Check", "box_IntegerArithmetics_v2_25.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_GetActivityState_v2_22_Failed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_24();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|226600498", "226600498", "UNI07_010_Center_Tomb_Check", "box_GetActivityState_v2_22.Failed", "box_IntegerArithmetics_v2_24.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_12_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1974212213", "1974212213", "UNI07_010_Center_Tomb_Check", "box_IntegerArithmetics_v2_12.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PreconditionListener_31_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_30();
    l0 = self.box_PreconditionListener_31;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1453598139", "1453598139", "UNI07_010_Center_Tomb_Check", "box_PreconditionListener_31.PreconditionMet", "box_ActivityEnd_30.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_29_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_MessageListener_v3_29;
    l1 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1870653332", "1870653332", "UNI07_010_Center_Tomb_Check", "box_MessageListener_v3_29.Received", "box_Gate_v3_28.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_17_OnBreakAll()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_13();
    l0 = self.box_StaticBreakableListener_17;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|866493081", "866493081", "UNI07_010_Center_Tomb_Check", "box_StaticBreakableListener_17.OnBreakAll", "box_IntegerArithmetics_v2_13.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|847971969", "847971969", "UNI07_010_Center_Tomb_Check", "box_MultipleOR_2.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_Defend_Object_CORE_v3_1_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Brick_Defend_Object_CORE_v3_1;
    l1 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|155877916", "155877916", "UNI07_010_Center_Tomb_Check", "box_Brick_Defend_Object_CORE_v3_1.Fail", "box_Delay_v5_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_Delay_v5_26;
    l1 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|153768205", "153768205", "UNI07_010_Center_Tomb_Check", "box_Delay_v5_26.TimeElapsed", "box_Gate_v3_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_14_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_6();
    l0 = self.box_Gate_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1701989332", "1701989332", "UNI07_010_Center_Tomb_Check", "box_Compare_Integers_14.A_gt_B", "box_Gate_v3_6.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_14();
    l0 = self.box_MultipleOR_10;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1307065286", "1307065286", "UNI07_010_Center_Tomb_Check", "box_MultipleOR_10.Out", "box_Compare_Integers_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_9_OnBreakAll()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_8();
    l0 = self.box_StaticBreakableListener_9;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|296110344", "296110344", "UNI07_010_Center_Tomb_Check", "box_StaticBreakableListener_9.OnBreakAll", "box_IntegerArithmetics_v2_8.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_17();
    l0 = self.box_StaticBreakableListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1214798067", "1214798067", "UNI07_010_Center_Tomb_Check", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_9();
    l0 = self.box_StaticBreakableListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|11853254", "11853254", "UNI07_010_Center_Tomb_Check", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_15();
    l0 = self.box_StaticBreakableListener_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|20723750", "20723750", "UNI07_010_Center_Tomb_Check", "box_OutputOrder_v2_18.Out", "box_StaticBreakableListener_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|418769378", "418769378", "UNI07_010_Center_Tomb_Check", "box_OutputOrder_v2_18.Out", "box_GetActivityState_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|449368154", "449368154", "UNI07_010_Center_Tomb_Check", "box_OutputOrder_v2_18.Out", "box_GetActivityState_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_20();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1648378096", "1648378096", "UNI07_010_Center_Tomb_Check", "box_OutputOrder_v2_18.Out", "box_GetActivityState_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_31();
    l0 = self.box_PreconditionListener_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1937788571", "1937788571", "UNI07_010_Center_Tomb_Check", "box_OutputOrder_v2_18.Out", "box_PreconditionListener_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|731335409", "731335409", "UNI07_010_Center_Tomb_Check", "box_Simple_Node_11.Out", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_13_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|2056969157", "2056969157", "UNI07_010_Center_Tomb_Check", "box_IntegerArithmetics_v2_13.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_StaticBreakableListener_15()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2102614622405148917",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|229328007");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_8_Out,
    });
    params = {
        -- A,
        [0] = self.TotalTombsDown,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|249110985");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_24_Out,
    });
    params = {
        -- A,
        [0] = self.TotalTombsDown,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|297978174");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|395868691");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
                [3] = self.f_box_OutputOrder_v2_16_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|423849825");
    l0:SetConnections({
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_21_Failed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015279106740287",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|571242706");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_23_Out,
    });
    params = {
        -- A,
        [0] = self.TotalTombsDown,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_6()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|591659548");
    l0:SetConnections({
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_20_Failed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015279108670388",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_28()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "CenterTombDestroyed",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|949138364");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_25_Out,
    });
    params = {
        -- A,
        [0] = self.TotalTombsDown,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|994680389");
    l0:SetConnections({
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_22_Failed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015279108370020",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|998628003");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_12_Out,
    });
    params = {
        -- A,
        [0] = self.TotalTombsDown,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1001413486");
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

function export:OnEnter_box_PreconditionListener_31()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015289427121852",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "UNI007_Failed",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_17()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2102601353707667380",
    };
    return params;
end;

function export:OnEnter_box_Brick_Defend_Object_CORE_v3_1()
    local params;
    params = {
        -- Attacker_Group,
        [0] = "#D846F3A9",
        -- CompletePreviousObjective,
        [1] = false,
        -- DisplayObjectHealthBar,
        [2] = true,
        -- Entities_Group,
        [3] = "#57251069",
        -- Entity_Single,
        [4] = "2102791719968852094",
        -- IsGroup,
        [5] = false,
        -- IsVehicle,
        [6] = false,
        -- Marker,
        [7] = "2102791719975143555",
        -- MinimumIntactRequired,
        [8] = 1,
        -- Objective,
        [9] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_West",
            id = "730267",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1377279317");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_14_A_gt_B,
    });
    params = {
        -- A,
        [0] = self.TotalTombsDown,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2102791719968852094",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1615097587");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
                [3] = self.f_box_OutputOrder_v2_18_Out_3,
                [4] = self.f_box_OutputOrder_v2_18_Out_4,
                [5] = self.f_box_OutputOrder_v2_18_Out_5,
                [6] = self.f_box_OutputOrder_v2_18_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|1746514982");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|2034341982");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_Center_Tomb_Check.domino|@UNI07_010_Center_Tomb_Check|2081388776");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_13_Out,
    });
    params = {
        -- A,
        [0] = self.TotalTombsDown,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.TotalTombsDown = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.TotalTombsDown = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.TotalTombsDown = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.TotalTombsDown = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.TotalTombsDown = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.TotalTombsDown = l0:GetDataOutValue(0);
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
