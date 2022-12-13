LUACac  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_020/uni46_020_b15.domino
-- User graph: UNI46_020_DemoSneakPeek
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
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/GetDemoType.lua");
        cboxRes:RegisterBox("Domino/System/Player/EnableConditionalZoneEvents_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.UNI46_020_DemoSneakPeek.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetDemoType.lua")] = {
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
            [0] = {
                name = "type",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Lock",
            },
            [1] = {
                name = "Unlock",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Locked",
                delayed = false,
            },
            [1] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "zoneID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    self._name = "UNI46_020_DemoSneakPeek";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek";
    self.Enabled = DummyFunction;
    self.Disabled = DummyFunction;
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_GetDemoType_12();
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|879818412", "879818412", "UNI46_020_DemoSneakPeek", "Disable", "box_GetDemoType_12.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_GetDemoType_2();
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|202608669", "202608669", "UNI46_020_DemoSneakPeek", "Enable", "box_GetDemoType_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EnableConditionalZoneEvents_v2_4_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|772915471", "772915471", "UNI46_020_DemoSneakPeek", "box_EnableConditionalZoneEvents_v2_4.Locked", "box_EnableConditionalZoneEvents_v2_6.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EnableConditionalZoneEvents_v2_4_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|1364549318", "1364549318", "UNI46_020_DemoSneakPeek", "box_EnableConditionalZoneEvents_v2_4.Unlocked", "box_EnableConditionalZoneEvents_v2_6.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EnableConditionalZoneEvents_v2_3_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|93847645", "93847645", "UNI46_020_DemoSneakPeek", "box_EnableConditionalZoneEvents_v2_3.Locked", "box_EnableConditionalZoneEvents_v2_4.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EnableConditionalZoneEvents_v2_3_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|1160692541", "1160692541", "UNI46_020_DemoSneakPeek", "box_EnableConditionalZoneEvents_v2_3.Unlocked", "box_EnableConditionalZoneEvents_v2_4.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EnableConditionalZoneEvents_v2_8_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|1390953858", "1390953858", "UNI46_020_DemoSneakPeek", "box_EnableConditionalZoneEvents_v2_8.Locked", "box_EnableConditionalZoneEvents_v2_9.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EnableConditionalZoneEvents_v2_8_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|1067284046", "1067284046", "UNI46_020_DemoSneakPeek", "box_EnableConditionalZoneEvents_v2_8.Unlocked", "box_EnableConditionalZoneEvents_v2_9.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_11_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|1220553778", "1220553778", "UNI46_020_DemoSneakPeek", "box_Compare_Strings_11.A_eq_B", "box_EnableConditionalZoneEvents_v2_3.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_11_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|994786357", "994786357", "UNI46_020_DemoSneakPeek", "box_Compare_Strings_11.A_neq_B", "Disabled", clone:GetLuaBox(), self);
    self:Disabled();
end;

function export:f_box_GetDemoType_2_Out()
    local params, l0;
    self:OnExit_box_GetDemoType_2_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_1();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|1084824456", "1084824456", "UNI46_020_DemoSneakPeek", "box_GetDemoType_2.Out", "box_Compare_Strings_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EnableConditionalZoneEvents_v2_6_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|824450820", "824450820", "UNI46_020_DemoSneakPeek", "box_EnableConditionalZoneEvents_v2_6.Locked", "box_EnableConditionalZoneEvents_v2_7.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EnableConditionalZoneEvents_v2_6_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|818982853", "818982853", "UNI46_020_DemoSneakPeek", "box_EnableConditionalZoneEvents_v2_6.Unlocked", "box_EnableConditionalZoneEvents_v2_7.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EnableConditionalZoneEvents_v2_9_Locked()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|601605863", "601605863", "UNI46_020_DemoSneakPeek", "box_EnableConditionalZoneEvents_v2_9.Locked", "Disabled", clone:GetLuaBox(), self);
    self:Disabled();
end;

function export:f_box_EnableConditionalZoneEvents_v2_9_Unlocked()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|111887521", "111887521", "UNI46_020_DemoSneakPeek", "box_EnableConditionalZoneEvents_v2_9.Unlocked", "Enabled", clone:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_Compare_Strings_1_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|914833281", "914833281", "UNI46_020_DemoSneakPeek", "box_Compare_Strings_1.A_eq_B", "box_EnableConditionalZoneEvents_v2_3.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_1_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|757162675", "757162675", "UNI46_020_DemoSneakPeek", "box_Compare_Strings_1.A_neq_B", "Enabled", clone:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_EnableConditionalZoneEvents_v2_7_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|845387393", "845387393", "UNI46_020_DemoSneakPeek", "box_EnableConditionalZoneEvents_v2_7.Locked", "box_EnableConditionalZoneEvents_v2_8.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EnableConditionalZoneEvents_v2_7_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableConditionalZoneEvents_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|303678938", "303678938", "UNI46_020_DemoSneakPeek", "box_EnableConditionalZoneEvents_v2_7.Unlocked", "box_EnableConditionalZoneEvents_v2_8.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetDemoType_12_Out()
    local params, l0;
    self:OnExit_box_GetDemoType_12_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_11();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|1520762626", "1520762626", "UNI46_020_DemoSneakPeek", "box_GetDemoType_12.Out", "box_Compare_Strings_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_EnableConditionalZoneEvents_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableConditionalZoneEvents_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|273080413");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_EnableConditionalZoneEvents_v2_4_Locked,
        -- Unlocked,
        [1] = self.f_box_EnableConditionalZoneEvents_v2_4_Unlocked,
    });
    params = {
        -- zoneID,
        [0] = "9015250919388547",
    };
    return params;
