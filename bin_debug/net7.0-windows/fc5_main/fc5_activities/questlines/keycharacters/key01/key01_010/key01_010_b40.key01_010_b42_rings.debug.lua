LUAC�s  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_010/key01_010_b40.domino
-- User graph: KEY01_010_B42_Rings
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3095983258.bnk]], "CSoundResource");
        cboxRes:LoadResource([[entityarchetypeslibrary/9015256522055681.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[2046602238.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3341537960.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.KEY01_010_B42_Rings.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "aVehicleArchetype",
                type = "archetype",
            },
            [1] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [2] = {
                name = "hasObjective",
                type = "bool",
            },
            [3] = {
                name = "o_Objective",
                type = "oasis",
            },
            [4] = {
                name = "sVehicleType",
                type = "string",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "e_GenericVehicleID",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
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
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Failed",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CallSoundID",
                type = "Sound",
            },
            [1] = {
                name = "eTargetMarker",
                type = "entity",
            },
            [2] = {
                name = "eTargetTrigger",
                type = "entity",
            },
            [3] = {
                name = "eVehicle",
                type = "entity",
            },
            [4] = {
                name = "eVehicleMarker",
                type = "entity",
            },
            [5] = {
                name = "eVFX",
                type = "entity",
            },
            [6] = {
                name = "FailReason",
                type = "oasis",
            },
            [7] = {
                name = "ObjectiveID",
                type = "oasis",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY01_010_B42_Rings";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings";
    self.Out = DummyFunction;
    self.ePlayerVehicle = nil;
    self.box_Custom_Brick_Deliver_v5_5 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|486301794");
    l0:SetConnections({
        -- Failed,
        [0] = self.f_box_Custom_Brick_Deliver_v5_5_Failed,
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_5_Success,
    });
    self.box_Custom_Brick_Deliver_v5_3 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|924404114");
    l0:SetConnections({
        -- Failed,
        [0] = self.f_box_Custom_Brick_Deliver_v5_3_Failed,
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_3_Success,
    });
    self.box_Custom_Brick_Deliver_v5_2 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|1024853824");
    l0:SetConnections({
        -- Failed,
        [0] = self.f_box_Custom_Brick_Deliver_v5_2_Failed,
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_2_Success,
    });
    self.box_Custom_Brick_Deliver_v5_7 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|1185500000");
    l0:SetConnections({
        -- Failed,
        [0] = self.f_box_Custom_Brick_Deliver_v5_7_Failed,
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_7_Success,
    });
    self.box_Brick_TakeControl_Vehicle_Generic_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua");
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_TakeControl_Vehicle_Generic_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|1812871442");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_Brick_TakeControl_Vehicle_Generic_1_Started,
        -- Success,
        [1] = self.f_box_Brick_TakeControl_Vehicle_Generic_1_Success,
    });
    self.box_Custom_Brick_Deliver_v5_6 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|1899966246");
    l0:SetConnections({
        -- Failed,
        [0] = self.f_box_Custom_Brick_Deliver_v5_6_Failed,
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_6_Success,
    });
    self.box_Custom_Brick_Deliver_v5_4 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.Custom_Brick_Deliver_v5.debug.lua");
    l0 = self.box_Custom_Brick_Deliver_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Brick_Deliver_v5_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|1946854995");
    l0:SetConnections({
        -- Failed,
        [0] = self.f_box_Custom_Brick_Deliver_v5_4_Failed,
        -- Success,
        [1] = self.f_box_Custom_Brick_Deliver_v5_4_Success,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_TakeControl_Vehicle_Generic_1();
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|1610932616", "1610932616", "KEY01_010_B42_Rings", "In", "box_Brick_TakeControl_Vehicle_Generic_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Custom_Brick_Deliver_v5_5_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = self.box_Custom_Brick_Deliver_v5_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|562142481", "562142481", "KEY01_010_B42_Rings", "box_Custom_Brick_Deliver_v5_5.Failed", "box_Simple_Node_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_5_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_7();
    l0 = self.box_Custom_Brick_Deliver_v5_5;
    l1 = self.box_Custom_Brick_Deliver_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|1180651918", "1180651918", "KEY01_010_B42_Rings", "box_Custom_Brick_Deliver_v5_5.Success", "box_Custom_Brick_Deliver_v5_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Custom_Brick_Deliver_v5_3_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = self.box_Custom_Brick_Deliver_v5_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|444101139", "444101139", "KEY01_010_B42_Rings", "box_Custom_Brick_Deliver_v5_3.Failed", "box_Simple_Node_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_3_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_5();
    l0 = self.box_Custom_Brick_Deliver_v5_3;
    l1 = self.box_Custom_Brick_Deliver_v5_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|26359679", "26359679", "KEY01_010_B42_Rings", "box_Custom_Brick_Deliver_v5_3.Success", "box_Custom_Brick_Deliver_v5_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Custom_Brick_Deliver_v5_2_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = self.box_Custom_Brick_Deliver_v5_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|981923702", "981923702", "KEY01_010_B42_Rings", "box_Custom_Brick_Deliver_v5_2.Failed", "box_Simple_Node_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_2_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_3();
    l0 = self.box_Custom_Brick_Deliver_v5_2;
    l1 = self.box_Custom_Brick_Deliver_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|281552650", "281552650", "KEY01_010_B42_Rings", "box_Custom_Brick_Deliver_v5_2.Success", "box_Custom_Brick_Deliver_v5_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Custom_Brick_Deliver_v5_7_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = self.box_Custom_Brick_Deliver_v5_7;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|756044187", "756044187", "KEY01_010_B42_Rings", "box_Custom_Brick_Deliver_v5_7.Failed", "box_Simple_Node_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_7_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_4();
    l0 = self.box_Custom_Brick_Deliver_v5_7;
    l1 = self.box_Custom_Brick_Deliver_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|525476963", "525476963", "KEY01_010_B42_Rings", "box_Custom_Brick_Deliver_v5_7.Success", "box_Custom_Brick_Deliver_v5_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_2();
    l0 = self.box_Custom_Brick_Deliver_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|1930444507", "1930444507", "KEY01_010_B42_Rings", "box_AddActivityObjective_v2_8.Out", "box_Custom_Brick_Deliver_v5_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_TakeControl_Vehicle_Generic_1_Started()
    self:OnExit_box_Brick_TakeControl_Vehicle_Generic_1_Started();
end;

function export:f_box_Brick_TakeControl_Vehicle_Generic_1_Success()
    local params, l0, l1;
    self:OnExit_box_Brick_TakeControl_Vehicle_Generic_1_Success();
    params = self:OnEnter_box_AddActivityObjective_v2_8();
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|455105866", "455105866", "KEY01_010_B42_Rings", "box_Brick_TakeControl_Vehicle_Generic_1.Success", "box_AddActivityObjective_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_6_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = self.box_Custom_Brick_Deliver_v5_6;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|482277681", "482277681", "KEY01_010_B42_Rings", "box_Custom_Brick_Deliver_v5_6.Failed", "box_Simple_Node_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_6_Success()
    local l0;
    l0 = self.box_Custom_Brick_Deliver_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|106527604", "106527604", "KEY01_010_B42_Rings", "box_Custom_Brick_Deliver_v5_6.Success", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Custom_Brick_Deliver_v5_4_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = self.box_Custom_Brick_Deliver_v5_4;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|1273540867", "1273540867", "KEY01_010_B42_Rings", "box_Custom_Brick_Deliver_v5_4.Failed", "box_Simple_Node_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Brick_Deliver_v5_4_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_Brick_Deliver_v5_6();
    l0 = self.box_Custom_Brick_Deliver_v5_4;
    l1 = self.box_Custom_Brick_Deliver_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|1617803579", "1617803579", "KEY01_010_B42_Rings", "box_Custom_Brick_Deliver_v5_4.Success", "box_Custom_Brick_Deliver_v5_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_9()
    local params, l0;
    DrawTextToScreen("Comment: Fail", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'fail', Class: 'Simple Node')-- Comment: Fail");
    DrawTextToScreen("Comment: Fail", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'fail', Class: 'Simple Node')-- Comment: Fail");
    DrawTextToScreen("Comment: Fail", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'fail', Class: 'Simple Node')-- Comment: Fail");
    DrawTextToScreen("Comment: Fail", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'fail', Class: 'Simple Node')-- Comment: Fail");
    DrawTextToScreen("Comment: Fail", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'fail', Class: 'Simple Node')-- Comment: Fail");
    DrawTextToScreen("Comment: Fail", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'fail', Class: 'Simple Node')-- Comment: Fail");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|@fail");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_5()
    local params;
    DrawTextToScreen("Comment: If runnin' means I can protect my family at the cost of losin' my home, so be it. That's the right move ain't it?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_Brick_Deliver_v5')-- Comment: If runnin' means I can protect my family at the cost of losin' my home, so be it. That's the right move ain't it?");
    params = {
        -- CallSoundID,
        [0] = "2046602238",
        -- eTargetMarker,
        [1] = "2102489294361925315",
        -- eTargetTrigger,
        [2] = "2102542061208143155",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2102489294368216773",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_3()
    local params;
    DrawTextToScreen("Comment: Yeah, takes a certain kinda man to defend his home. Between you n’ me, I'm not sure I fit the bill. I don’t know if you got any little monsters of your own, but I’m tellin’ ya – the thought of leavin’ mine fatherless puts the fear of God in me. And mine ain’t even born yet.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_Brick_Deliver_v5')-- Comment: Yeah, takes a certain kinda man to defend his home. Between you n’ me, I'm not sure I fit the bill. I don’t know if you got any little monsters of your own, but I’m tellin’ ya – the thought of leavin’ mine fatherless puts the fear of God in me. And mine ain’t even born yet.");
    params = {
        -- CallSoundID,
        [0] = "3341537960",
        -- eTargetMarker,
        [1] = "2102489294340953785",
        -- eTargetTrigger,
        [2] = "2102542061203948847",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2102489294347245243",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_2()
    local params;
    DrawTextToScreen("Comment: You should be comin' to a big fork in the river. Hang right.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_Brick_Deliver_v5')-- Comment: You should be comin' to a big fork in the river. Hang right.");
    params = {
        -- CallSoundID,
        [0] = "3095983258",
        -- eTargetMarker,
        [1] = "2098242052539064629",
        -- eTargetTrigger,
        [2] = "2102542061201851691",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2098242052541161787",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_7()
    local params;
    params = {
        -- eTargetMarker,
        [1] = "2102516590558914494",
        -- eTargetTrigger,
        [2] = "2102542133215954275",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2102516590554720186",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B40.domino|@KEY01_010_B42_Rings|1280962278");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_8_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Brick_TakeControl_Vehicle_Generic_1()
    local params;
    params = {
        -- aVehicleArchetype,
        [0] = "9015256522055681",
        -- bCompletePreviousObjective,
        [1] = false,
        -- hasObjective,
        [2] = false,
        -- o_Objective,
        [3] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_OBJ",
            id = "376562",
        },
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_6()
    local params;
    params = {
        -- eTargetMarker,
        [1] = "2102489294403868375",
        -- eTargetTrigger,
        [2] = "2102542068525106511",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2102489294410159833",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnEnter_box_Custom_Brick_Deliver_v5_4()
    local params;
    params = {
        -- eTargetMarker,
        [1] = "2102489294382896845",
        -- eTargetTrigger,
        [2] = "2102542068529300819",
        -- eVehicle,
        [3] = self.ePlayerVehicle,
        -- eVehicleMarker,
        [4] = "2097663611706043228",
        -- eVFX,
        [5] = "2102489294389188303",
        -- FailReason,
        [6] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- ObjectiveID,
        [7] = {
            section = "Objectives",
            item = "KEY01_010_B40_GOAL_ReachNickHouse",
            id = "427665",
        },
    };
    return params;
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Generic_1_Started()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    self.ePlayerVehicle = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Generic_1_Success()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_1;
    self.ePlayerVehicle = l0:GetDataOutValue(0);
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
