LUAC�}  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_310/uni46_310_brief.domino
-- User graph: UNI46_310_BRIEF_Graph
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_MusicAltar.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Podium.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3132425930.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4014172647.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3192734160.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4018045950.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3714903737.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_310/UNI46_310_BRIEF.UNI46_310_BRIEF_Graph.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_MusicAltar.debug.lua")] = {
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
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "eMusicPoint",
                type = "entity",
            },
            [1] = {
                name = "farZone",
                type = "float",
            },
            [2] = {
                name = "nearZone",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Podium.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "PreloadBink",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Accept",
                delayed = false,
            },
            [1] = {
                name = "Cancel",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Bink_Dialog_1",
                type = "Sound",
            },
            [1] = {
                name = "Bink_Dialog_2",
                type = "Sound",
            },
            [2] = {
                name = "Bink_Dialog_3",
                type = "Sound",
            },
            [3] = {
                name = "Bink_Dialog_4",
                type = "Sound",
            },
            [4] = {
                name = "Bink_Dialog_5",
                type = "Sound",
            },
            [5] = {
                name = "Bink_Dialog_6",
                type = "Sound",
            },
            [6] = {
                name = "Message",
                type = "oasis",
            },
            [7] = {
                name = "Requires_Wingsuit",
                type = "bool",
            },
            [8] = {
                name = "Title",
                type = "oasis",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "message",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
            },
        },
        controlInCount = 3,
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
            [5] = {
                name = "usageType",
                type = "string",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI46_310_BRIEF_Graph";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph";
    self.box_UniversalInteractionModifier_v2_11 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|159914964");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_11_Enabled,
    });
    self.box_ActivityInitialized_17 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|969865238");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_17_Out,
    });
    self.box_UniversalInteractionModifier_v2_13 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1209122389");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Podium_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Podium.debug.lua");
    l0 = self.box_Brick_GateRaces_Podium_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Podium_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1242717306");
    l0:SetConnections({
        -- Accept,
        [0] = self.f_box_Brick_GateRaces_Podium_2_Accept,
        -- Cancel,
        [1] = self.f_box_Brick_GateRaces_Podium_2_Cancel,
    });
    self.box_Brick_GateRaces_MusicAltar_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_MusicAltar.debug.lua");
    l0 = self.box_Brick_GateRaces_MusicAltar_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_MusicAltar_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1528887854");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1851157183");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_MessageListener_v3_9 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1978298006");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_9_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_9_Received,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1996422020");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_11();
    l0 = self.box_UniversalInteractionModifier_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1969575200", "1969575200", "UNI46_310_BRIEF_Graph", "In", "box_UniversalInteractionModifier_v2_11.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|186325428", "186325428", "UNI46_310_BRIEF_Graph", "OnLeaveZone", "box_ActivityRetry_3.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_11_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_UniversalInteractionModifier_v2_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1704579458", "1704579458", "UNI46_310_BRIEF_Graph", "box_UniversalInteractionModifier_v2_11.Enabled", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_MusicAltar_1();
    l0 = self.box_Brick_GateRaces_MusicAltar_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|25400972", "25400972", "UNI46_310_BRIEF_Graph", "box_OutputOrder_v2_4.Out", "box_Brick_GateRaces_MusicAltar_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_Podium_2();
    l0 = self.box_Brick_GateRaces_Podium_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1483411241", "1483411241", "UNI46_310_BRIEF_Graph", "box_OutputOrder_v2_4.Out", "box_Brick_GateRaces_Podium_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_ActivityInitialized_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|668200083", "668200083", "UNI46_310_BRIEF_Graph", "box_ActivityInitialized_17.Out", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Podium_2_Accept()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_10();
    l0 = self.box_Brick_GateRaces_Podium_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|169165467", "169165467", "UNI46_310_BRIEF_Graph", "box_Brick_GateRaces_Podium_2.Accept", "box_ActivityEnd_10.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Podium_2_Cancel()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_7();
    l0 = self.box_Brick_GateRaces_Podium_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|2105869517", "2105869517", "UNI46_310_BRIEF_Graph", "box_Brick_GateRaces_Podium_2.Cancel", "box_ActivityRetry_7.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_9();
    l0 = self.box_MessageListener_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|525260230", "525260230", "UNI46_310_BRIEF_Graph", "box_OutputOrder_v2_5.Out", "box_MessageListener_v3_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_Podium_2();
    l0 = self.box_Brick_GateRaces_Podium_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|929742704", "929742704", "UNI46_310_BRIEF_Graph", "box_OutputOrder_v2_5.Out", "box_Brick_GateRaces_Podium_2.PreloadBink", clone:GetLuaBox(), l0:GetLuaBox());
    -- PreloadBink
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|608969589", "608969589", "UNI46_310_BRIEF_Graph", "box_OutputOrder_v2_5.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1907695182", "1907695182", "UNI46_310_BRIEF_Graph", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1589725947", "1589725947", "UNI46_310_BRIEF_Graph", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = self.box_MessageListener_v3_9;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|94116385", "94116385", "UNI46_310_BRIEF_Graph", "box_MessageListener_v3_9.Enabled", "box_Simple_Node_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_9_Received()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_13();
    l0 = self.box_MessageListener_v3_9;
    l1 = self.box_UniversalInteractionModifier_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1231669960", "1231669960", "UNI46_310_BRIEF_Graph", "box_MessageListener_v3_9.Received", "box_UniversalInteractionModifier_v2_13.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_14_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_14;
    l1 = self.box_ActivityInitialized_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1933223310", "1933223310", "UNI46_310_BRIEF_Graph", "box_MultipleOR_14.Out", "box_ActivityInitialized_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Simple_Node_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_MusicAltar_1();
    l0 = self.box_Brick_GateRaces_MusicAltar_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1995701996", "1995701996", "UNI46_310_BRIEF_Graph", "box_Simple_Node_15.Out", "box_Brick_GateRaces_MusicAltar_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_ActivityRetry_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|141415658");
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

function export:OnEnter_box_UniversalInteractionModifier_v2_11()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_READ",
            id = "533271",
        },
        -- usableEntity,
        [4] = "2101839106546864250",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|584008730");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_13()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_READ",
            id = "533271",
        },
        -- usableEntity,
        [4] = "2101839106546864250",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_Podium_2()
    local params;
    params = {
        -- Bink Dialog 1,
        [0] = "4014172647",
        -- Bink Dialog 2,
        [1] = "4018045950",
        -- Bink Dialog 3,
        [2] = "3132425930",
        -- Bink Dialog 4,
        [3] = "3192734160",
        -- Bink Dialog 5,
        [4] = "3714903737",
        -- Message,
        [6] = {
            section = "Objectives",
            item = "UNI46_310_B10_HINT_BoardText",
            id = "570150",
        },
        -- Requires Wingsuit,
        [7] = false,
        -- Title,
        [8] = {
            section = "Description",
            item = "UNI46_310_MAIN",
            id = "570064",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1524841537");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_MusicAltar_1()
    local params;
    params = {
        -- eMusicPoint,
        [0] = "2101839103090757752",
        -- farZone,
        [1] = 65,
        -- nearZone,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1586707592");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|1859307675");
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

function export:OnEnter_box_MessageListener_v3_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Disable_UNI46_Altar",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_BRIEF.domino|@UNI46_310_BRIEF_Graph|2131151750");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
    });
    params = {
    };
    return params;
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
