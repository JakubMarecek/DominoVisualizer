LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act1/mis_150/mis_150_brief.domino
-- User graph: MIS_150_BRIEF
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.AutoSwitchSTP.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_150/MIS_150_BRIEF.MIS_150_BRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.AutoSwitchSTP.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Finish",
            },
            [1] = {
                name = "LineStart",
            },
            [2] = {
                name = "Pause",
            },
            [3] = {
                name = "Resume",
            },
            [4] = {
                name = "Start",
            },
        },
        controlInCount = 5,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "Paragraph",
                type = "int",
            },
            [2] = {
                name = "STP01",
                type = "entity",
            },
            [3] = {
                name = "STP02",
                type = "entity",
            },
            [4] = {
                name = "STP03",
                type = "entity",
            },
            [5] = {
                name = "STP04",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Aborted",
                delayed = true,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Finished",
                delayed = true,
            },
            [3] = {
                name = "LineStarted",
                delayed = true,
            },
            [4] = {
                name = "OasisLineStarted",
                delayed = true,
            },
            [5] = {
                name = "Paused",
                delayed = true,
            },
            [6] = {
                name = "Resumed",
                delayed = true,
            },
            [7] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "b_IsNPCPersistentCharacter",
                type = "bool",
            },
            [1] = {
                name = "b_WaitForConvoEndOnSkip",
                type = "bool",
            },
            [2] = {
                name = "CheckedOasisID",
                type = "int",
            },
            [3] = {
                name = "e_MobileObjectiveMarker",
                type = "entity",
            },
            [4] = {
                name = "eNPC",
                type = "entity",
            },
            [5] = {
                name = "Interrupt_STP_on_Talk",
                type = "bool",
            },
            [6] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "TriggeredLineId",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "CharacterId",
                type = "genericdb",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_150_BRIEF";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF";
    self.KEY01_NickRye = "9015184054185563";
    self.Uni102_NoName_Survivor = "9015328869770419";
    self.Uni104_PierreLuc = "9015328869829173";
    self.gPlayer = nil;
    self.eQGiver = nil;
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|165886735");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_v2_6 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|380111206");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_6_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_6_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_6_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_6_LoadedIdReceived,
    });
    self.box_Gate_v3_14 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|625778987");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_14_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_14_Out,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|673194965");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_Gate_v3_15 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|869105753");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_15_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_15_Out,
    });
    self.box_Brick_NarrativeQuickCinema_V7_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V7_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V7_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|889835646");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V7_3_Finished,
        -- LineStarted,
        [3] = self.f_box_Brick_NarrativeQuickCinema_V7_3_LineStarted,
        -- Paused,
        [5] = self.f_box_Brick_NarrativeQuickCinema_V7_3_Paused,
        -- Resumed,
        [6] = self.f_box_Brick_NarrativeQuickCinema_V7_3_Resumed,
        -- Started,
        [7] = self.f_box_Brick_NarrativeQuickCinema_V7_3_Started,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|1425828186");
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
    self.box_Gate_v3_16 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|1807917255");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_16_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_16_Out,
    });
    self.box_Gate_v3_18 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|1860778120");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_18_Out,
    });
    self.box_AutoSwitchSTP_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.AutoSwitchSTP.debug.lua");
    l0 = self.box_AutoSwitchSTP_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AutoSwitchSTP_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|1921827651");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|2143421997");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|312117143", "312117143", "MIS_150_BRIEF", "In", "box_ActivityAcknowledgeGate_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_Delay_v5_9;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|97402473", "97402473", "MIS_150_BRIEF", "box_Delay_v5_9.TimeElapsed", "box_ActivityEnd_4.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_6_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_6_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_CharacterLoadedIdListener_v2_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|544564273", "544564273", "MIS_150_BRIEF", "box_CharacterLoadedIdListener_v2_6.LoadedIdReceived", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_14_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_15();
    l0 = self.box_Gate_v3_14;
    l1 = self.box_Gate_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|222585096", "222585096", "MIS_150_BRIEF", "box_Gate_v3_14.Closed", "box_Gate_v3_15.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_10();
    l0 = self.box_Gate_v3_14;
    l1 = self.box_AutoSwitchSTP_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|2044775965", "2044775965", "MIS_150_BRIEF", "box_Gate_v3_14.Out", "box_AutoSwitchSTP_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(4, params);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|1695509189", "1695509189", "MIS_150_BRIEF", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|372825147", "372825147", "MIS_150_BRIEF", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_12_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_14();
    l0 = self.box_Gate_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|1475662881", "1475662881", "MIS_150_BRIEF", "box_GetActivityState_v2_12.Active", "box_Gate_v3_14.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_15_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_16();
    l0 = self.box_Gate_v3_15;
    l1 = self.box_Gate_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|2098259707", "2098259707", "MIS_150_BRIEF", "box_Gate_v3_15.Closed", "box_Gate_v3_16.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_10();
    l0 = self.box_Gate_v3_15;
    l1 = self.box_AutoSwitchSTP_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|1690378040", "1690378040", "MIS_150_BRIEF", "box_Gate_v3_15.Out", "box_AutoSwitchSTP_10.Pause", l0:GetLuaBox(), l1:GetLuaBox());
    -- Pause
    l1:Exec(2, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_3_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_3;
    l1 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|330364397", "330364397", "MIS_150_BRIEF", "box_Brick_NarrativeQuickCinema_V7_3.Finished", "box_Delay_v5_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_3_LineStarted()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_18();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_3;
    l1 = self.box_Gate_v3_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|2106221392", "2106221392", "MIS_150_BRIEF", "box_Brick_NarrativeQuickCinema_V7_3.LineStarted", "box_Gate_v3_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_3_Paused()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_15();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_3;
    l1 = self.box_Gate_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|2020645245", "2020645245", "MIS_150_BRIEF", "box_Brick_NarrativeQuickCinema_V7_3.Paused", "box_Gate_v3_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_3_Resumed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_16();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_3;
    l1 = self.box_Gate_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|1624542287", "1624542287", "MIS_150_BRIEF", "box_Brick_NarrativeQuickCinema_V7_3.Resumed", "box_Gate_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_3_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_14();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_3;
    l1 = self.box_Gate_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|377309681", "377309681", "MIS_150_BRIEF", "box_Brick_NarrativeQuickCinema_V7_3.Started", "box_Gate_v3_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V7_3();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|422831738", "422831738", "MIS_150_BRIEF", "box_OutputOrder_v2_13.Out", "box_Brick_NarrativeQuickCinema_V7_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_12();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|1628423112", "1628423112", "MIS_150_BRIEF", "box_OutputOrder_v2_13.Out", "box_GetActivityState_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|432417542", "432417542", "MIS_150_BRIEF", "box_MultipleOR_2.Out", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Gate_v3_16_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_18();
    l0 = self.box_Gate_v3_16;
    l1 = self.box_Gate_v3_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|791393580", "791393580", "MIS_150_BRIEF", "box_Gate_v3_16.Closed", "box_Gate_v3_18.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_10();
    l0 = self.box_Gate_v3_16;
    l1 = self.box_AutoSwitchSTP_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|1024869203", "1024869203", "MIS_150_BRIEF", "box_Gate_v3_16.Out", "box_AutoSwitchSTP_10.Resume", l0:GetLuaBox(), l1:GetLuaBox());
    -- Resume
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_10();
    l0 = self.box_Gate_v3_18;
    l1 = self.box_AutoSwitchSTP_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|2108624549", "2108624549", "MIS_150_BRIEF", "box_Gate_v3_18.Out", "box_AutoSwitchSTP_10.LineStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- LineStart
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_6();
    l0 = self.box_ActivityInitialized_8;
    l1 = self.box_CharacterLoadedIdListener_v2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|637864685", "637864685", "MIS_150_BRIEF", "box_ActivityInitialized_8.Out", "box_CharacterLoadedIdListener_v2_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|258141846");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328869829173",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_14()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|685601448");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_12_Active,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015353452883024",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_15()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V7_3()
    local params;
    params = {
        -- b_IsNPCPersistentCharacter,
        [0] = true,
        -- b_WaitForConvoEndOnSkip,
        [1] = false,
        -- eNPC,
        [4] = self.eQGiver,
        -- Interrupt STP on Talk,
        [5] = false,
        -- oObjective,
        [6] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_Talk",
            id = "426352",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_150\\MIS_150_BRIEF.domino|@MIS_150_BRIEF|1193359666");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_16()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_18()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_AutoSwitchSTP_10()
    local params;
    params = {
        -- eNPC,
        [0] = self.eQGiver,
        -- Paragraph,
        [1] = 1,
        -- STP01,
        [2] = "2109898645783459656",
        -- STP02,
        [3] = "2109898640897095487",
        -- STP03,
        [4] = "2109898636700694331",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_6_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_6;
    self.eQGiver = l0:GetDataOutValue(0);
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
