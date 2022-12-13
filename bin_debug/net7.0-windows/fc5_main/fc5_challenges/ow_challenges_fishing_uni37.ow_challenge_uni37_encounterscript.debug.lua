LUAC*�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_challenges/ow_challenges_fishing_uni37.domino
-- User graph: OW_Challenge_UNI37_EncounterScript
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Encounter_Common.Beat_Detection.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetEncounterStatus_v2.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GetFromGroup.lua");
        cboxRes:RegisterBox("Domino/System/GetEntityInScriptPrefab.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/ListReader.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Challenges/OW_Challenges_Fishing_UNI37.OW_Challenge_UNI37_EncounterScript.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Encounter_Common.Beat_Detection.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "BeatChanged",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/System/AI/GetPreconditionState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NotValid",
                delayed = false,
            },
            [1] = {
                name = "Valid",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PreconditionId",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SetEncounterStatus_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetAsCompleted",
            },
            [1] = {
                name = "SetAsFailed",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAsCompleted",
                delayed = false,
            },
            [1] = {
                name = "OnSetAsFailed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/BroadcastMessage.lua")] = {
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Message",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")] = {
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
            [0] = {
                name = "Pawns",
                type = "list",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetEntityInScriptPrefab.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NoEntity",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ObjectName",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "ObjectEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v5.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberRemoved",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/ListReader.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Read",
            },
            [1] = {
                name = "ResetRead",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndOfList",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
            [1] = {
                name = "Input",
                type = "list",
            },
            [2] = {
                name = "Loop",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "CursorPos",
                type = "int",
            },
            [1] = {
                name = "Data",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    self._name = "OW_Challenge_UNI37_EncounterScript";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript";
    self.eCharacterEntity = nil;
    self.ePlayConvoSTP = nil;
    self.box_SetEncounterStatus_v2_5 = cbox:CreateBox("Domino/System/AI/SetEncounterStatus_v2.lua");
    l0 = self.box_SetEncounterStatus_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEncounterStatus_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|3584213");
    l0:SetConnections({
    });
    self.box_ListReader_10 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|464071989");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_10_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_10_Out,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|559101240");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|721936235");
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
    self.box_GetEntityInScriptPrefab_1 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1057542572");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_1_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_1_Out,
    });
    self.box_Beat_Detection_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Encounter_Common.Beat_Detection.debug.lua");
    l0 = self.box_Beat_Detection_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Beat_Detection_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1121771374");
    l0:SetConnections({
    });
    self.box_Brick_NarrativeQuickCinema_V3_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1671155949");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V3_15_Finished,
    });
    self.box_GetEntityInScriptPrefab_4 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1916316210");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_4_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_4_Out,
    });
    self.box_GroupSizeListener_v5_12 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1949715098");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_12_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_12_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_12_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_12_MemberRemoved,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1618385145", "1618385145", "OW_Challenge_UNI37_EncounterScript", "In", "box_OutputOrder_v2_18.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    l0 = self.box_SetEncounterStatus_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1475352848", "1475352848", "OW_Challenge_UNI37_EncounterScript", "box_BroadcastMessage_3.Out", "box_SetEncounterStatus_v2_5.SetAsCompleted", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsCompleted
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Beat_Detection_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|107916680", "107916680", "OW_Challenge_UNI37_EncounterScript", "box_OutputOrder_v2_18.Out", "box_Beat_Detection_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInScriptPrefab_1();
    l0 = self.box_GetEntityInScriptPrefab_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1013788380", "1013788380", "OW_Challenge_UNI37_EncounterScript", "box_OutputOrder_v2_18.Out", "box_GetEntityInScriptPrefab_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ListReader_10_Out()
    local l0, l1;
    self:OnExit_box_ListReader_10_Out();
    l0 = self.box_ListReader_10;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|662717958", "662717958", "OW_Challenge_UNI37_EncounterScript", "box_ListReader_10.Out", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetFromGroup_9_Out()
    local params, l0;
    self:OnExit_box_GetFromGroup_9_Out();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReader_10();
    l0 = self.box_ListReader_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1681061433", "1681061433", "OW_Challenge_UNI37_EncounterScript", "box_GetFromGroup_9.Out", "box_ListReader_10.Read", clone:GetLuaBox(), l0:GetLuaBox());
    -- Read
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_13();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1089218888", "1089218888", "OW_Challenge_UNI37_EncounterScript", "box_MultipleOR_14.Out", "box_Compare_Integers_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetEntityInScriptPrefab_4();
    l0 = self.box_MultipleOR_11;
    l1 = self.box_GetEntityInScriptPrefab_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|548699782", "548699782", "OW_Challenge_UNI37_EncounterScript", "box_MultipleOR_11.Out", "box_GetEntityInScriptPrefab_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInScriptPrefab_1_NoEntity()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_12();
    l0 = self.box_GetEntityInScriptPrefab_1;
    l1 = self.box_GroupSizeListener_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1733021359", "1733021359", "OW_Challenge_UNI37_EncounterScript", "box_GetEntityInScriptPrefab_1.NoEntity", "box_GroupSizeListener_v5_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetEntityInScriptPrefab_1_Out()
    local l0, l1;
    self:OnExit_box_GetEntityInScriptPrefab_1_Out();
    l0 = self.box_GetEntityInScriptPrefab_1;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|370564344", "370564344", "OW_Challenge_UNI37_EncounterScript", "box_GetEntityInScriptPrefab_1.Out", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_13_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|2119276962", "2119276962", "OW_Challenge_UNI37_EncounterScript", "box_Compare_Integers_13.A_eq_B", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_15_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_3();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_15;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|553007831", "553007831", "OW_Challenge_UNI37_EncounterScript", "box_Brick_NarrativeQuickCinema_V3_15.Finished", "box_BroadcastMessage_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_7_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V3_15();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1492709473", "1492709473", "OW_Challenge_UNI37_EncounterScript", "box_GetPreconditionState_7.NotValid", "box_Brick_NarrativeQuickCinema_V3_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_GetPreconditionState_7_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_8();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|41135139", "41135139", "OW_Challenge_UNI37_EncounterScript", "box_GetPreconditionState_7.Valid", "box_UseContextualActionModifier_v3_8.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_12();
    l0 = self.box_GroupSizeListener_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1099273952", "1099273952", "OW_Challenge_UNI37_EncounterScript", "box_OutputOrder_v2_16.Out", "box_GroupSizeListener_v5_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetFromGroup_9();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1675151976", "1675151976", "OW_Challenge_UNI37_EncounterScript", "box_OutputOrder_v2_16.Out", "box_GetFromGroup_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInScriptPrefab_4_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInScriptPrefab_4_Out();
    params = self:OnEnter_box_GetPreconditionState_7();
    l0 = self.box_GetEntityInScriptPrefab_4;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|39869997", "39869997", "OW_Challenge_UNI37_EncounterScript", "box_GetEntityInScriptPrefab_4.Out", "box_GetPreconditionState_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_12_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1329629168", "1329629168", "OW_Challenge_UNI37_EncounterScript", "box_GroupSizeListener_v5_12.Enabled", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_12_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1784830635", "1784830635", "OW_Challenge_UNI37_EncounterScript", "box_GroupSizeListener_v5_12.MemberAdded", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_BroadcastMessage_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|237090605");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_3_Out,
    });
    params = {
        -- Message,
        [0] = "FishermanIntroDone",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|459288571");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListReader_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GetFromGroup_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetFromGroup_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|499793917");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetFromGroup_9_Out,
    });
    params = {
        -- Group,
        [0] = "#F4B83875",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInScriptPrefab_1()
    local params;
    DrawTextToScreen("Comment: UNI037 ENCOUNTER STARTED", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetEntityInScriptPrefab')-- Comment: UNI037 ENCOUNTER STARTED");
    params = {
        -- ObjectName,
        [0] = "Uni037",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1196226957");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_13_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_12;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1292570570");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = self.ePlayConvoSTP,
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V3_15()
    local params;
    params = {
        -- eNPC,
        [0] = self.eCharacterEntity,
        -- oObjective,
        [2] = {
            section = "Subtitles",
            item = "1470307104",
            id = "501742",
        },
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1796037612");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_7_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_7_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015204719625158",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenges_Fishing_UNI37.domino|@OW_Challenge_UNI37_EncounterScript|1871921724");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInScriptPrefab_4()
    local params;
    DrawTextToScreen("Comment: UNI037 ENCOUNTER STARTED", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetEntityInScriptPrefab')-- Comment: UNI037 ENCOUNTER STARTED");
    params = {
        -- ObjectName,
        [0] = "PlayConversation",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_12()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#F4B83875",
    };
    return params;
end;

function export:OnExit_box_ListReader_10_Out()
    local l0;
    l0 = self.box_ListReader_10;
    self.eCharacterEntity = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetFromGroup_9_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l1 = self.box_ListReader_10;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInScriptPrefab_1_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_1;
    self.eCharacterEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInScriptPrefab_4_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_4;
    self.ePlayConvoSTP = l0:GetDataOutValue(0);
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
