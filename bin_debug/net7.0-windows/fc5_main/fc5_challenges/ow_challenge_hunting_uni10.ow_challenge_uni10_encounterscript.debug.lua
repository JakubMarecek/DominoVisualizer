LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_challenges/ow_challenge_hunting_uni10.domino
-- User graph: OW_Challenge_UNI10_EncounterScript
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
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetEncounterStatus_v2.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GetFromGroup.lua");
        cboxRes:RegisterBox("Domino/System/GetEntityInScriptPrefab.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/ListReader.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Challenges/OW_Challenge_Hunting_UNI10.OW_Challenge_UNI10_EncounterScript.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "OW_Challenge_UNI10_EncounterScript";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript";
    self.Out = DummyFunction;
    self.ePlayConvoSTP = nil;
    self.eCharacterEntity = nil;
    self.box_GroupSizeListener_v5_10 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|736448866");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_10_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_10_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_10_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_10_MemberRemoved,
    });
    self.box_ProximityRadiusListener_v3_4 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|803675920");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_4_SomeoneNear,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|882082882");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_Beat_Detection_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Encounter_Common.Beat_Detection.debug.lua");
    l0 = self.box_Beat_Detection_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Beat_Detection_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1310043217");
    l0:SetConnections({
    });
    self.box_GetEntityInScriptPrefab_2 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1394441738");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_2_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_2_Out,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1434506004");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_Brick_NarrativeQuickCinema_V3_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1578614545");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V3_5_Finished,
    });
    self.box_ListReader_13 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1704570840");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_13_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_13_Out,
    });
    self.box_SetEncounterStatus_v2_14 = cbox:CreateBox("Domino/System/AI/SetEncounterStatus_v2.lua");
    l0 = self.box_SetEncounterStatus_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEncounterStatus_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1899196890");
    l0:SetConnections({
    });
    self.box_GetEntityInScriptPrefab_15 = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self.box_GetEntityInScriptPrefab_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInScriptPrefab_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|2048956542");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInScriptPrefab_15_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInScriptPrefab_15_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|30994185", "30994185", "OW_Challenge_UNI10_EncounterScript", "In", "box_OutputOrder_v2_21.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Beat_Detection_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|898432877", "898432877", "OW_Challenge_UNI10_EncounterScript", "box_OutputOrder_v2_21.Out", "box_Beat_Detection_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInScriptPrefab_2();
    l0 = self.box_GetEntityInScriptPrefab_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|86550522", "86550522", "OW_Challenge_UNI10_EncounterScript", "box_OutputOrder_v2_21.Out", "box_GetEntityInScriptPrefab_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_BroadcastMessage_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|463785288", "463785288", "OW_Challenge_UNI10_EncounterScript", "box_BroadcastMessage_18.Out", "box_Print_v2_19.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetFromGroup_8_Out()
    local params, l0;
    self:OnExit_box_GetFromGroup_8_Out();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReader_13();
    l0 = self.box_ListReader_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|2095946203", "2095946203", "OW_Challenge_UNI10_EncounterScript", "box_GetFromGroup_8.Out", "box_ListReader_13.Read", clone:GetLuaBox(), l0:GetLuaBox());
    -- Read
    l0:Exec(0, params);
end;

function export:f_box_GetActivityFact_22_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_6();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1928343099", "1928343099", "OW_Challenge_UNI10_EncounterScript", "box_GetActivityFact_22.FactNotSet", "box_GetPlayerGroup_v2_6.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_10_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_10;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1545888120", "1545888120", "OW_Challenge_UNI10_EncounterScript", "box_GroupSizeListener_v5_10.Enabled", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_10_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_10;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1558152380", "1558152380", "OW_Challenge_UNI10_EncounterScript", "box_GroupSizeListener_v5_10.MemberAdded", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_10();
    l0 = self.box_GroupSizeListener_v5_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1541923425", "1541923425", "OW_Challenge_UNI10_EncounterScript", "box_OutputOrder_v2_11.Out", "box_GroupSizeListener_v5_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetFromGroup_8();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|346762875", "346762875", "OW_Challenge_UNI10_EncounterScript", "box_OutputOrder_v2_11.Out", "box_GetFromGroup_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_4_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_18();
    l0 = self.box_ProximityRadiusListener_v3_4;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|999402899", "999402899", "OW_Challenge_UNI10_EncounterScript", "box_ProximityRadiusListener_v3_4.SomeoneNear", "box_BroadcastMessage_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_16();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|2119244526", "2119244526", "OW_Challenge_UNI10_EncounterScript", "box_MultipleOR_9.Out", "box_Compare_Integers_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    l0 = self.box_SetEncounterStatus_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1141459610", "1141459610", "OW_Challenge_UNI10_EncounterScript", "box_BroadcastMessage_3.Out", "box_SetEncounterStatus_v2_14.SetAsCompleted", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsCompleted
    l0:Exec(0, {
    });
end;

