LUAC�}  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_580/mis_580_debrief.domino
-- User graph: MIS_580_DEBRIEF_main
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/MIS_580_DEBRIEF.MIS_580_DEBRIEF_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
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
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_580_DEBRIEF_main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main";
    self.QGiver = nil;
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|4400585");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_StartCelebration_10 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|72686381");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_10_Ended,
    });
    self.box_Brick_NarrativeQuickCinema_V7_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V7_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V7_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|516479946");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V7_9_Finished,
        -- LineStarted,
        [3] = self.f_box_Brick_NarrativeQuickCinema_V7_9_LineStarted,
        -- Paused,
        [5] = self.f_box_Brick_NarrativeQuickCinema_V7_9_Paused,
        -- Resumed,
        [6] = self.f_box_Brick_NarrativeQuickCinema_V7_9_Resumed,
        -- Started,
        [7] = self.f_box_Brick_NarrativeQuickCinema_V7_9_Started,
    });
    self.box_CharacterLoadedIdListener_v2_4 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|571684958");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_4_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_4_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_4_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_4_LoadedIdReceived,
    });
    self.box_AutoSwitchSTP_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.AutoSwitchSTP.debug.lua");
    l0 = self.box_AutoSwitchSTP_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AutoSwitchSTP_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1789861792");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_AutoSwitchSTP_13_Finished,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1984186055");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1989490746");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1757020711", "1757020711", "MIS_580_DEBRIEF_main", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1051983912", "1051983912", "MIS_580_DEBRIEF_main", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|575604347", "575604347", "MIS_580_DEBRIEF_main", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StartCelebration_10_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_StartCelebration_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|517921531", "517921531", "MIS_580_DEBRIEF_main", "box_StartCelebration_10.Ended", "box_ActivityEnd_7.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_9_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_13();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_9;
    l1 = self.box_AutoSwitchSTP_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1545041397", "1545041397", "MIS_580_DEBRIEF_main", "box_Brick_NarrativeQuickCinema_V7_9.Finished", "box_AutoSwitchSTP_13.Finish", l0:GetLuaBox(), l1:GetLuaBox());
    -- Finish
    l1:Exec(0, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_9_LineStarted()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_13();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_9;
    l1 = self.box_AutoSwitchSTP_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|879987324", "879987324", "MIS_580_DEBRIEF_main", "box_Brick_NarrativeQuickCinema_V7_9.LineStarted", "box_AutoSwitchSTP_13.LineStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- LineStart
    l1:Exec(1, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_9_Paused()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_13();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_9;
    l1 = self.box_AutoSwitchSTP_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|2022655603", "2022655603", "MIS_580_DEBRIEF_main", "box_Brick_NarrativeQuickCinema_V7_9.Paused", "box_AutoSwitchSTP_13.Pause", l0:GetLuaBox(), l1:GetLuaBox());
    -- Pause
    l1:Exec(2, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_9_Resumed()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_13();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_9;
    l1 = self.box_AutoSwitchSTP_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1177420709", "1177420709", "MIS_580_DEBRIEF_main", "box_Brick_NarrativeQuickCinema_V7_9.Resumed", "box_AutoSwitchSTP_13.Resume", l0:GetLuaBox(), l1:GetLuaBox());
    -- Resume
    l1:Exec(3, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_9_Started()
    local params, l0, l1;
    params = self:OnEnter_box_AutoSwitchSTP_13();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_9;
    l1 = self.box_AutoSwitchSTP_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1041516191", "1041516191", "MIS_580_DEBRIEF_main", "box_Brick_NarrativeQuickCinema_V7_9.Started", "box_AutoSwitchSTP_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(4, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_4_LoadedIdReceived()
    local l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_4_LoadedIdReceived();
    l0 = self.box_CharacterLoadedIdListener_v2_4;
    l1 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|94729995", "94729995", "MIS_580_DEBRIEF_main", "box_CharacterLoadedIdListener_v2_4.LoadedIdReceived", "box_ActivityAcknowledgeGate_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_UseContextualActionModifier_v3_12_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_10();
    l0 = self.box_StartCelebration_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1363268851", "1363268851", "MIS_580_DEBRIEF_main", "box_UseContextualActionModifier_v3_12.Disabled", "box_StartCelebration_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_4();
    l0 = self.box_CharacterLoadedIdListener_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1749924030", "1749924030", "MIS_580_DEBRIEF_main", "box_OutputOrder_v2_3.Out", "box_CharacterLoadedIdListener_v2_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|572501931", "572501931", "MIS_580_DEBRIEF_main", "box_OutputOrder_v2_3.Out", "box_Print_v2_1.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AutoSwitchSTP_13_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    l0 = self.box_AutoSwitchSTP_13;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|283053623", "283053623", "MIS_580_DEBRIEF_main", "box_AutoSwitchSTP_13.Finished", "box_UseContextualActionModifier_v3_12.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V7_9();
    l0 = self.box_ActivityInitialized_5;
    l1 = self.box_Brick_NarrativeQuickCinema_V7_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|405515480", "405515480", "MIS_580_DEBRIEF_main", "box_ActivityInitialized_5.Out", "box_Brick_NarrativeQuickCinema_V7_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_8_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_8;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|368209361", "368209361", "MIS_580_DEBRIEF_main", "box_MultipleOR_8.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:OnEnter_box_StartCelebration_10()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V7_9()
    local params;
    params = {
        -- b_IsNPCPersistentCharacter,
        [0] = true,
        -- b_WaitForConvoEndOnSkip,
        [1] = false,
        -- eNPC,
        [4] = self.QGiver,
        -- Interrupt STP on Talk,
        [5] = false,
        -- oObjective,
        [6] = {
            section = "Objectives",
            item = "MIS_580_B10_OBJ_TalkToHurk",
            id = "1013037",
        },
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206727351417",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1078815140");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1275873648");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_12_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109706973290219976",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1286715731");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "blue",
        -- duration,
        [3] = 22,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "MIS_580_DEBrief Starting...",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\MIS_580_DEBRIEF.domino|@MIS_580_DEBRIEF_main|1594381848");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AutoSwitchSTP_13()
    local params;
    params = {
        -- eNPC,
        [0] = self.QGiver,
        -- Paragraph,
        [1] = 2,
        -- STP01,
        [2] = "2110245680516702937",
        -- STP02,
        [3] = "2110245681135362781",
        -- STP03,
        [4] = "2110245681517044449",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_4_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_4;
    self.QGiver = l0:GetDataOutValue(0);
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
