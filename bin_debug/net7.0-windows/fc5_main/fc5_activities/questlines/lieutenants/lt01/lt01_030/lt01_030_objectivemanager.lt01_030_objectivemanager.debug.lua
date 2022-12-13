LUAC -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_030/lt01_030_objectivemanager.domino
-- User graph: LT01_030_ObjectiveManager
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
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_ObjectiveManager.LT01_030_ObjectiveManager.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/GetPreconditionState.lua")] = {
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
                type = "string",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT01_030_ObjectiveManager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager";
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|4409229");
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
        [0] = self.f_box_MultipleOR_35_Out,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|162396919");
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
    self.box_OnceOnly_v3_38 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|422308644");
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
                [0] = self.f_box_OnceOnly_v3_38_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|731181613");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|752991837");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|814604165");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_PreconditionListener_13 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|970577932");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PreconditionListener_13_Enabled,
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_13_PreconditionMet,
    });
    self.box_PreconditionListener_23 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1092735539");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PreconditionListener_23_Enabled,
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_23_PreconditionMet,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1202003103");
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
    self.box_PreconditionListener_18 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1342641742");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PreconditionListener_18_Enabled,
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_18_PreconditionMet,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1366444213");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1435308120");
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
    self.box_PreconditionListener_20 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1613856180");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PreconditionListener_20_Enabled,
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_20_PreconditionMet,
    });
    self.box_MessageListener_v3_36 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1834184571");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_36_Received,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1897257128");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1943674185");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|2005059691");
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
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|168095386", "168095386", "LT01_030_ObjectiveManager", "In", "box_ActivityAcknowledgeGate_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_MultipleOR_35;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|159470040", "159470040", "LT01_030_ObjectiveManager", "box_MultipleOR_35.Out", "box_ActivityEnd_7.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|152863989", "152863989", "LT01_030_ObjectiveManager", "box_Simple_Node_15.Out", "box_GetActivityState_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1954932763", "1954932763", "LT01_030_ObjectiveManager", "box_EndActivityObjective_v2_24.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_29();
    l0 = self.box_MultipleOR_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1584299372", "1584299372", "LT01_030_ObjectiveManager", "box_MultipleOR_17.Out", "box_EndActivityObjective_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|510564757", "510564757", "LT01_030_ObjectiveManager", "box_Simple_Node_32.Out", "box_GetActivityState_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_38_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetPreconditionState_19();
    l0 = self.box_OnceOnly_v3_38;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|199918451", "199918451", "LT01_030_ObjectiveManager", "box_OnceOnly_v3_38.Out", "box_GetPreconditionState_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_25_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_18();
    l0 = self.box_PreconditionListener_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1150919298", "1150919298", "LT01_030_ObjectiveManager", "box_GetPreconditionState_25.NotValid", "box_PreconditionListener_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_25_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|416325907", "416325907", "LT01_030_ObjectiveManager", "box_GetPreconditionState_25.Valid", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_24();
    l0 = self.box_MultipleOR_26;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|356667526", "356667526", "LT01_030_ObjectiveManager", "box_MultipleOR_26.Out", "box_EndActivityObjective_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_12_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_12;
    l1 = self.box_OnceOnly_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1396525236", "1396525236", "LT01_030_ObjectiveManager", "box_MultipleOR_12.Out", "box_OnceOnly_v3_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1326908309", "1326908309", "LT01_030_ObjectiveManager", "box_ActivityInitialized_2.Out", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_4_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1997079546", "1997079546", "LT01_030_ObjectiveManager", "box_GetActivityState_v2_4.Active", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_4_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1168527897", "1168527897", "LT01_030_ObjectiveManager", "box_GetActivityState_v2_4.Completed", "box_Simple_Node_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_37_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1217832706", "1217832706", "LT01_030_ObjectiveManager", "box_GetActivityState_v2_37.Active", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_37_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|809501613", "809501613", "LT01_030_ObjectiveManager", "box_GetActivityState_v2_37.Completed", "box_Simple_Node_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_31_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|226201985", "226201985", "LT01_030_ObjectiveManager", "box_GetActivityState_v2_31.Active", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_31_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|774937157", "774937157", "LT01_030_ObjectiveManager", "box_GetActivityState_v2_31.Completed", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PreconditionListener_13_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_30();
    l0 = self.box_PreconditionListener_13;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|2009078480", "2009078480", "LT01_030_ObjectiveManager", "box_PreconditionListener_13.Enabled", "box_AddActivityObjective_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_13_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_13;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|701188394", "701188394", "LT01_030_ObjectiveManager", "box_PreconditionListener_13.PreconditionMet", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPreconditionState_16_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_13();
    l0 = self.box_PreconditionListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|356082283", "356082283", "LT01_030_ObjectiveManager", "box_GetPreconditionState_16.NotValid", "box_PreconditionListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_16_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|520301409", "520301409", "LT01_030_ObjectiveManager", "box_GetPreconditionState_16.Valid", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PreconditionListener_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_14();
    l0 = self.box_PreconditionListener_23;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|412487170", "412487170", "LT01_030_ObjectiveManager", "box_PreconditionListener_23.Enabled", "box_AddActivityObjective_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_23_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_23;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|845656960", "845656960", "LT01_030_ObjectiveManager", "box_PreconditionListener_23.PreconditionMet", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_8_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_8;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|2132537415", "2132537415", "LT01_030_ObjectiveManager", "box_MultipleOR_8.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PreconditionListener_18_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_28();
    l0 = self.box_PreconditionListener_18;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1647277204", "1647277204", "LT01_030_ObjectiveManager", "box_PreconditionListener_18.Enabled", "box_AddActivityObjective_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_18_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_18;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|928529202", "928529202", "LT01_030_ObjectiveManager", "box_PreconditionListener_18.PreconditionMet", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|624930728", "624930728", "LT01_030_ObjectiveManager", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|2141916235", "2141916235", "LT01_030_ObjectiveManager", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_6();
    l0 = self.box_MultipleOR_21;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1035668097", "1035668097", "LT01_030_ObjectiveManager", "box_MultipleOR_21.Out", "box_EndActivityObjective_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_25();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|161653483", "161653483", "LT01_030_ObjectiveManager", "box_EndActivityObjective_v2_6.Out", "box_GetPreconditionState_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_27();
    l0 = self.box_PreconditionListener_20;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|915574050", "915574050", "LT01_030_ObjectiveManager", "box_PreconditionListener_20.Enabled", "box_AddActivityObjective_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_20_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_20;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|2031145747", "2031145747", "LT01_030_ObjectiveManager", "box_PreconditionListener_20.PreconditionMet", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1444524301", "1444524301", "LT01_030_ObjectiveManager", "box_OutputOrder_v2_9.Out", "box_GetActivityState_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_37();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|557135521", "557135521", "LT01_030_ObjectiveManager", "box_OutputOrder_v2_9.Out", "box_GetActivityState_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_36();
    l0 = self.box_MessageListener_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|2029170135", "2029170135", "LT01_030_ObjectiveManager", "box_OutputOrder_v2_9.Out", "box_MessageListener_v3_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1653687800", "1653687800", "LT01_030_ObjectiveManager", "box_EndActivityObjective_v2_29.Out", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_36_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_34();
    l0 = self.box_MessageListener_v3_36;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1904708100", "1904708100", "LT01_030_ObjectiveManager", "box_MessageListener_v3_36.Received", "box_Simple_Node_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_3_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|214348192", "214348192", "LT01_030_ObjectiveManager", "box_GetActivityState_v2_3.Active", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_11();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|666704885", "666704885", "LT01_030_ObjectiveManager", "box_MultipleOR_1.Out", "box_EndActivityObjective_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|301836806", "301836806", "LT01_030_ObjectiveManager", "box_Simple_Node_34.Out", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPreconditionState_22();
    l0 = self.box_MultipleOR_10;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1890190113", "1890190113", "LT01_030_ObjectiveManager", "box_MultipleOR_10.Out", "box_GetPreconditionState_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_22_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_23();
    l0 = self.box_PreconditionListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|174340030", "174340030", "LT01_030_ObjectiveManager", "box_GetPreconditionState_22.NotValid", "box_PreconditionListener_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_22_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1509169383", "1509169383", "LT01_030_ObjectiveManager", "box_GetPreconditionState_22.Valid", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPreconditionState_16();
    l0 = self.box_MultipleOR_33;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1345826886", "1345826886", "LT01_030_ObjectiveManager", "box_MultipleOR_33.Out", "box_GetPreconditionState_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_19_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_20();
    l0 = self.box_PreconditionListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1398556920", "1398556920", "LT01_030_ObjectiveManager", "box_GetPreconditionState_19.NotValid", "box_PreconditionListener_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_19_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1902332162", "1902332162", "LT01_030_ObjectiveManager", "box_GetPreconditionState_19.Valid", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|50518032");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|110406806");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_24_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT01_030_B10_OBJ_Rescue",
            id = "467721",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|219365343");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|704573147");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_25_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_25_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015286045662876",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|834508665");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_4_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_4_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015203365206419",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|851614978");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT01_030_B10_OBJ_Rescue",
            id = "467721",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|944954707");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_37_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_37_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015202709321309",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|959337698");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_31_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_31_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015203365214683",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_13()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015286049512343",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1012086155");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_16_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_16_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015286049512343",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_23()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015286049505974",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1107092324");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT01_030_B30_GOAL_Escort",
            id = "500486",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1186828406");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT01_030_B30_OBJ_SaveHostages",
            id = "817976",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1264750224");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT01_030_B40_OBJ_FindVents",
            id = "730202",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_18()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015286045662876",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1573495297");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_6_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT01_030_B30_GOAL_Escort",
            id = "500486",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_20()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015286045163234",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1691977032");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1710709800");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_29_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT01_030_B30_OBJ_SaveHostages",
            id = "817976",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1757371030");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "finish_lt01_030_objective_manager",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1849195335");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_3_Active,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015200288161723",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1903136919");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|1965682835");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_22_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_22_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015286049505974",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|2023686240");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_19_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_19_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015286045163234",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_ObjectiveManager.domino|@LT01_030_ObjectiveManager|2141328086");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT01_030_B40_OBJ_FindVents",
            id = "730202",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
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