function export:f_box_GetEntityInScriptPrefab_2_NoEntity()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_10();
    l0 = self.box_GetEntityInScriptPrefab_2;
    l1 = self.box_GroupSizeListener_v5_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1739153363", "1739153363", "OW_Challenge_UNI10_EncounterScript", "box_GetEntityInScriptPrefab_2.NoEntity", "box_GroupSizeListener_v5_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetEntityInScriptPrefab_2_Out()
    local l0, l1;
    self:OnExit_box_GetEntityInScriptPrefab_2_Out();
    l0 = self.box_GetEntityInScriptPrefab_2;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|828165521", "828165521", "OW_Challenge_UNI10_EncounterScript", "box_GetEntityInScriptPrefab_2.Out", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1842912312", "1842912312", "OW_Challenge_UNI10_EncounterScript", "box_MultipleOR_12.Out", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_16_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|659240714", "659240714", "OW_Challenge_UNI10_EncounterScript", "box_Compare_Integers_16.A_eq_B", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInScriptPrefab_15();
    l0 = self.box_GetEntityInScriptPrefab_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|197534780", "197534780", "OW_Challenge_UNI10_EncounterScript", "box_OutputOrder_v2_17.Out", "box_GetEntityInScriptPrefab_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1284225599", "1284225599", "OW_Challenge_UNI10_EncounterScript", "box_OutputOrder_v2_17.Out", "box_GetActivityFact_22.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_5_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_3();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_5;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|518751719", "518751719", "OW_Challenge_UNI10_EncounterScript", "box_Brick_NarrativeQuickCinema_V3_5.Finished", "box_BroadcastMessage_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListReader_13_Out()
    local l0, l1;
    self:OnExit_box_ListReader_13_Out();
    l0 = self.box_ListReader_13;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1945842082", "1945842082", "OW_Challenge_UNI10_EncounterScript", "box_ListReader_13.Out", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPreconditionState_7_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V3_5();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|912734995", "912734995", "OW_Challenge_UNI10_EncounterScript", "box_GetPreconditionState_7.NotValid", "box_Brick_NarrativeQuickCinema_V3_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_GetPreconditionState_7_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_1();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|2107419381", "2107419381", "OW_Challenge_UNI10_EncounterScript", "box_GetPreconditionState_7.Valid", "box_UseContextualActionModifier_v3_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_4();
    l0 = self.box_ProximityRadiusListener_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|661758110", "661758110", "OW_Challenge_UNI10_EncounterScript", "box_GetPlayerGroup_v2_6.Out", "box_ProximityRadiusListener_v3_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetEntityInScriptPrefab_15_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInScriptPrefab_15_Out();
    params = self:OnEnter_box_GetPreconditionState_7();
    l0 = self.box_GetEntityInScriptPrefab_15;
    l1 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|469822188", "469822188", "OW_Challenge_UNI10_EncounterScript", "box_GetEntityInScriptPrefab_15.Out", "box_GetPreconditionState_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|127904949");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|168636522");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "PlayerNearHunter",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|360426114");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_18_Out,
    });
    params = {
        -- Message,
        [0] = "NearHunter",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|415217767");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = self.ePlayConvoSTP,
    };
    return params;
end;

function export:OnEnter_box_GetFromGroup_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetFromGroup_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|420224614");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetFromGroup_8_Out,
    });
    params = {
        -- Group,
        [0] = "#E3F534FC",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|535278097");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_22_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015257323418905",
        -- Fact,
        [1] = "DutchCalled",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_10()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#E3F534FC",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|751616061");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = self.eCharacterEntity,
        -- nearZone,
        [4] = 50,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1219080977");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_3_Out,
    });
    params = {
        -- Message,
        [0] = "HunterIntroDone",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInScriptPrefab_2()
    local params;
    DrawTextToScreen("Comment: UNI037 ENCOUNTER STARTED", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetEntityInScriptPrefab')-- Comment: UNI037 ENCOUNTER STARTED");
    params = {
        -- ObjectName,
        [0] = "Uni10",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1476872153");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_16_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_10;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1574490499");
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

function export:OnEnter_box_Brick_NarrativeQuickCinema_V3_5()
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

function export:OnEnter_box_ListReader_13()
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

function export:OnEnter_box_GetPreconditionState_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1753018061");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_7_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_7_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015257323946451",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\OW_Challenge_Hunting_UNI10.domino|@OW_Challenge_UNI10_EncounterScript|1951318626");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInScriptPrefab_15()
    local params;
    DrawTextToScreen("Comment: UNI037 ENCOUNTER STARTED", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetEntityInScriptPrefab')-- Comment: UNI037 ENCOUNTER STARTED");
    params = {
        -- ObjectName,
        [0] = "PlayConversation",
    };
    return params;
end;

function export:OnExit_box_GetFromGroup_8_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l1 = self.box_ListReader_13;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInScriptPrefab_2_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_2;
    self.eCharacterEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListReader_13_Out()
    local l0;
    l0 = self.box_ListReader_13;
    self.eCharacterEntity = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayerGroup_v2_6_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_4;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInScriptPrefab_15_Out()
    local l0;
    l0 = self.box_GetEntityInScriptPrefab_15;
    self.ePlayConvoSTP = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
