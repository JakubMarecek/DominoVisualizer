LUACw\  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni58/uni58_010/uni58_010_b10.domino
-- User graph: UNI58_010_B20_EVENT
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
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI58/UNI58_010/UNI58_010_B10.UNI58_010_B20_EVENT.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Is_B20",
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
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
            [0] = {
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
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
    self._name = "UNI58_010_B20_EVENT";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT";
    self.box_VisibilityModifier_12 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|511854527");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_12_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_12_Enabled,
    });
    self.box_VisibilityModifier_10 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|540466134");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_10_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_10_Enabled,
    });
    self.box_VisibilityModifier_11 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|595314168");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_11_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_11_Enabled,
    });
    self.box_VisibilityModifier_13 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1005637768");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_4 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1263446060");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_4_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_4_Enabled,
    });
    self.box_VisibilityModifier_2 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1375181082");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_2_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_2_Enabled,
    });
    self.box_VisibilityModifier_5 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1418793522");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_5_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_5_Enabled,
    });
    self.box_VisibilityModifier_6 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1508759995");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_6_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_6_Enabled,
    });
    self.box_VisibilityModifier_1 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1613662758");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_1_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_1_Enabled,
    });
    self.box_VisibilityModifier_8 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1713981064");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_8_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_8_Enabled,
    });
    self.box_VisibilityModifier_3 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1978789728");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_3_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_3_Enabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_VisibilityModifier_1();
    l0 = self.box_VisibilityModifier_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1466770521", "1466770521", "UNI58_010_B20_EVENT", "In", "box_VisibilityModifier_1.SetDisabled", self, l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:Is_B20()
    local params, l0;
    params = self:OnEnter_box_VisibilityModifier_1();
    l0 = self.box_VisibilityModifier_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|384379467", "384379467", "UNI58_010_B20_EVENT", "Is_B20", "box_VisibilityModifier_1.SetEnabled", self, l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_VisibilityModifier_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_13();
    l0 = self.box_VisibilityModifier_12;
    l1 = self.box_VisibilityModifier_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1509162974", "1509162974", "UNI58_010_B20_EVENT", "box_VisibilityModifier_12.Disabled", "box_VisibilityModifier_13.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_12_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_13();
    l0 = self.box_VisibilityModifier_12;
    l1 = self.box_VisibilityModifier_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1335904973", "1335904973", "UNI58_010_B20_EVENT", "box_VisibilityModifier_12.Enabled", "box_VisibilityModifier_13.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_10_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_11();
    l0 = self.box_VisibilityModifier_10;
    l1 = self.box_VisibilityModifier_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|686774270", "686774270", "UNI58_010_B20_EVENT", "box_VisibilityModifier_10.Disabled", "box_VisibilityModifier_11.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_10_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_11();
    l0 = self.box_VisibilityModifier_10;
    l1 = self.box_VisibilityModifier_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|2122356271", "2122356271", "UNI58_010_B20_EVENT", "box_VisibilityModifier_10.Enabled", "box_VisibilityModifier_11.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_11_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_12();
    l0 = self.box_VisibilityModifier_11;
    l1 = self.box_VisibilityModifier_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|2024882877", "2024882877", "UNI58_010_B20_EVENT", "box_VisibilityModifier_11.Disabled", "box_VisibilityModifier_12.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_11_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_12();
    l0 = self.box_VisibilityModifier_11;
    l1 = self.box_VisibilityModifier_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|961609340", "961609340", "UNI58_010_B20_EVENT", "box_VisibilityModifier_11.Enabled", "box_VisibilityModifier_12.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_4_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_5();
    l0 = self.box_VisibilityModifier_4;
    l1 = self.box_VisibilityModifier_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1039562238", "1039562238", "UNI58_010_B20_EVENT", "box_VisibilityModifier_4.Disabled", "box_VisibilityModifier_5.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_4_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_5();
    l0 = self.box_VisibilityModifier_4;
    l1 = self.box_VisibilityModifier_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1008963462", "1008963462", "UNI58_010_B20_EVENT", "box_VisibilityModifier_4.Enabled", "box_VisibilityModifier_5.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_2_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_3();
    l0 = self.box_VisibilityModifier_2;
    l1 = self.box_VisibilityModifier_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|2025805414", "2025805414", "UNI58_010_B20_EVENT", "box_VisibilityModifier_2.Disabled", "box_VisibilityModifier_3.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_3();
    l0 = self.box_VisibilityModifier_2;
    l1 = self.box_VisibilityModifier_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|618250919", "618250919", "UNI58_010_B20_EVENT", "box_VisibilityModifier_2.Enabled", "box_VisibilityModifier_3.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_5_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_6();
    l0 = self.box_VisibilityModifier_5;
    l1 = self.box_VisibilityModifier_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1173973127", "1173973127", "UNI58_010_B20_EVENT", "box_VisibilityModifier_5.Disabled", "box_VisibilityModifier_6.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_6();
    l0 = self.box_VisibilityModifier_5;
    l1 = self.box_VisibilityModifier_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1794414671", "1794414671", "UNI58_010_B20_EVENT", "box_VisibilityModifier_5.Enabled", "box_VisibilityModifier_6.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_6_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_8();
    l0 = self.box_VisibilityModifier_6;
    l1 = self.box_VisibilityModifier_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|693402432", "693402432", "UNI58_010_B20_EVENT", "box_VisibilityModifier_6.Disabled", "box_VisibilityModifier_8.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_6_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_8();
    l0 = self.box_VisibilityModifier_6;
    l1 = self.box_VisibilityModifier_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1740090946", "1740090946", "UNI58_010_B20_EVENT", "box_VisibilityModifier_6.Enabled", "box_VisibilityModifier_8.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_1_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_2();
    l0 = self.box_VisibilityModifier_1;
    l1 = self.box_VisibilityModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1296863981", "1296863981", "UNI58_010_B20_EVENT", "box_VisibilityModifier_1.Disabled", "box_VisibilityModifier_2.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_2();
    l0 = self.box_VisibilityModifier_1;
    l1 = self.box_VisibilityModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|2043884066", "2043884066", "UNI58_010_B20_EVENT", "box_VisibilityModifier_1.Enabled", "box_VisibilityModifier_2.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_8_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_10();
    l0 = self.box_VisibilityModifier_8;
    l1 = self.box_VisibilityModifier_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1368004416", "1368004416", "UNI58_010_B20_EVENT", "box_VisibilityModifier_8.Disabled", "box_VisibilityModifier_10.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_10();
    l0 = self.box_VisibilityModifier_8;
    l1 = self.box_VisibilityModifier_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|379605958", "379605958", "UNI58_010_B20_EVENT", "box_VisibilityModifier_8.Enabled", "box_VisibilityModifier_10.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_3_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_4();
    l0 = self.box_VisibilityModifier_3;
    l1 = self.box_VisibilityModifier_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|539933818", "539933818", "UNI58_010_B20_EVENT", "box_VisibilityModifier_3.Disabled", "box_VisibilityModifier_4.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_3_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_4();
    l0 = self.box_VisibilityModifier_3;
    l1 = self.box_VisibilityModifier_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI58\\UNI58_010\\UNI58_010_B10.domino|@UNI58_010_B20_EVENT|1699019007", "1699019007", "UNI58_010_B20_EVENT", "box_VisibilityModifier_3.Enabled", "box_VisibilityModifier_4.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:OnEnter_box_VisibilityModifier_12()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102113675040013676",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_10()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102113668339613032",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_11()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102113674293427562",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_13()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102113675543330158",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_4()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102142938621427754",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_2()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102113767744617867",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_5()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2100760539119487613",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_6()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101522932267237313",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_1()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102113735318453641",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_8()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102114663467597246",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_3()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102113690093370735",
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Is_B20" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
