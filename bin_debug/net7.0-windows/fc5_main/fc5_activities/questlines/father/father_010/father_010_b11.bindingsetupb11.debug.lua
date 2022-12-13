LUAC�u  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/father/father_010/father_010_b11.domino
-- User graph: BindingSetupB11
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/EnableIgnitorEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.BindingSetupB11.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "IN",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bind",
            },
            [1] = {
                name = "UnBind",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "eMobileMarker",
                type = "entity",
            },
            [2] = {
                name = "eNPC",
                type = "entity",
            },
            [3] = {
                name = "fHeight",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bind",
            },
            [1] = {
                name = "UnBind",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")] = {
        stateless = true,
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
            [0] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
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
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
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
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/TaggingModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "TagEntity",
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
                name = "Tagged",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Pawns",
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
    self._name = "BindingSetupB11";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11";
    self.box_Bind_v4_29 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|179060045");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_29_Bound,
    });
    self.box_Bind_v4_31 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|489397358");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_31_Bound,
    });
    self.box_BindMarkerOverHead_v2_36 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|856726258");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_36_Out,
    });
    self.box_EntityStatusListener_8 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|1220319563");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_8_Loaded,
    });
    self.box_EntityStatusListener_6 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|1289207973");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_6_Loaded,
    });
    self.box_EntityStatusListener_37 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|1515298570");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_37_Loaded,
    });
    self.box_EntityStatusListener_5 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|1612178410");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_5_Loaded,
    });
    self.box_Bind_v4_32 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|1986512919");
    l0:SetConnections({
    });
    self.box_Bind_v4_33 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|1989324558");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|2050753007");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
    });
    self.box_Bind_v4_30 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|2077328798");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_30_Bound,
    });
    self.box_Bind_v4_34 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|2119610068");
    l0:SetConnections({
    });
end;

