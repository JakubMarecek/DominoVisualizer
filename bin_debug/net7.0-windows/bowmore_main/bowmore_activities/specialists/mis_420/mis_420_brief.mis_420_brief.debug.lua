LUAC�f  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_420/mis_420_brief.domino
-- User graph: MIS_420_BRIEF
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
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_420/MIS_420_BRIEF.MIS_420_BRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
            [0] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_420_BRIEF";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF";
    self.FriendlyPlayer = nil;
    self.eGiver = nil;
    self.box_RemoveEntity_v2_8 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|295477316");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|297271911");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_AutoSwitchSTP_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.AutoSwitchSTP.debug.lua");
    l0 = self.box_AutoSwitchSTP_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AutoSwitchSTP_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|643744361");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_AutoSwitchSTP_10_Finished,
    });
    self.box_RemoveEntity_v2_7 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|982355085");
    l0:SetConnections({
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|1325993986");
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
    self.box_Brick_NarrativeQuickCinema_V7_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V7_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V7_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|1335236167");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V7_1_Finished,
        -- LineStarted,
        [3] = self.f_box_Brick_NarrativeQuickCinema_V7_1_LineStarted,
        -- Paused,
        [5] = self.f_box_Brick_NarrativeQuickCinema_V7_1_Paused,
        -- Resumed,
        [6] = self.f_box_Brick_NarrativeQuickCinema_V7_1_Resumed,
        -- Started,
        [7] = self.f_box_Brick_NarrativeQuickCinema_V7_1_Started,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|1831768134");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_CharacterLoadedIdListener_v2_5 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|1978802478");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_5_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_5_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_5_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_5_LoadedIdReceived,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|715224179", "715224179", "MIS_420_BRIEF", "In", "box_ActivityAcknowledgeGate_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|175944809", "175944809", "MIS_420_BRIEF", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|2073099195", "2073099195", "MIS_420_BRIEF", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AutoSwitchSTP_10_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_AutoSwitchSTP_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|2069248171", "2069248171", "MIS_420_BRIEF", "box_AutoSwitchSTP_10.Finished", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|274024010", "274024010", "MIS_420_BRIEF", "box_MultipleOR_3.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_1_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_10();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_1;
    l1 = self.box_AutoSwitchSTP_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|1285745355", "1285745355", "MIS_420_BRIEF", "box_Brick_NarrativeQuickCinema_V7_1.Finished", "box_AutoSwitchSTP_10.Finish", l0:GetLuaBox(), l1:GetLuaBox());
    -- Finish
    l1:Exec(0, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_1_LineStarted()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_10();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_1;
    l1 = self.box_AutoSwitchSTP_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|1503615885", "1503615885", "MIS_420_BRIEF", "box_Brick_NarrativeQuickCinema_V7_1.LineStarted", "box_AutoSwitchSTP_10.LineStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- LineStart
    l1:Exec(1, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_1_Paused()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_10();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_1;
    l1 = self.box_AutoSwitchSTP_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|505891450", "505891450", "MIS_420_BRIEF", "box_Brick_NarrativeQuickCinema_V7_1.Paused", "box_AutoSwitchSTP_10.Pause", l0:GetLuaBox(), l1:GetLuaBox());
    -- Pause
    l1:Exec(2, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_1_Resumed()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_10();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_1;
    l1 = self.box_AutoSwitchSTP_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|1412155783", "1412155783", "MIS_420_BRIEF", "box_Brick_NarrativeQuickCinema_V7_1.Resumed", "box_AutoSwitchSTP_10.Resume", l0:GetLuaBox(), l1:GetLuaBox());
    -- Resume
    l1:Exec(3, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_10();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_1;
    l1 = self.box_AutoSwitchSTP_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|1470613952", "1470613952", "MIS_420_BRIEF", "box_Brick_NarrativeQuickCinema_V7_1.Started", "box_AutoSwitchSTP_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(4, params);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_5();
    l0 = self.box_ActivityInitialized_4;
    l1 = self.box_CharacterLoadedIdListener_v2_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|1486063966", "1486063966", "MIS_420_BRIEF", "box_ActivityInitialized_4.Out", "box_CharacterLoadedIdListener_v2_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_5_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_5_LoadedIdReceived();
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V7_1();
    l0 = self.box_CharacterLoadedIdListener_v2_5;
    l1 = self.box_Brick_NarrativeQuickCinema_V7_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|1550313138", "1550313138", "MIS_420_BRIEF", "box_CharacterLoadedIdListener_v2_5.LoadedIdReceived", "box_Brick_NarrativeQuickCinema_V7_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_7();
    l0 = self.box_RemoveEntity_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|616456393", "616456393", "MIS_420_BRIEF", "box_OutputOrder_v2_9.Out", "box_RemoveEntity_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_8();
    l0 = self.box_RemoveEntity_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|1628362694", "1628362694", "MIS_420_BRIEF", "box_OutputOrder_v2_9.Out", "box_RemoveEntity_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|1303069916", "1303069916", "MIS_420_BRIEF", "box_OutputOrder_v2_9.Out", "box_ActivityEnd_2.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_RemoveEntity_v2_8()
    local params;
    params = {
        -- Group,
        [0] = "2109564668663066390",
    };
    return params;
end;

function export:OnEnter_box_AutoSwitchSTP_10()
    local params;
    params = {
        -- eNPC,
        [0] = self.eGiver,
        -- Paragraph,
        [1] = 2,
        -- STP01,
        [2] = "2110133894605974594",
        -- STP02,
        [3] = "2110133895289646150",
        -- STP03,
        [4] = "2110133863983361086",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_7()
    local params;
    params = {
        -- Group,
        [0] = "2109564466854129417",
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V7_1()
    local params;
    params = {
        -- b_IsNPCPersistentCharacter,
        [0] = true,
        -- b_WaitForConvoEndOnSkip,
        [1] = false,
        -- eNPC,
        [4] = self.eGiver,
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

function export:OnEnter_box_CharacterLoadedIdListener_v2_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328869750565",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|2055906075");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_BRIEF.domino|@MIS_420_BRIEF|2071539622");
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

function export:OnExit_box_CharacterLoadedIdListener_v2_5_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_5;
    self.eGiver = l0:GetDataOutValue(0);
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
