LUAC�g  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_010/uni46_010_brief.domino
-- User graph: uni46_010_brief
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
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[377884563.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1171757531.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3568707453.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2974443544.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3524331650.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_brief.uni46_010_brief.debug.lua")] = {
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
    self._name = "uni46_010_brief";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief";
    self.ePlayer = nil;
    self.players = nil;
    self.box_Brick_GateRaces_MusicAltar_31 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_MusicAltar.debug.lua");
    l0 = self.box_Brick_GateRaces_MusicAltar_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_MusicAltar_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|151352572");
    l0:SetConnections({
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|412041140");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
    self.box_UniversalInteractionModifier_v2_9 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|436957868");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_9_Enabled,
    });
    self.box_Brick_GateRaces_Podium_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Podium.debug.lua");
    l0 = self.box_Brick_GateRaces_Podium_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Podium_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|1146331398");
    l0:SetConnections({
        -- Accept,
        [0] = self.f_box_Brick_GateRaces_Podium_21_Accept,
        -- Cancel,
        [1] = self.f_box_Brick_GateRaces_Podium_21_Cancel,
    });
    self.box_ActivityAcknowledgeGate_39 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|1593038787");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_39_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_39_Reloaded,
    });
    self.box_ActivityInitialized_34 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|1775545798");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_34_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_9();
    l0 = self.box_UniversalInteractionModifier_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|564480699", "564480699", "uni46_010_brief", "In", "box_UniversalInteractionModifier_v2_9.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_25();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|2064547698", "2064547698", "uni46_010_brief", "OnLeaveZone", "box_ActivityRetry_25.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_38_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_38;
    l1 = self.box_ActivityInitialized_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|1018778647", "1018778647", "uni46_010_brief", "box_MultipleOR_38.Out", "box_ActivityInitialized_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_MusicAltar_31();
    l0 = self.box_Brick_GateRaces_MusicAltar_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|872461657", "872461657", "uni46_010_brief", "box_OutputOrder_v2_22.Out", "box_Brick_GateRaces_MusicAltar_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_Podium_21();
    l0 = self.box_Brick_GateRaces_Podium_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|2082091099", "2082091099", "uni46_010_brief", "box_OutputOrder_v2_22.Out", "box_Brick_GateRaces_Podium_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_UniversalInteractionModifier_v2_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|426509804", "426509804", "uni46_010_brief", "box_UniversalInteractionModifier_v2_9.Enabled", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Podium_21_Accept()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_18();
    l0 = self.box_Brick_GateRaces_Podium_21;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|437223130", "437223130", "uni46_010_brief", "box_Brick_GateRaces_Podium_21.Accept", "box_ActivityEnd_18.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Podium_21_Cancel()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_24();
    l0 = self.box_Brick_GateRaces_Podium_21;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|259277353", "259277353", "uni46_010_brief", "box_Brick_GateRaces_Podium_21.Cancel", "box_ActivityRetry_24.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_39_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_39;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|1376364741", "1376364741", "uni46_010_brief", "box_ActivityAcknowledgeGate_39.Acknowledged", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_39_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_39;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|1668923420", "1668923420", "uni46_010_brief", "box_ActivityAcknowledgeGate_39.Reloaded", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_ActivityInitialized_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|101747014", "101747014", "uni46_010_brief", "box_ActivityInitialized_34.Out", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_MusicAltar_31();
    l0 = self.box_Brick_GateRaces_MusicAltar_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|1846678249", "1846678249", "uni46_010_brief", "box_OutputOrder_v2_26.Out", "box_Brick_GateRaces_MusicAltar_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_Podium_21();
    l0 = self.box_Brick_GateRaces_Podium_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|1296089661", "1296089661", "uni46_010_brief", "box_OutputOrder_v2_26.Out", "box_Brick_GateRaces_Podium_21.PreloadBink", clone:GetLuaBox(), l0:GetLuaBox());
    -- PreloadBink
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|609930902", "609930902", "uni46_010_brief", "box_OutputOrder_v2_26.Out", "box_ActivityAcknowledgeGate_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnEnter_box_Brick_GateRaces_MusicAltar_31()
    local params;
    params = {
        -- eMusicPoint,
        [0] = "2101826927091310333",
        -- farZone,
        [1] = 65,
        -- nearZone,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|433952380");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_9()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_READ",
            id = "533271",
        },
        -- usableEntity,
        [4] = "2101767575380712477",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|636319264");
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

function export:OnEnter_box_ActivityEnd_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|995239895");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_Podium_21()
    local params;
    params = {
        -- Bink Dialog 1,
        [0] = "377884563",
        -- Bink Dialog 2,
        [1] = "3568707453",
        -- Bink Dialog 3,
        [2] = "1171757531",
        -- Bink Dialog 4,
        [3] = "3524331650",
        -- Bink Dialog 5,
        [4] = "2974443544",
        -- Message,
        [6] = {
            section = "Objectives",
            item = "UNI46_010_B10_HINT_BoardText",
            id = "554395",
        },
        -- Requires Wingsuit,
        [7] = false,
        -- Title,
        [8] = {
            section = "Description",
            item = "UNI46_010_MAIN",
            id = "552396",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|1815364044");
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

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_brief.domino|@uni46_010_brief|1855807279");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
            },
            count = 3,
        },
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
