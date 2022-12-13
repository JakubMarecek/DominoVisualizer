LUAC_�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_000/lt03_000.domino
-- User graph: LT03_000_THREATEN
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
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetSound_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayWorldLocationUI.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3250168693.bnk]], "CSoundResource");
        cboxRes:LoadResource([[685144342.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3710392047.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1806544807.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_000/LT03_000.LT03_000_THREATEN.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/SetSound_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromSound",
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
                name = "SoundID",
                type = "Sound",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "Sound",
            },
        },
        dataOutCount = 1,
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
    self._name = "LT03_000_THREATEN";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN";
    self.ShowdownCompleted = "9015225005517551";
    self.ShowdownRep_Selena = "9015225004369526";
    self.sPhoneCall = "685144342";
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|242719672");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
    self.box_GenericActivityCompletionListener_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GenericActivityCompletionListener.debug.lua");
    l0 = self.box_GenericActivityCompletionListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GenericActivityCompletionListener_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|249942903");
    l0:SetConnections({
        -- ActivityRewardReceived,
        [0] = self.f_box_GenericActivityCompletionListener_4_ActivityRewardReceived,
    });
    self.box_RequestPhoneCall_v2_12 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1207076248");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_12_Completed,
    });
    self.box_DisplayWorldLocationUI_15 = cbox:CreateBox("Domino/System/UI/DisplayWorldLocationUI.lua");
    l0 = self.box_DisplayWorldLocationUI_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayWorldLocationUI_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1317703984");
    l0:SetConnections({
        -- Showed,
        [1] = self.f_box_DisplayWorldLocationUI_15_Showed,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1404955942");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1493063722");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1507687264");
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
    self.box_PhoneCallExclusivityModifier_8 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1702680268");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_8_Enabled,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1890936641");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|664173778", "664173778", "LT03_000_THREATEN", "In", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetSound_v2_13();
    l0 = self.box_MultipleOR_10;
    l1 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|474557739", "474557739", "LT03_000_THREATEN", "box_MultipleOR_10.Out", "box_SetSound_v2_13.FromSound", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromSound
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GenericActivityCompletionListener_4_ActivityRewardReceived()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_12();
    l0 = self.box_GenericActivityCompletionListener_4;
    l1 = self.box_RequestPhoneCall_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|677926693", "677926693", "LT03_000_THREATEN", "box_GenericActivityCompletionListener_4.ActivityRewardReceived", "box_RequestPhoneCall_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_9_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1657365100", "1657365100", "LT03_000_THREATEN", "box_GetActivityState_v2_9.Active", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_9_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1434974907", "1434974907", "LT03_000_THREATEN", "box_GetActivityState_v2_9.Canceled", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_9_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetSound_v2_14();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|301586389", "301586389", "LT03_000_THREATEN", "box_GetActivityState_v2_9.Completed", "box_SetSound_v2_14.FromSound", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromSound
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_9_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|790857407", "790857407", "LT03_000_THREATEN", "box_GetActivityState_v2_9.Failed", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_9_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|2029741125", "2029741125", "LT03_000_THREATEN", "box_GetActivityState_v2_9.Inactive", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_9_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1013247600", "1013247600", "LT03_000_THREATEN", "box_GetActivityState_v2_9.Unavailable", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetSound_v2_13_Out()
    local l0;
    self:OnExit_box_SetSound_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|130731545", "130731545", "LT03_000_THREATEN", "box_SetSound_v2_13.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1519961080", "1519961080", "LT03_000_THREATEN", "box_OutputOrder_v2_6.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1818353842", "1818353842", "LT03_000_THREATEN", "box_OutputOrder_v2_6.Out", "box_Print_v2_3.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_12_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayWorldLocationUI_15();
    l0 = self.box_RequestPhoneCall_v2_12;
    l1 = self.box_DisplayWorldLocationUI_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1235558518", "1235558518", "LT03_000_THREATEN", "box_RequestPhoneCall_v2_12.Completed", "box_DisplayWorldLocationUI_15.Show", l0:GetLuaBox(), l1:GetLuaBox());
    -- Show
    l1:Exec(0, params);
end;

function export:f_box_DisplayWorldLocationUI_15_Showed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_DisplayWorldLocationUI_15;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|85203321", "85203321", "LT03_000_THREATEN", "box_DisplayWorldLocationUI_15.Showed", "box_ActivityEnd_5.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1095241097", "1095241097", "LT03_000_THREATEN", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|163682045", "163682045", "LT03_000_THREATEN", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1375166894", "1375166894", "LT03_000_THREATEN", "box_MultipleOR_7.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GenericActivityCompletionListener_4();
    l0 = self.box_MultipleOR_11;
    l1 = self.box_GenericActivityCompletionListener_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1455973313", "1455973313", "LT03_000_THREATEN", "box_MultipleOR_11.Out", "box_GenericActivityCompletionListener_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_9();
    l0 = self.box_PhoneCallExclusivityModifier_8;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|751757190", "751757190", "LT03_000_THREATEN", "box_PhoneCallExclusivityModifier_8.Enabled", "box_GetActivityState_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetSound_v2_14_Out()
    local l0;
    self:OnExit_box_SetSound_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1242420345", "1242420345", "LT03_000_THREATEN", "box_SetSound_v2_14.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_1_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_1;
    l1 = self.box_PhoneCallExclusivityModifier_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|736009373", "736009373", "LT03_000_THREATEN", "box_ActivityInitialized_1.Out", "box_PhoneCallExclusivityModifier_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:OnEnter_box_GenericActivityCompletionListener_4()
    local params;
    params = {
        -- CurrentActivityID,
        [0] = "9015277754693049",
        -- iMinRewardPoints,
        [1] = 200,
        -- Precondition,
        [2] = "9015291956814993",
        -- RegionID,
        [3] = 1,
        -- sPhoneCall,
        [4] = self.sPhoneCall,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|307191133");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_9_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_9_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_9_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_9_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_9_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_9_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015222442077232",
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|792304820");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_13_Out,
    });
    params = {
        -- SoundID,
        [0] = "685144342",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|827758814");
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

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1065321489");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1200203227");
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
        [8] = "LT01_000 MARKED started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_12()
    local params;
    params = {
        -- CustomRingInSound,
        [0] = "1806544807",
        -- CustomRingOutSound,
        [1] = "1806544807",
        -- Delay,
        [2] = 4,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3710392047",
    };
    return params;
end;

function export:OnEnter_box_DisplayWorldLocationUI_15()
    local params;
    params = {
        -- activityTypeCategory,
        [0] = 0,
        -- titleId,
        [2] = {
            section = "Objectives",
            item = "LT03_000_MARKED",
            id = "886288",
        },
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_000\\LT03_000.domino|@LT03_000_THREATEN|1753908596");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_14_Out,
    });
    params = {
        -- SoundID,
        [0] = "3250168693",
    };
    return params;
end;

function export:OnExit_box_SetSound_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sPhoneCall = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sPhoneCall = l0:GetDataOutValue(0);
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
