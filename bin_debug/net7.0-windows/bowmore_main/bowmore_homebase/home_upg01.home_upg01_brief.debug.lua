LUAC<p  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_homebase/home_upg01.domino
-- User graph: HOME_UPG01_BRIEF
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.HOME_UPG01 = nil;
    Globals.HOME_UPG01 = {
        SpecialistsCount = 0,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Homebase/HOME_UPG01.HOME_UPG01_BRIEF.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "HOME_UPG01_BRIEF";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF";
    self.eGiver = nil;
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|195085264");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_Brick_NarrativeQuickCinema_V7_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V7_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V7_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|280030910");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V7_3_Finished,
        -- Started,
        [7] = self.f_box_Brick_NarrativeQuickCinema_V7_3_Started,
    });
    self.box_CharacterLoadedIdListener_v2_6 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|330943382");
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
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|678876298");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|680919990");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|1170917198");
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
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|416466098", "416466098", "HOME_UPG01_BRIEF", "In", "box_ActivityAcknowledgeGate_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|733089795", "733089795", "HOME_UPG01_BRIEF", "OnLeaveZone", "box_ActivityRetry_v2_5.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_9_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_8();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|2063793702", "2063793702", "HOME_UPG01_BRIEF", "box_UseContextualActionModifier_v3_9.Disabled", "box_UseContextualActionModifier_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_10_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|1809479217", "1809479217", "HOME_UPG01_BRIEF", "box_UseContextualActionModifier_v3_10.Disabled", "box_UseContextualActionModifier_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_6();
    l0 = self.box_ActivityInitialized_2;
    l1 = self.box_CharacterLoadedIdListener_v2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|1854231775", "1854231775", "HOME_UPG01_BRIEF", "box_ActivityInitialized_2.Out", "box_CharacterLoadedIdListener_v2_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_11_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|247654901", "247654901", "HOME_UPG01_BRIEF", "box_UseContextualActionModifier_v3_11.Enabled", "box_UseContextualActionModifier_v3_11.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_11_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|2039246994", "2039246994", "HOME_UPG01_BRIEF", "box_UseContextualActionModifier_v3_11.UseCalled", "box_ActivityEnd_7.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_3_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_3;
    l1 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|2119264613", "2119264613", "HOME_UPG01_BRIEF", "box_Brick_NarrativeQuickCinema_V7_3.Finished", "box_Delay_v5_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_3_Started()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_9();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_3;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|1771048093", "1771048093", "HOME_UPG01_BRIEF", "box_Brick_NarrativeQuickCinema_V7_3.Started", "box_UseContextualActionModifier_v3_9.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_6_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_6_LoadedIdReceived();
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V7_3();
    l0 = self.box_CharacterLoadedIdListener_v2_6;
    l1 = self.box_Brick_NarrativeQuickCinema_V7_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|1199335685", "1199335685", "HOME_UPG01_BRIEF", "box_CharacterLoadedIdListener_v2_6.LoadedIdReceived", "box_Brick_NarrativeQuickCinema_V7_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_10();
    l0 = self.box_Delay_v5_12;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|1746956149", "1746956149", "HOME_UPG01_BRIEF", "box_Delay_v5_12.TimeElapsed", "box_UseContextualActionModifier_v3_10.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|139615163", "139615163", "HOME_UPG01_BRIEF", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|920222519", "920222519", "HOME_UPG01_BRIEF", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|1624121152", "1624121152", "HOME_UPG01_BRIEF", "box_MultipleOR_1.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_UseContextualActionModifier_v3_8_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_8();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|366064868", "366064868", "HOME_UPG01_BRIEF", "box_UseContextualActionModifier_v3_8.Enabled", "box_UseContextualActionModifier_v3_8.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_UseContextualActionModifier_v3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|140193877");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_9_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107743182461609319",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|194864211");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_10_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109691839194869457",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|255630271");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_11_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_11_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107743182461609319",
        -- Entity,
        [2] = self.eGiver,
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

function export:OnEnter_box_CharacterLoadedIdListener_v2_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870620083",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|942097538");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|985303108");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_BRIEF|1681081620");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_8_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109691839194869457",
        -- Entity,
        [2] = self.eGiver,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_6_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_6;
    self.eGiver = l0:GetDataOutValue(0);
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
