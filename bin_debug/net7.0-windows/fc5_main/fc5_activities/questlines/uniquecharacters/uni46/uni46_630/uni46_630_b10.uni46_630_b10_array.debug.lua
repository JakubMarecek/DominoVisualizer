LUAC�j  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_630/uni46_630_b10.domino
-- User graph: UNI46_630_B10_Array
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_630/UNI46_630_B10.UNI46_630_B10_Array.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "ClearLists",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Cleared",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "EntityProximity",
                type = "entity",
            },
            [1] = {
                name = "EntityProximityMiss",
                type = "entity",
            },
            [2] = {
                name = "FX",
                type = "entity",
            },
            [3] = {
                name = "FX_Off",
                type = "entity",
            },
            [4] = {
                name = "Marker",
                type = "entity",
            },
        },
        dataInCount = 5,
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
    self._name = "UNI46_630_B10_Array";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array";
    self.Out = DummyFunction;
    self.box_Brick_GateRaces_CreateLists_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|57890147");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|246735737");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|278418851");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|315197388");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|464867879");
    l0:SetConnections({
        -- Cleared,
        [1] = self.f_box_Brick_GateRaces_CreateLists_12_Cleared,
    });
    self.box_Brick_GateRaces_CreateLists_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|488398676");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|637331507");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_Brick_GateRaces_CreateLists_2_Added,
    });
    self.box_Brick_GateRaces_CreateLists_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|708840655");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|727105324");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|981177268");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|1361475271");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|1381059859");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|1698797174");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|2065706360");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_12();
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|166103385", "166103385", "UNI46_630_B10_Array", "In", "box_Brick_GateRaces_CreateLists_12.ClearLists", self, l0:GetLuaBox());
    -- ClearLists
    l0:Exec(1, params);
end;

