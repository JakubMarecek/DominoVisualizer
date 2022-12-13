LUAC�[  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni25/uni25_030_brief.domino
-- User graph: UNI25_030_BRIEF_main
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[57501580.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI25/UNI25_030_BRIEF.UNI25_030_BRIEF_main.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI25_030_BRIEF_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main";
    self.eUNI25 = nil;
    self.var_i_DestroyedWolfEmitters = 0;
    self.box_ActivityInitialized_9 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|51800994");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_9_Out,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|179589926");
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
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|511734032");
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
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|627489004");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|906693335");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_RequestPhoneCall_v2_2 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1479173124");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_2_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_2_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_2_Failed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_2_Started,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1632407910");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_10_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_11 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1799079135");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_11_Enabled,
    });
    self.box_OnceOnly_v3_4 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|2064575470");
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
                [0] = self.f_box_OnceOnly_v3_4_Out_0,
            },
            count = 2,
        },
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1410865200", "1410865200", "UNI25_030_BRIEF_main", "In", "box_ActivityAcknowledgeGate_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_ActivityInitialized_9_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_9;
    l1 = self.box_PhoneCallExclusivityModifier_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1273559103", "1273559103", "UNI25_030_BRIEF_main", "box_ActivityInitialized_9.Out", "box_PhoneCallExclusivityModifier_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_ActivityInitialized_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|650333083", "650333083", "UNI25_030_BRIEF_main", "box_MultipleOR_7.Out", "box_ActivityInitialized_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|625819805", "625819805", "UNI25_030_BRIEF_main", "box_MultipleOR_3.Out", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1669676716", "1669676716", "UNI25_030_BRIEF_main", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1068671562", "1068671562", "UNI25_030_BRIEF_main", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_OnceOnly_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|706988899", "706988899", "UNI25_030_BRIEF_main", "box_MultipleOR_5.Out", "box_OnceOnly_v3_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_2_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|476514026", "476514026", "UNI25_030_BRIEF_main", "box_RequestPhoneCall_v2_2.Canceled", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_2_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_RequestPhoneCall_v2_2;
    l1 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|55508746", "55508746", "UNI25_030_BRIEF_main", "box_RequestPhoneCall_v2_2.Completed", "box_Delay_v5_10.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_RequestPhoneCall_v2_2_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1715834522", "1715834522", "UNI25_030_BRIEF_main", "box_RequestPhoneCall_v2_2.Failed", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_2_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_RequestPhoneCall_v2_2;
    l1 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1728167145", "1728167145", "UNI25_030_BRIEF_main", "box_RequestPhoneCall_v2_2.Started", "box_Delay_v5_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_10_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_10;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|720689228", "720689228", "UNI25_030_BRIEF_main", "box_Delay_v5_10.Stopped", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_10;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1994764678", "1994764678", "UNI25_030_BRIEF_main", "box_Delay_v5_10.TimeElapsed", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PhoneCallExclusivityModifier_11_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_2();
    l0 = self.box_PhoneCallExclusivityModifier_11;
    l1 = self.box_RequestPhoneCall_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1582385396", "1582385396", "UNI25_030_BRIEF_main", "box_PhoneCallExclusivityModifier_11.Enabled", "box_RequestPhoneCall_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_4_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = self.box_OnceOnly_v3_4;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1407275492", "1407275492", "UNI25_030_BRIEF_main", "box_OnceOnly_v3_4.Out", "box_ActivityEnd_8.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_030_BRIEF.domino|@UNI25_030_BRIEF_main|1332019807");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_2()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "57501580",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
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
