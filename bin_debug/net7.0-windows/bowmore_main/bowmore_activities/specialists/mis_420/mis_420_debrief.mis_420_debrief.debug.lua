LUAC  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_420/mis_420_debrief.domino
-- User graph: MIS_420_DEBRIEF
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_420/MIS_420_DEBRIEF.MIS_420_DEBRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "RemoveItemFromInventory",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ItemsAcquired",
                delayed = false,
            },
            [1] = {
                name = "ItemsRemoved",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AmountRequired",
                type = "int",
            },
            [1] = {
                name = "bCheckAmountInInventory",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [4] = {
                name = "LootItemID",
                type = "genericdb",
            },
            [5] = {
                name = "MarkerTypeId",
                type = "database",
            },
            [6] = {
                name = "Objective",
                type = "oasis",
            },
            [7] = {
                name = "opt_eMarker",
                type = "entity",
            },
            [8] = {
                name = "ProtectItemOnSuccess",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    self._name = "MIS_420_DEBRIEF";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF";
    self.FriendlyPlayer = nil;
    self.eGiver = nil;
    self.box_CharacterLoadedIdListener_v2_4 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|223954411");
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
    self.box_Brick_NarrativeQuickCinema_V7_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V7_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V7_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|417361238");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V7_3_Finished,
    });
    self.box_RemoveEntity_v2_8 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|603397789");
    l0:SetConnections({
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|717988113");
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
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|731913017");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_RemoveEntity_v2_9 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|859283455");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_11 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1042580776");
    l0:SetConnections({
    });
    self.box_Brick_AcquireObject_v6_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
    l0 = self.box_Brick_AcquireObject_v6_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v6_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1146897290");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1207610009");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_PhoneCallExclusivityModifier_13 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1326756531");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_13_Enabled,
    });
    self.box_RemoveEntity_v2_12 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1544839168");
    l0:SetConnections({
    });
    self.box_StartCelebration_7 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1662544720");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_7_Ended,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|922566415", "922566415", "MIS_420_DEBRIEF", "In", "box_ActivityAcknowledgeGate_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|576733257", "576733257", "MIS_420_DEBRIEF", "OnLeaveZone", "box_ActivityRetry_v2_10.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_4_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_4_LoadedIdReceived();
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V7_3();
    l0 = self.box_CharacterLoadedIdListener_v2_4;
    l1 = self.box_Brick_NarrativeQuickCinema_V7_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|835290769", "835290769", "MIS_420_DEBRIEF", "box_CharacterLoadedIdListener_v2_4.LoadedIdReceived", "box_Brick_NarrativeQuickCinema_V7_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_3_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1869845807", "1869845807", "MIS_420_DEBRIEF", "box_Brick_NarrativeQuickCinema_V7_3.Finished", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v6_17();
    l0 = self.box_Brick_AcquireObject_v6_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1917375676", "1917375676", "MIS_420_DEBRIEF", "box_OutputOrder_v2_15.Out", "box_Brick_AcquireObject_v6_17.RemoveItemFromInventory", clone:GetLuaBox(), l0:GetLuaBox());
    -- RemoveItemFromInventory
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_11();
    l0 = self.box_RemoveEntity_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|751199554", "751199554", "MIS_420_DEBRIEF", "box_OutputOrder_v2_15.Out", "box_RemoveEntity_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_12();
    l0 = self.box_RemoveEntity_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|2083878970", "2083878970", "MIS_420_DEBRIEF", "box_OutputOrder_v2_15.Out", "box_RemoveEntity_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_8();
    l0 = self.box_RemoveEntity_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1030099523", "1030099523", "MIS_420_DEBRIEF", "box_OutputOrder_v2_15.Out", "box_RemoveEntity_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_9();
    l0 = self.box_RemoveEntity_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1304350492", "1304350492", "MIS_420_DEBRIEF", "box_OutputOrder_v2_15.Out", "box_RemoveEntity_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_7();
    l0 = self.box_StartCelebration_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|275611293", "275611293", "MIS_420_DEBRIEF", "box_OutputOrder_v2_15.Out", "box_StartCelebration_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1436074550", "1436074550", "MIS_420_DEBRIEF", "box_MultipleOR_1.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_5_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_5;
    l1 = self.box_PhoneCallExclusivityModifier_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|692674644", "692674644", "MIS_420_DEBRIEF", "box_ActivityInitialized_5.Out", "box_PhoneCallExclusivityModifier_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1039615638", "1039615638", "MIS_420_DEBRIEF", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1168012231", "1168012231", "MIS_420_DEBRIEF", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PhoneCallExclusivityModifier_13_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_4();
    l0 = self.box_PhoneCallExclusivityModifier_13;
    l1 = self.box_CharacterLoadedIdListener_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1552091404", "1552091404", "MIS_420_DEBRIEF", "box_PhoneCallExclusivityModifier_13.Enabled", "box_CharacterLoadedIdListener_v2_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StartCelebration_7_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = self.box_StartCelebration_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1229930174", "1229930174", "MIS_420_DEBRIEF", "box_StartCelebration_7.Ended", "box_ActivityEnd_2.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328869750565",
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
            section = "Objectives",
            item = "MIS_420_DEBRIEF_GOAL_Talk",
            id = "961134",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|430374813");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
                [3] = self.f_box_OutputOrder_v2_15_Out_3,
                [4] = self.f_box_OutputOrder_v2_15_Out_4,
                [5] = self.f_box_OutputOrder_v2_15_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_8()
    local params;
    params = {
        -- Group,
        [0] = "2109941966985762081",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_9()
    local params;
    params = {
        -- Group,
        [0] = "2109941986015319330",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|991555755");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_11()
    local params;
    params = {
        -- Group,
        [0] = "2108389488863493081",
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v6_17()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bCheckAmountInInventory,
        [1] = true,
        -- bRequiresObjective,
        [2] = true,
        -- CompletePreviousObjective,
        [3] = true,
        -- LootItemID,
        [4] = "9015344977399218",
        -- ProtectItemOnSuccess,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_420\\MIS_420_DEBRIEF.domino|@MIS_420_DEBRIEF|1473114275");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_12()
    local params;
    params = {
        -- Group,
        [0] = "2108389499288435674",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_7()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_4_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_4;
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