function export:f_box_Brick_GateRaces_CreateLists_12_Cleared()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|2084827933", "2084827933", "UNI46_630_B10_Array", "box_Brick_GateRaces_CreateLists_12.Cleared", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CreateLists_2_Added()
    local l0;
    l0 = self.box_Brick_GateRaces_CreateLists_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|188167174", "188167174", "UNI46_630_B10_Array", "box_Brick_GateRaces_CreateLists_2.Added", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_3();
    l0 = self.box_Brick_GateRaces_CreateLists_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|1647306593", "1647306593", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_3.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_10();
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|1794966579", "1794966579", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_10.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_8();
    l0 = self.box_Brick_GateRaces_CreateLists_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|256075923", "256075923", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_8.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_11();
    l0 = self.box_Brick_GateRaces_CreateLists_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|808634097", "808634097", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_11.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_4();
    l0 = self.box_Brick_GateRaces_CreateLists_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|1400592325", "1400592325", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_4.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_14();
    l0 = self.box_Brick_GateRaces_CreateLists_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|409646805", "409646805", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_14.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_1();
    l0 = self.box_Brick_GateRaces_CreateLists_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|871545066", "871545066", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_1.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_6();
    l0 = self.box_Brick_GateRaces_CreateLists_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|161977463", "161977463", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_6.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_15();
    l0 = self.box_Brick_GateRaces_CreateLists_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|30610743", "30610743", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_15.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_13();
    l0 = self.box_Brick_GateRaces_CreateLists_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|793256951", "793256951", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_13.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_5();
    l0 = self.box_Brick_GateRaces_CreateLists_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|1993377729", "1993377729", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_5.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_9();
    l0 = self.box_Brick_GateRaces_CreateLists_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|1489666485", "1489666485", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_9.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_2();
    l0 = self.box_Brick_GateRaces_CreateLists_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|110567763", "110567763", "UNI46_630_B10_Array", "box_OutputOrder_v2_7.Out", "box_Brick_GateRaces_CreateLists_2.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_1()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102335160834863022",
        -- EntityProximityMiss,
        [1] = "2104355643302362479",
        -- FX,
        [2] = "2101442159178690306",
        -- FX_Off,
        [3] = "2103513727679609198",
        -- Marker,
        [4] = "2103513645341227336",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_6()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102335161835204528",
        -- EntityProximityMiss,
        [1] = "2104355647620398451",
        -- FX,
        [2] = "2101743069436081663",
        -- FX_Off,
        [3] = "2103513727679609200",
        -- Marker,
        [4] = "2103513646429649228",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_5()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102335172671188918",
        -- EntityProximityMiss,
        [1] = "2104355660876496255",
        -- FX,
        [2] = "2101522067626136394",
        -- FX_Off,
        [3] = "2103513727667026272",
        -- Marker,
        [4] = "2103513654818257240",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_15()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102335167180844978",
        -- EntityProximityMiss,
        [1] = "2104355650193603959",
        -- FX,
        [2] = "2101522048523178806",
        -- FX_Off,
        [3] = "2103513727681706354",
        -- Marker,
        [4] = "2103513647734077776",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_12()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_8()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102335111092514726",
        -- EntityProximityMiss,
        [1] = "2104355621471010143",
        -- FX,
        [2] = "2101442126765108948",
        -- FX_Off,
        [3] = "2103513727671220582",
        -- Marker,
        [4] = "2103513633756559672",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_2()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102335174762049466",
        -- FX,
        [2] = "2101743529008068123",
        -- FX_Off,
        [3] = "2103513727669123428",
        -- Marker,
        [4] = "2101743529003873813",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_10()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102334823734450343",
        -- EntityProximityMiss,
        [1] = "2104355607627709787",
        -- FX,
        [2] = "2101438594085300453",
        -- FX_Off,
        [3] = "2103513727662831966",
        -- Marker,
        [4] = "2103513629415455028",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_13()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102335170068623284",
        -- EntityProximityMiss,
        [1] = "2104355653393857915",
        -- FX,
        [2] = "2101522058419639104",
        -- FX_Off,
        [3] = "2103513727683803508",
        -- Marker,
        [4] = "2103513652253440340",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_14()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102335156753805228",
        -- EntityProximityMiss,
        [1] = "2104355640569773419",
        -- FX,
        [2] = "2101442154382503672",
        -- FX_Off,
        [3] = "2103513727677512044",
        -- Marker,
        [4] = "2103513642996611396",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10_Array|1250547821");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 13,
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
                [4] = self.f_box_OutputOrder_v2_7_Out_4,
                [5] = self.f_box_OutputOrder_v2_7_Out_5,
                [6] = self.f_box_OutputOrder_v2_7_Out_6,
                [7] = self.f_box_OutputOrder_v2_7_Out_7,
                [8] = self.f_box_OutputOrder_v2_7_Out_8,
                [9] = self.f_box_OutputOrder_v2_7_Out_9,
                [10] = self.f_box_OutputOrder_v2_7_Out_10,
                [11] = self.f_box_OutputOrder_v2_7_Out_11,
                [12] = self.f_box_OutputOrder_v2_7_Out_12,
            },
            count = 13,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_3()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2104187660187749433",
        -- EntityProximityMiss,
        [1] = "2104355593847323991",
        -- FX,
        [2] = "2104187660191943745",
        -- FX_Off,
        [3] = "2104187660189846587",
        -- Marker,
        [4] = "2104187660189846591",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_11()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102335149829009320",
        -- EntityProximityMiss,
        [1] = "2104355635542900067",
        -- FX,
        [2] = "2101442132884598500",
        -- FX_Off,
        [3] = "2103513727675414888",
        -- Marker,
        [4] = "2103513636954716476",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_9()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102335173684113336",
        -- EntityProximityMiss,
        [1] = "2104355664210967939",
        -- FX,
        [2] = "2101522104368239448",
        -- FX_Off,
        [3] = "2103513727669123426",
        -- Marker,
        [4] = "2103513656078645596",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_4()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102335153056526250",
        -- EntityProximityMiss,
        [1] = "2104355638000762215",
        -- FX,
        [2] = "2101743039859946991",
        -- FX_Off,
        [3] = "2103513727675414890",
        -- Marker,
        [4] = "2103513641058842944",
    };
    return params;
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