end;

function export:OnEnter_box_EnableConditionalZoneEvents_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableConditionalZoneEvents_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|335008336");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_EnableConditionalZoneEvents_v2_3_Locked,
        -- Unlocked,
        [1] = self.f_box_EnableConditionalZoneEvents_v2_3_Unlocked,
    });
    params = {
        -- zoneID,
        [0] = "9015214137928624",
    };
    return params;
end;

function export:OnEnter_box_EnableConditionalZoneEvents_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableConditionalZoneEvents_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|368008304");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_EnableConditionalZoneEvents_v2_8_Locked,
        -- Unlocked,
        [1] = self.f_box_EnableConditionalZoneEvents_v2_8_Unlocked,
    });
    params = {
        -- zoneID,
        [0] = "9015280141780562",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|544929600");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_11_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_11_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_12,
        -- B,
        [1] = "SneakPeek",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GetDemoType_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDemoType_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|672909364");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDemoType_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EnableConditionalZoneEvents_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableConditionalZoneEvents_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|733393948");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_EnableConditionalZoneEvents_v2_6_Locked,
        -- Unlocked,
        [1] = self.f_box_EnableConditionalZoneEvents_v2_6_Unlocked,
    });
    params = {
        -- zoneID,
        [0] = "9015223523161015",
    };
    return params;
end;

function export:OnEnter_box_EnableConditionalZoneEvents_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableConditionalZoneEvents_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|1194822756");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_EnableConditionalZoneEvents_v2_9_Locked,
        -- Unlocked,
        [1] = self.f_box_EnableConditionalZoneEvents_v2_9_Unlocked,
    });
    params = {
        -- zoneID,
        [0] = "9015246056700033",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|1270856633");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_1_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_1_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_2,
        -- B,
        [1] = "SneakPeek",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_EnableConditionalZoneEvents_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableConditionalZoneEvents_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|1687644014");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_EnableConditionalZoneEvents_v2_7_Locked,
        -- Unlocked,
        [1] = self.f_box_EnableConditionalZoneEvents_v2_7_Unlocked,
    });
    params = {
        -- zoneID,
        [0] = "9015252509106893",
    };
    return params;
end;

function export:OnEnter_box_GetDemoType_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDemoType_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_DemoSneakPeek|1842455458");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDemoType_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetDemoType_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    self._sld_type_box_GetDemoType_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDemoType_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    self._sld_type_box_GetDemoType_12 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Enabled()
    
end;
function export:Disabled()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Disabled" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Enabled" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
