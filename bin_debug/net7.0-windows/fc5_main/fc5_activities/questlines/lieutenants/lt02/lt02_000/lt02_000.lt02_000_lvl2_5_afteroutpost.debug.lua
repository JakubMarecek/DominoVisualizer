LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_000/lt02_000.domino
-- User graph: LT02_000_LVL2_5_AFTEROUTPOST
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
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayWorldLocationUI.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1515026151.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2892799268.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2893090032.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_000/LT02_000.LT02_000_LVL2_5_AFTEROUTPOST.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
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
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/DisplayWorldLocationUI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Show",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Hidden",
                delayed = true,
            },
            [1] = {
                name = "Showed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "activityTypeCategory",
                type = "int",
            },
            [1] = {
                name = "subTitleId",
                type = "oasis",
            },
            [2] = {
                name = "titleId",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT02_000_LVL2_5_AFTEROUTPOST";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST";
    self.box_PhoneCallExclusivityModifier_5 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|30948072");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_5_Enabled,
    });
    self.box_SoundModifier_v2_14 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|186880071");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_10 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|440893087");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_10_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_10_Failed,
    });
    self.box_DisplayWorldLocationUI_13 = cbox:CreateBox("Domino/System/UI/DisplayWorldLocationUI.lua");
    l0 = self.box_DisplayWorldLocationUI_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayWorldLocationUI_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|674426722");
    l0:SetConnections({
        -- Showed,
        [1] = self.f_box_DisplayWorldLocationUI_13_Showed,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|702990345");
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
    self.box_RequestPhoneCall_v2_9 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|956703284");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_9_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_9_Failed,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1533680373");
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
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1783329218");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_GenericActivityCompletionListener_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GenericActivityCompletionListener.debug.lua");
    l0 = self.box_GenericActivityCompletionListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GenericActivityCompletionListener_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1999511863");
    l0:SetConnections({
        -- ActivityRewardReceived,
        [0] = self.f_box_GenericActivityCompletionListener_6_ActivityRewardReceived,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|2053649263");
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
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|2074367988");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1575192579", "1575192579", "LT02_000_LVL2_5_AFTEROUTPOST", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_9();
    l0 = self.box_PhoneCallExclusivityModifier_5;
    l1 = self.box_RequestPhoneCall_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1835062844", "1835062844", "LT02_000_LVL2_5_AFTEROUTPOST", "box_PhoneCallExclusivityModifier_5.Enabled", "box_RequestPhoneCall_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1953884472", "1953884472", "LT02_000_LVL2_5_AFTEROUTPOST", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1391197130", "1391197130", "LT02_000_LVL2_5_AFTEROUTPOST", "box_OutputOrder_v2_3.Out", "box_Print_v2_4.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_10_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_10;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1813487058", "1813487058", "LT02_000_LVL2_5_AFTEROUTPOST", "box_RequestPhoneCall_v2_10.Completed", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_10_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_10;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|15811456", "15811456", "LT02_000_LVL2_5_AFTEROUTPOST", "box_RequestPhoneCall_v2_10.Failed", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisplayWorldLocationUI_13_Showed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_DisplayWorldLocationUI_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|8511866", "8511866", "LT02_000_LVL2_5_AFTEROUTPOST", "box_DisplayWorldLocationUI_13.Showed", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_10();
    l0 = self.box_MultipleOR_11;
    l1 = self.box_RequestPhoneCall_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1349568099", "1349568099", "LT02_000_LVL2_5_AFTEROUTPOST", "box_MultipleOR_11.Out", "box_RequestPhoneCall_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_9_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_9;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1473518273", "1473518273", "LT02_000_LVL2_5_AFTEROUTPOST", "box_RequestPhoneCall_v2_9.Completed", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_9_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_9;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1507040381", "1507040381", "LT02_000_LVL2_5_AFTEROUTPOST", "box_RequestPhoneCall_v2_9.Failed", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_14();
    l0 = self.box_SoundModifier_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|877422505", "877422505", "LT02_000_LVL2_5_AFTEROUTPOST", "box_OutputOrder_v2_15.Out", "box_SoundModifier_v2_14.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1736898097", "1736898097", "LT02_000_LVL2_5_AFTEROUTPOST", "box_OutputOrder_v2_15.Out", "box_ActivityEnd_1.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1640462466", "1640462466", "LT02_000_LVL2_5_AFTEROUTPOST", "box_MultipleOR_2.Out", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|2142258204", "2142258204", "LT02_000_LVL2_5_AFTEROUTPOST", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|2010627114", "2010627114", "LT02_000_LVL2_5_AFTEROUTPOST", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GenericActivityCompletionListener_6_ActivityRewardReceived()
    local l0, l1;
    l0 = self.box_GenericActivityCompletionListener_6;
    l1 = self.box_PhoneCallExclusivityModifier_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|232805714", "232805714", "LT02_000_LVL2_5_AFTEROUTPOST", "box_GenericActivityCompletionListener_6.ActivityRewardReceived", "box_PhoneCallExclusivityModifier_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayWorldLocationUI_13();
    l0 = self.box_MultipleOR_12;
    l1 = self.box_DisplayWorldLocationUI_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|903185821", "903185821", "LT02_000_LVL2_5_AFTEROUTPOST", "box_MultipleOR_12.Out", "box_DisplayWorldLocationUI_13.Show", l0:GetLuaBox(), l1:GetLuaBox());
    -- Show
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GenericActivityCompletionListener_6();
    l0 = self.box_ActivityInitialized_8;
    l1 = self.box_GenericActivityCompletionListener_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|211442995", "211442995", "LT02_000_LVL2_5_AFTEROUTPOST", "box_ActivityInitialized_8.Out", "box_GenericActivityCompletionListener_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|40259962");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_14()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2892799268",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_10()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1515026151",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|559614755");
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

function export:OnEnter_box_DisplayWorldLocationUI_13()
    local params;
    params = {
        -- activityTypeCategory,
        [0] = 0,
        -- titleId,
        [2] = {
            section = "Objectives",
            item = "LT02_000_MARKED",
            id = "880099",
        },
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_9()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2893090032",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|1175535474");
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

function export:OnEnter_box_GenericActivityCompletionListener_6()
    local params;
    params = {
        -- CurrentActivityID,
        [0] = "9015287787004756",
        -- iMinRewardPoints,
        [1] = 200,
        -- Precondition,
        [2] = "9015313022945138",
        -- RegionID,
        [3] = 2,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_000\\LT02_000.domino|@LT02_000_LVL2_5_AFTEROUTPOST|2084206880");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
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