function export:IN()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|729416651", "729416651", "BindingSetupB11", "IN", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_29_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_32();
    l0 = self.box_Bind_v4_29;
    l1 = self.box_Bind_v4_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|291433117", "291433117", "BindingSetupB11", "box_Bind_v4_29.Bound", "box_Bind_v4_32.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_31_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_34();
    l0 = self.box_Bind_v4_31;
    l1 = self.box_Bind_v4_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|280445398", "280445398", "BindingSetupB11", "box_Bind_v4_31.Bound", "box_Bind_v4_34.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_EnableIgnitorEntityBox_v2_35_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_38();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|1279175128", "1279175128", "BindingSetupB11", "box_EnableIgnitorEntityBox_v2_35.Disabled", "box_TaggingModifier_v3_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BindMarkerOverHead_v2_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EnableIgnitorEntityBox_v2_35();
    l0 = self.box_BindMarkerOverHead_v2_36;
    l1 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|1751973350", "1751973350", "BindingSetupB11", "box_BindMarkerOverHead_v2_36.Out", "box_EnableIgnitorEntityBox_v2_35.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_38_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_38();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|735554093", "735554093", "BindingSetupB11", "box_TaggingModifier_v3_38.Enabled", "box_TaggingModifier_v3_38.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_8_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_31();
    l0 = self.box_EntityStatusListener_8;
    l1 = self.box_Bind_v4_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|711135577", "711135577", "BindingSetupB11", "box_EntityStatusListener_8.Loaded", "box_Bind_v4_31.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_6_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_29();
    l0 = self.box_EntityStatusListener_6;
    l1 = self.box_Bind_v4_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|132567179", "132567179", "BindingSetupB11", "box_EntityStatusListener_6.Loaded", "box_Bind_v4_29.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_37_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_BindMarkerOverHead_v2_36();
    l0 = self.box_EntityStatusListener_37;
    l1 = self.box_BindMarkerOverHead_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|705965554", "705965554", "BindingSetupB11", "box_EntityStatusListener_37.Loaded", "box_BindMarkerOverHead_v2_36.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_5_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EnableIgnitorEntityBox_v2_10();
    l0 = self.box_EntityStatusListener_5;
    l1 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|515890763", "515890763", "BindingSetupB11", "box_EntityStatusListener_5.Loaded", "box_EnableIgnitorEntityBox_v2_10.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|925360740", "925360740", "BindingSetupB11", "box_OutputOrder_v2_4.Out", "box_EntityStatusListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_37();
    l0 = self.box_EntityStatusListener_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|1478472902", "1478472902", "BindingSetupB11", "box_OutputOrder_v2_4.Out", "box_EntityStatusListener_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_6();
    l0 = self.box_EntityStatusListener_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|2080549143", "2080549143", "BindingSetupB11", "box_OutputOrder_v2_4.Out", "box_EntityStatusListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|1644976196", "1644976196", "BindingSetupB11", "box_OutputOrder_v2_4.Out", "box_EntityStatusListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_8();
    l0 = self.box_EntityStatusListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|2040624390", "2040624390", "BindingSetupB11", "box_OutputOrder_v2_4.Out", "box_EntityStatusListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_30();
    l0 = self.box_EntityStatusListener_7;
    l1 = self.box_Bind_v4_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|268471697", "268471697", "BindingSetupB11", "box_EntityStatusListener_7.Loaded", "box_Bind_v4_30.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_30_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_33();
    l0 = self.box_Bind_v4_30;
    l1 = self.box_Bind_v4_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|57600441", "57600441", "BindingSetupB11", "box_Bind_v4_30.Bound", "box_Bind_v4_33.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:OnEnter_box_Bind_v4_29()
    local params;
    params = {
        -- EntityA,
        [1] = "2101853841111661705",
        -- EntityB,
        [2] = "2103843130643083285",
        -- IsMultiBeatBind,
        [3] = true,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_31()
    local params;
    params = {
        -- EntityA,
        [1] = "2101853837819132937",
        -- EntityB,
        [2] = "2103843130326413331",
        -- IsMultiBeatBind,
        [3] = true,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EnableIgnitorEntityBox_v2_35()
    local params, l0;
    DrawTextToScreen("Comment: We do not want Father to take Fire Damage for Difficulty Curve", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EnableIgnitorEntityBox_v2')-- Comment: We do not want Father to take Fire Damage for Difficulty Curve");
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableIgnitorEntityBox_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|507927419");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EnableIgnitorEntityBox_v2_35_Disabled,
    });
    params = {
        -- Entity,
        [0] = "2104052018686615634",
    };
    return params;
end;

function export:OnEnter_box_EnableIgnitorEntityBox_v2_10()
    local params, l0;
    DrawTextToScreen("Comment: We do not want Father to take Fire Damage for Difficulty Curve", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EnableIgnitorEntityBox_v2')-- Comment: We do not want Father to take Fire Damage for Difficulty Curve");
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableIgnitorEntityBox_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|805203507");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2103569162489054120",
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_36()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2101909443949137361",
        -- eNPC,
        [2] = "2104052018686615634",
        -- fHeight,
        [3] = 0.45,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|1192964736");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_38_Enabled,
    });
    params = {
        -- Entity,
        [0] = "2104052018686615634",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101853837819132937",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101853841111661705",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_37()
    local params;
    DrawTextToScreen("Comment: autoDisable SET AS FALSE SINCE FATHER RESPAWN", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EntityStatusListener')-- Comment: autoDisable SET AS FALSE SINCE FATHER RESPAWN");
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104052018686615634",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_5()
    local params;
    DrawTextToScreen("Comment: autoDisable SET AS FALSE SINCE FATHER RESPAWN", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EntityStatusListener')-- Comment: autoDisable SET AS FALSE SINCE FATHER RESPAWN");
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103569162489054120",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@BindingSetupB11|1627295571");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
                [3] = self.f_box_OutputOrder_v2_4_Out_3,
                [4] = self.f_box_OutputOrder_v2_4_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_32()
    local params;
    params = {
        -- BoneName,
        [0] = "Neck",
        -- EntityA,
        [1] = "2101853841111661705",
        -- EntityB,
        [2] = "2104080153614245170",
        -- IsMultiBeatBind,
        [3] = true,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_33()
    local params;
    params = {
        -- BoneName,
        [0] = "Neck",
        -- EntityA,
        [1] = "2101853840574790732",
        -- EntityB,
        [2] = "2104080143396920615",
        -- IsMultiBeatBind,
        [3] = true,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101853840574790732",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_30()
    local params;
    params = {
        -- EntityA,
        [1] = "2101853840574790732",
        -- EntityB,
        [2] = "2103843129223311377",
        -- IsMultiBeatBind,
        [3] = true,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_34()
    local params;
    params = {
        -- BoneName,
        [0] = "Neck",
        -- EntityA,
        [1] = "2101853837819132937",
        -- EntityB,
        [2] = "2104080156451691828",
        -- IsMultiBeatBind,
        [3] = true,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="IN" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
