LUACfp  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni24/uni24_010/uni24_010_brief.domino
-- User graph: UNI24_010_BRIEF
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_BRIEF.UNI24_010_BRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua")] = {
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
                name = "Paused",
                delayed = true,
            },
            [4] = {
                name = "Resumed",
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
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "eQCA_STP",
                type = "entity",
            },
            [2] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry.lua")] = {
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
            [2] = {
                name = "ShowHud",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                type = "string",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    self._name = "UNI24_010_BRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF";
    self.eQuestGiver = nil;
    self.Merle = nil;
    self.box_RemoveEntity_v2_4 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|358193702");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_4_Out,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|775252894");
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
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|796965693");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_RemoveEntity_v2_7 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|1160561962");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_7_Out,
    });
    self.box_Brick_NarrativeQuickCinema_V3_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|1280817500");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V3_6_Finished,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|1698665217");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_CharacterLoadedIdListener_11 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|1751582035");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_11_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_11_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_11_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_11_LoadedIdReceived,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|1571685910", "1571685910", "UNI24_010_BRIEF", "In", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|1765486183", "1765486183", "UNI24_010_BRIEF", "OnLeaveZone", "box_ActivityRetry_10.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_11();
    l0 = self.box_CharacterLoadedIdListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|202141075", "202141075", "UNI24_010_BRIEF", "box_OutputOrder_v2_1.Out", "box_CharacterLoadedIdListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|655611515", "655611515", "UNI24_010_BRIEF", "box_OutputOrder_v2_1.Out", "box_Print_v2_9.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_12_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|507807100", "507807100", "UNI24_010_BRIEF", "box_UseContextualActionModifier_v3_12.Disabled", "box_ActivityEnd_2.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    l0 = self.box_RemoveEntity_v2_4;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|1479620535", "1479620535", "UNI24_010_BRIEF", "box_RemoveEntity_v2_4.Out", "box_UseContextualActionModifier_v3_12.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_8_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_8;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|2028313747", "2028313747", "UNI24_010_BRIEF", "box_MultipleOR_8.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V3_6();
    l0 = self.box_ActivityInitialized_3;
    l1 = self.box_Brick_NarrativeQuickCinema_V3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|60807366", "60807366", "UNI24_010_BRIEF", "box_ActivityInitialized_3.Out", "box_Brick_NarrativeQuickCinema_V3_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_4();
    l0 = self.box_RemoveEntity_v2_7;
    l1 = self.box_RemoveEntity_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|434349469", "434349469", "UNI24_010_BRIEF", "box_RemoveEntity_v2_7.Out", "box_RemoveEntity_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_6_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_7();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_6;
    l1 = self.box_RemoveEntity_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|888016789", "888016789", "UNI24_010_BRIEF", "box_Brick_NarrativeQuickCinema_V3_6.Finished", "box_RemoveEntity_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|223254917", "223254917", "UNI24_010_BRIEF", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|588490044", "588490044", "UNI24_010_BRIEF", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CharacterLoadedIdListener_11_LoadedIdReceived()
    local l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_11_LoadedIdReceived();
    l0 = self.box_CharacterLoadedIdListener_11;
    l1 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|1767135743", "1767135743", "UNI24_010_BRIEF", "box_CharacterLoadedIdListener_11.LoadedIdReceived", "box_ActivityAcknowledgeGate_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|1761018");
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

function export:OnEnter_box_ActivityRetry_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|283141087");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|294624346");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_12_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103830357276117512",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_4()
    local params;
    params = {
        -- Group,
        [0] = "2104064594042440655",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|418024892");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_BRIEF.domino|@UNI24_010_BRIEF|839888883");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "KEY02_010_BRIEF script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_7()
    local params;
    params = {
        -- Group,
        [0] = "2103778296069114170",
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V3_6()
    local params;
    params = {
        -- eNPC,
        [0] = self.Merle,
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "UNI24_010_BRIEF_OBJ_Talk",
            id = "502186",
        },
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184608221198",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_11_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_11;
    self.Merle = l0:GetDataOutValue(0);
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
