LUACژ  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/h5/h5_outpost_01.domino
-- User graph: H5_Outpost_01_QUEST_Brief
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.GiverNPC_DialogPlayerNear_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntitiesOutRange.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1353296553.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2702229632.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2313788816.bnk]], "CSoundResource");
        cboxRes:LoadResource([[631901861.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3425184915.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.H5_Outpost_01 = nil;
    Globals.H5_Outpost_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/H5/H5_Outpost_01.H5_Outpost_01_QUEST_Brief.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Quest_Common.GiverNPC_DialogPlayerNear_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Disable_Stop",
            },
            [2] = {
                name = "Enable",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "mediumDistance",
                type = "float",
            },
            [1] = {
                name = "nearDistance",
                type = "float",
            },
            [2] = {
                name = "NPC",
                type = "entity",
            },
            [3] = {
                name = "optionalShapeNear",
                type = "entity",
            },
            [4] = {
                name = "SoundId_1_Medium",
                type = "Sound",
            },
            [5] = {
                name = "SoundId_1_Near",
                type = "Sound",
            },
            [6] = {
                name = "SoundId_2_Medium",
                type = "Sound",
            },
            [7] = {
                name = "SoundId_2_Near",
                type = "Sound",
            },
            [8] = {
                name = "SoundId_3_Medium",
                type = "Sound",
            },
            [9] = {
                name = "SoundId_3_Near",
                type = "Sound",
            },
            [10] = {
                name = "SoundId_4_Medium",
                type = "Sound",
            },
            [11] = {
                name = "SoundId_4_Near",
                type = "Sound",
            },
            [12] = {
                name = "SoundId_5_Medium",
                type = "Sound",
            },
            [13] = {
                name = "SoundId_5_Near",
                type = "Sound",
            },
        },
        dataInCount = 14,
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
    metadataTable[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Remove",
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
                name = "Range",
                type = "float",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/SimpleNode.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "H5_Outpost_01_QUEST_Brief";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief";
    self.eGiver = nil;
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|453217055");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_Brick_NarrativeQuickCinema_V3_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|618998343");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V3_1_Finished,
        -- Started,
        [5] = self.f_box_Brick_NarrativeQuickCinema_V3_1_Started,
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|781473029");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1471279640");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_CharacterLoadedIdListener_7 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1471927384");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_7_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_7_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_7_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_7_LoadedIdReceived,
    });
    self.box_RemoveEntity_v2_9 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1548768677");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_9_Out,
    });
    self.box_GiverNPC_DialogPlayerNear_v2_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.GiverNPC_DialogPlayerNear_v2.debug.lua");
    l0 = self.box_GiverNPC_DialogPlayerNear_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GiverNPC_DialogPlayerNear_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|2029921553");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|873473413", "873473413", "H5_Outpost_01_QUEST_Brief", "In", "box_OutputOrder_v2_10.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_13();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1888364785", "1888364785", "H5_Outpost_01_QUEST_Brief", "OnLeaveZone", "box_ActivityRetry_13.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_3_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GiverNPC_DialogPlayerNear_v2_11();
    l0 = self.box_GiverNPC_DialogPlayerNear_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|895366721", "895366721", "H5_Outpost_01_QUEST_Brief", "box_Simple_Node_3.Out", "box_GiverNPC_DialogPlayerNear_v2_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1183670721", "1183670721", "H5_Outpost_01_QUEST_Brief", "box_OutputOrder_v2_10.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_7();
    l0 = self.box_CharacterLoadedIdListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|912705764", "912705764", "H5_Outpost_01_QUEST_Brief", "box_OutputOrder_v2_10.Out", "box_CharacterLoadedIdListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_15_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|475087888", "475087888", "H5_Outpost_01_QUEST_Brief", "box_UseContextualActionModifier_v3_15.Disabled", "box_UseContextualActionModifier_v3_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|2101485874", "2101485874", "H5_Outpost_01_QUEST_Brief", "box_MultipleOR_5.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_1_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_15();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_1;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1966438501", "1966438501", "H5_Outpost_01_QUEST_Brief", "box_Brick_NarrativeQuickCinema_V3_1.Finished", "box_UseContextualActionModifier_v3_15.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_1;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|70648243", "70648243", "H5_Outpost_01_QUEST_Brief", "box_Brick_NarrativeQuickCinema_V3_1.Started", "box_UseContextualActionModifier_v3_16.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|73447682", "73447682", "H5_Outpost_01_QUEST_Brief", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|2117015530", "2117015530", "H5_Outpost_01_QUEST_Brief", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V3_1();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1635079770", "1635079770", "H5_Outpost_01_QUEST_Brief", "box_OutputOrder_v2_12.Out", "box_Brick_NarrativeQuickCinema_V3_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GiverNPC_DialogPlayerNear_v2_11();
    l0 = self.box_GiverNPC_DialogPlayerNear_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|2131794152", "2131794152", "H5_Outpost_01_QUEST_Brief", "box_OutputOrder_v2_12.Out", "box_GiverNPC_DialogPlayerNear_v2_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_16_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|687024888", "687024888", "H5_Outpost_01_QUEST_Brief", "box_UseContextualActionModifier_v3_16.Disabled", "box_UseContextualActionModifier_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_17_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|2041382292", "2041382292", "H5_Outpost_01_QUEST_Brief", "box_UseContextualActionModifier_v3_17.Enabled", "box_UseContextualActionModifier_v3_17.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_17_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_9();
    l0 = self.box_RemoveEntity_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1731437372", "1731437372", "H5_Outpost_01_QUEST_Brief", "box_UseContextualActionModifier_v3_17.UseCalled", "box_RemoveEntity_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_14_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|293107399", "293107399", "H5_Outpost_01_QUEST_Brief", "box_UseContextualActionModifier_v3_14.Enabled", "box_UseContextualActionModifier_v3_14.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_14_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_3();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|285813746", "285813746", "H5_Outpost_01_QUEST_Brief", "box_UseContextualActionModifier_v3_14.UseCalled", "box_Simple_Node_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntityOutRange_8();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1984127861", "1984127861", "H5_Outpost_01_QUEST_Brief", "box_ActivityInitialized_2.Out", "box_RemoveEntityOutRange_8.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_7_LoadedIdReceived()
    self:OnExit_box_CharacterLoadedIdListener_7_LoadedIdReceived();
