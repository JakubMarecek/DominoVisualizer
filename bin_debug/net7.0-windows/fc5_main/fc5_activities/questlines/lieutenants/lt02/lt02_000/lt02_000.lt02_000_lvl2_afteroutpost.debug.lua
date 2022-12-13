LUAC2~  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_000/lt02_000.domino
-- User graph: LT02_000_LVL2_AFTEROUTPOST
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GenericActivityCompletionListener.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[972789642.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2988829045.bnk]], "CSoundResource");
        cboxRes:LoadResource([[131110780.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4061145242.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_000/LT02_000.LT02_000_LVL2_AFTEROUTPOST.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.GenericActivityCompletionListener.debug.lua")] = {
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
                name = "ActivityRewardReceived",
                delayed = false,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CurrentActivityID",
                type = "genericdb",
            },
            [1] = {
                name = "iMinRewardPoints",
                type = "int",
            },
            [2] = {
                name = "Precondition",
                type = "string",
            },
            [3] = {
                name = "RegionID",
                type = "int",
            },
            [4] = {
                name = "sPhoneCall",
                type = "Sound",
            },
        },
        dataInCount = 5,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT02_000_LVL2_AFTEROUTPOST";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST";
    self.iMinRewardPoints = 500;
    self.box_PreconditionListener_10 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|110843222");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_10_PreconditionMet,
    });
    self.box_PhoneCallExclusivityModifier_1 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|220408496");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_1_Enabled,
    });
    self.box_GenericActivityCompletionListener_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GenericActivityCompletionListener.debug.lua");
    l0 = self.box_GenericActivityCompletionListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GenericActivityCompletionListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|254525407");
    l0:SetConnections({
        -- ActivityRewardReceived,
        [0] = self.f_box_GenericActivityCompletionListener_9_ActivityRewardReceived,
    });
    self.box_RequestPhoneCall_v2_3 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|325147054");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_3_Completed,
    });
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|757589960");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
    self.box_RequestPhoneCall_v2_12 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1464022822");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_12_Completed,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1681536104");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1804970510");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_RequestPhoneCall_v2_11 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1840144976");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_11_Completed,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|2069655294");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|26950418", "26950418", "LT02_000_LVL2_AFTEROUTPOST", "In", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_10_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_10;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1172819220", "1172819220", "LT02_000_LVL2_AFTEROUTPOST", "box_PreconditionListener_10.PreconditionMet", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PhoneCallExclusivityModifier_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_3();
    l0 = self.box_PhoneCallExclusivityModifier_1;
    l1 = self.box_RequestPhoneCall_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|394507062", "394507062", "LT02_000_LVL2_AFTEROUTPOST", "box_PhoneCallExclusivityModifier_1.Enabled", "box_RequestPhoneCall_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1087393888", "1087393888", "LT02_000_LVL2_AFTEROUTPOST", "box_OutputOrder_v2_6.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1449475503", "1449475503", "LT02_000_LVL2_AFTEROUTPOST", "box_OutputOrder_v2_6.Out", "box_Print_v2_7.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GenericActivityCompletionListener_9_ActivityRewardReceived()
    local l0, l1;
    l0 = self.box_GenericActivityCompletionListener_9;
    l1 = self.box_PhoneCallExclusivityModifier_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1751248235", "1751248235", "LT02_000_LVL2_AFTEROUTPOST", "box_GenericActivityCompletionListener_9.ActivityRewardReceived", "box_PhoneCallExclusivityModifier_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_RequestPhoneCall_v2_3_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_11();
    l0 = self.box_RequestPhoneCall_v2_3;
    l1 = self.box_RequestPhoneCall_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|348408813", "348408813", "LT02_000_LVL2_AFTEROUTPOST", "box_RequestPhoneCall_v2_3.Completed", "box_RequestPhoneCall_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_13();
    l0 = self.box_ActivityInitialized_8;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|263925453", "263925453", "LT02_000_LVL2_AFTEROUTPOST", "box_ActivityInitialized_8.Out", "box_GetActivityFact_13.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_12_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_RequestPhoneCall_v2_12;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1920725098", "1920725098", "LT02_000_LVL2_AFTEROUTPOST", "box_RequestPhoneCall_v2_12.Completed", "box_ActivityEnd_5.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_13_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_10();
    l0 = self.box_PreconditionListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|699112599", "699112599", "LT02_000_LVL2_AFTEROUTPOST", "box_GetActivityFact_13.FactNotSet", "box_PreconditionListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityFact_13_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1627429922", "1627429922", "LT02_000_LVL2_AFTEROUTPOST", "box_GetActivityFact_13.FactSet", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|171638207", "171638207", "LT02_000_LVL2_AFTEROUTPOST", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|109050258", "109050258", "LT02_000_LVL2_AFTEROUTPOST", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GenericActivityCompletionListener_9();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_GenericActivityCompletionListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1906692337", "1906692337", "LT02_000_LVL2_AFTEROUTPOST", "box_MultipleOR_14.Out", "box_GenericActivityCompletionListener_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_11_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_12();
    l0 = self.box_RequestPhoneCall_v2_11;
    l1 = self.box_RequestPhoneCall_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1157298902", "1157298902", "LT02_000_LVL2_AFTEROUTPOST", "box_RequestPhoneCall_v2_11.Completed", "box_RequestPhoneCall_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|839585958", "839585958", "LT02_000_LVL2_AFTEROUTPOST", "box_MultipleOR_2.Out", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:OnEnter_box_PreconditionListener_10()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015281083455140",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|248261922");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GenericActivityCompletionListener_9()
    local params;
    params = {
        -- CurrentActivityID,
        [0] = "9015279107036333",
        -- iMinRewardPoints,
        [1] = 200,
        -- Precondition,
        [2] = "9015313022875671",
        -- RegionID,
        [3] = 2,
        -- sPhoneCall,
        [4] = "4061145242",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_3()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "972789642",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|887526081");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_12()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "131110780",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1666514321");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_13_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_13_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015279107036333",
        -- Fact,
        [1] = "firstcall",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_AFTEROUTPOST|1667102509");
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
        [8] = "LT02_000_LVL2_AFTEROUTPOST started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_11()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2988829045",
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
