LUACj�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_570/mis_570_brief_b10.domino
-- User graph: MIS_570_BRIEF_B10_Main
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
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10.globals.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_BRIEF_B10.MIS_570_BRIEF_B10_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
            },
        },
        controlInCount = 3,
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
            [0] = {
                name = "PlayerGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "requiresPawnsActive",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_570_BRIEF_B10_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main";
    self.PlayerGroup = nil;
    self.LocalPlayer = nil;
    self.eQuestGiver = nil;
    self.Close = 3;
    self.Far = 5;
    self.gPlayer = nil;
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|789005675");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|908287268");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1012587923");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_ProximityTrigger_v3_11 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1441955612");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_11_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_11_Leave,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1451626605");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_Brick_NarrativeQuickCinema_V7_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V7_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V7_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1509664479");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V7_2_Finished,
    });
    self.box_CharacterLoadedIdListener_v2_7 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1945067366");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_7_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_7_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_7_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_7_LoadedIdReceived,
    });
    self.box_MultipleAND_v2_19 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1954436176");
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
        [0] = self.f_box_MultipleAND_v2_19_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_7();
    l0 = self.box_CharacterLoadedIdListener_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1320821544", "1320821544", "MIS_570_BRIEF_B10_Main", "In", "box_CharacterLoadedIdListener_v2_7.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|910990619", "910990619", "MIS_570_BRIEF_B10_Main", "OnLeaveZone", "box_ActivityRetry_v2_8.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_12_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|85975242", "85975242", "MIS_570_BRIEF_B10_Main", "box_UseContextualActionModifier_v3_12.Enabled", "box_UseContextualActionModifier_v3_12.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_13_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|487451521", "487451521", "MIS_570_BRIEF_B10_Main", "box_GetPlayerGroup_v2_13.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_16_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_15();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1090868162", "1090868162", "MIS_570_BRIEF_B10_Main", "box_UseContextualActionModifier_v3_16.Disabled", "box_UseContextualActionModifier_v3_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_9();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1780591184", "1780591184", "MIS_570_BRIEF_B10_Main", "box_OutputOrder_v2_17.Out", "box_SetBoolean_v2_9.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|833784281", "833784281", "MIS_570_BRIEF_B10_Main", "box_OutputOrder_v2_17.Out", "box_ActivityEnd_3.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = self.box_Delay_v5_14;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|433736998", "433736998", "MIS_570_BRIEF_B10_Main", "box_Delay_v5_14.TimeElapsed", "box_UseContextualActionModifier_v3_16.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_19();
    l0 = self.box_MultipleAND_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1916971661", "1916971661", "MIS_570_BRIEF_B10_Main", "box_OutputOrder_v2_20.Out", "box_MultipleAND_v2_19.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|751287917", "751287917", "MIS_570_BRIEF_B10_Main", "box_OutputOrder_v2_20.Out", "box_UseContextualActionModifier_v3_23.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1388314484", "1388314484", "MIS_570_BRIEF_B10_Main", "box_OutputOrder_v2_20.Out", "box_UseContextualActionModifier_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1835602708", "1835602708", "MIS_570_BRIEF_B10_Main", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|142347471", "142347471", "MIS_570_BRIEF_B10_Main", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_15_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_15();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|213295198", "213295198", "MIS_570_BRIEF_B10_Main", "box_UseContextualActionModifier_v3_15.Enabled", "box_UseContextualActionModifier_v3_15.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V7_2();
    l0 = self.box_ActivityInitialized_5;
    l1 = self.box_Brick_NarrativeQuickCinema_V7_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1275214827", "1275214827", "MIS_570_BRIEF_B10_Main", "box_ActivityInitialized_5.Out", "box_Brick_NarrativeQuickCinema_V7_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_23_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_19();
    l0 = self.box_MultipleAND_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1486352021", "1486352021", "MIS_570_BRIEF_B10_Main", "box_UseContextualActionModifier_v3_23.Disabled", "box_MultipleAND_v2_19.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetBoolean_v2_9_Out()
    self:OnExit_box_SetBoolean_v2_9_Out();
end;

function export:f_box_UseContextualActionModifier_v3_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_19();
    l0 = self.box_MultipleAND_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|212933422", "212933422", "MIS_570_BRIEF_B10_Main", "box_UseContextualActionModifier_v3_24.Disabled", "box_MultipleAND_v2_19.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_ProximityTrigger_v3_11_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_10();
    l0 = self.box_ProximityTrigger_v3_11;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1225399312", "1225399312", "MIS_570_BRIEF_B10_Main", "box_ProximityTrigger_v3_11.Enter", "box_UseContextualActionModifier_v3_10.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_11_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_ProximityTrigger_v3_11;
    l1 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1530035445", "1530035445", "MIS_570_BRIEF_B10_Main", "box_ProximityTrigger_v3_11.Leave", "box_Delay_v5_14.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1294527347", "1294527347", "MIS_570_BRIEF_B10_Main", "box_MultipleOR_6.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_2_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|2114103509", "2114103509", "MIS_570_BRIEF_B10_Main", "box_Brick_NarrativeQuickCinema_V7_2.Finished", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1203889055", "1203889055", "MIS_570_BRIEF_B10_Main", "box_OutputOrder_v2_1.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_11();
    l0 = self.box_ProximityTrigger_v3_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|2038142019", "2038142019", "MIS_570_BRIEF_B10_Main", "box_OutputOrder_v2_1.Out", "box_ProximityTrigger_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_10_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|326730738", "326730738", "MIS_570_BRIEF_B10_Main", "box_UseContextualActionModifier_v3_10.Disabled", "box_UseContextualActionModifier_v3_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_7_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_7_LoadedIdReceived();
    params = self:OnEnter_box_GetPlayerGroup_v2_13();
    l0 = self.box_CharacterLoadedIdListener_v2_7;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|952622405", "952622405", "MIS_570_BRIEF_B10_Main", "box_CharacterLoadedIdListener_v2_7.LoadedIdReceived", "box_GetPlayerGroup_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_MultipleAND_v2_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1357351922", "1357351922", "MIS_570_BRIEF_B10_Main", "box_MultipleAND_v2_19.Out", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_UseContextualActionModifier_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|115951141");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_12_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109191620244016769",
        -- Entity,
        [2] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|213765671");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|270754483");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_16_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109191620244016769",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|645793444");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|670756976");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|803398471");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|944721347");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_15_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108018979013396505",
        -- Entity,
        [2] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1177540409");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_23_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109191620244016769",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1283901220");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1332785015");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1393206662");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_24_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108018979013396505",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_11()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayer,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109568591325043351",
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V7_2()
    local params;
    params = {
        -- b_IsNPCPersistentCharacter,
        [0] = true,
        -- b_WaitForConvoEndOnSkip,
        [1] = false,
        -- eNPC,
        [4] = self.eQuestGiver,
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

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1555260946");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_BRIEF_B10.domino|@MIS_570_BRIEF_B10_Main|1590835018");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_10_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108018979013396505",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870702481",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_19()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_570_B10.Completed_Round1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_7_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_7;
    self.eQuestGiver = l0:GetDataOutValue(0);
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