end;

function export:f_box_RemoveEntity_v2_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_RemoveEntity_v2_9;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1533528558", "1533528558", "H5_Outpost_01_QUEST_Brief", "box_RemoveEntity_v2_9.Out", "box_ActivityEnd_4.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntityOutRange_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|534195881", "534195881", "H5_Outpost_01_QUEST_Brief", "box_RemoveEntityOutRange_8.Out", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|@DisableVO");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_3_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|413142793");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|437877711");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_15_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104551296731206446",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|448648922");
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

function export:OnEnter_box_Brick_NarrativeQuickCinema_V3_1()
    local params;
    params = {
        -- eNPC,
        [0] = self.eGiver,
        -- eQCA_STP,
        [1] = "2101425132342897921",
        -- oObjective,
        [2] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_Talk",
            id = "426352",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|864551842");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|947121067");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1223415362");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_16_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101164150328663770",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1323616079");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_17_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_17_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101164150328663770",
        -- Entity,
        [1] = self.eGiver,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|1461667541");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_14_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_14_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104551296731206446",
        -- Entity,
        [1] = self.eGiver,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015250085618390",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_9()
    local params;
    params = {
        -- Group,
        [0] = "2103870651463910160",
    };
    return params;
end;

function export:OnEnter_box_GiverNPC_DialogPlayerNear_v2_11()
    local params;
    params = {
        -- mediumDistance,
        [0] = 10,
        -- nearDistance,
        [1] = 5,
        -- NPC,
        [2] = self.eGiver,
        -- SoundId_1_Medium,
        [4] = "631901861",
        -- SoundId_1_Near,
        [5] = "3425184915",
        -- SoundId_2_Medium,
        [6] = "2702229632",
        -- SoundId_3_Medium,
        [8] = "2313788816",
        -- SoundId_4_Medium,
        [10] = "1353296553",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntityOutRange_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntityOutRange_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_Brief|2050256965");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntityOutRange_8_Out,
    });
    params = {
        -- Range,
        [0] = 25,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_7_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_7;
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
