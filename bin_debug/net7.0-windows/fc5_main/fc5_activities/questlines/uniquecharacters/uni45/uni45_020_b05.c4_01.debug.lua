LUAC�8  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni45/uni45_020_b05.domino
-- User graph: C4_01
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
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B05.C4_01.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "C4_01_Interacted",
            },
            [1] = {
                name = "C4_02_Interacted",
            },
            [2] = {
                name = "C4_03_Interacted",
            },
            [3] = {
                name = "C4_04_Interacted",
            },
            [4] = {
                name = "C4_Reload",
            },
        },
        controlInCount = 5,
        controlOut = {
            [0] = {
                name = "Out_01",
                delayed = false,
            },
            [1] = {
                name = "Out_02",
                delayed = false,
            },
            [2] = {
                name = "Out_03",
                delayed = false,
            },
            [3] = {
                name = "Out_04",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
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
    self._name = "C4_01";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01";
    self.Out_01 = DummyFunction;
    self.Out_02 = DummyFunction;
    self.Out_03 = DummyFunction;
    self.Out_04 = DummyFunction;
    self.box_RemoveEntity_v2_8 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|164319862");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_8_Out,
    });
    self.box_VisibilityModifier_3 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|886820778");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_3_Enabled,
    });
    self.box_VisibilityModifier_7 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|1124679577");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_7_Enabled,
    });
    self.box_VisibilityModifier_2 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|1343498411");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_2_Enabled,
    });
    self.box_RemoveEntity_v2_1 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|1587100983");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_1_Out,
    });
    self.box_RemoveEntity_v2_4 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|1626692353");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_4_Out,
    });
    self.box_VisibilityModifier_5 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|1694702189");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_5_Enabled,
    });
    self.box_RemoveEntity_v2_6 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|1742106106");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_6_Out,
    });
end;

function export:C4_01_Interacted()
    local params, l0;
    params = self:OnEnter_box_RemoveEntity_v2_1();
    l0 = self.box_RemoveEntity_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|780129100", "780129100", "C4_01", "C4_01_Interacted", "box_RemoveEntity_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:C4_02_Interacted()
    local params, l0;
    params = self:OnEnter_box_RemoveEntity_v2_4();
    l0 = self.box_RemoveEntity_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|566710727", "566710727", "C4_01", "C4_02_Interacted", "box_RemoveEntity_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:C4_03_Interacted()
    local params, l0;
    params = self:OnEnter_box_RemoveEntity_v2_6();
    l0 = self.box_RemoveEntity_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|1400671251", "1400671251", "C4_01", "C4_03_Interacted", "box_RemoveEntity_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:C4_04_Interacted()
    local params, l0;
    params = self:OnEnter_box_RemoveEntity_v2_8();
    l0 = self.box_RemoveEntity_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|220481376", "220481376", "C4_01", "C4_04_Interacted", "box_RemoveEntity_v2_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:C4_Reload()
    
end;

function export:f_box_RemoveEntity_v2_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_2();
    l0 = self.box_RemoveEntity_v2_8;
    l1 = self.box_VisibilityModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|571476854", "571476854", "C4_01", "box_RemoveEntity_v2_8.Out", "box_VisibilityModifier_2.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_3_Enabled()
    local l0;
    l0 = self.box_VisibilityModifier_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|278731245", "278731245", "C4_01", "box_VisibilityModifier_3.Enabled", "Out_03", l0:GetLuaBox(), self);
    self:Out_03();
end;

function export:f_box_VisibilityModifier_7_Enabled()
    local l0;
    l0 = self.box_VisibilityModifier_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|536071764", "536071764", "C4_01", "box_VisibilityModifier_7.Enabled", "Out_01", l0:GetLuaBox(), self);
    self:Out_01();
end;

function export:f_box_VisibilityModifier_2_Enabled()
    local l0;
    l0 = self.box_VisibilityModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|100953581", "100953581", "C4_01", "box_VisibilityModifier_2.Enabled", "Out_04", l0:GetLuaBox(), self);
    self:Out_04();
end;

function export:f_box_RemoveEntity_v2_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_7();
    l0 = self.box_RemoveEntity_v2_1;
    l1 = self.box_VisibilityModifier_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|1964562832", "1964562832", "C4_01", "box_RemoveEntity_v2_1.Out", "box_VisibilityModifier_7.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_5();
    l0 = self.box_RemoveEntity_v2_4;
    l1 = self.box_VisibilityModifier_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|985826577", "985826577", "C4_01", "box_RemoveEntity_v2_4.Out", "box_VisibilityModifier_5.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_5_Enabled()
    local l0;
    l0 = self.box_VisibilityModifier_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|88888221", "88888221", "C4_01", "box_VisibilityModifier_5.Enabled", "Out_02", l0:GetLuaBox(), self);
    self:Out_02();
end;

function export:f_box_RemoveEntity_v2_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_3();
    l0 = self.box_RemoveEntity_v2_6;
    l1 = self.box_VisibilityModifier_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@C4_01|23507232", "23507232", "C4_01", "box_RemoveEntity_v2_6.Out", "box_VisibilityModifier_3.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:OnEnter_box_RemoveEntity_v2_8()
    local params;
    params = {
        -- Group,
        [0] = "2103551735256617173",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_3()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103552583548288038",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_7()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103552567576378404",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_2()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103552572517268517",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_1()
    local params;
    params = {
        -- Group,
        [0] = "2103551745037734103",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_4()
    local params;
    params = {
        -- Group,
        [0] = "2103551772065829081",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_5()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103552586926799911",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_6()
    local params;
    params = {
        -- Group,
        [0] = "2103551799871967451",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out_01()
    
end;
function export:Out_02()
    
end;
function export:Out_03()
    
end;
function export:Out_04()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="C4_01_Interacted" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="C4_02_Interacted" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="C4_03_Interacted" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="C4_04_Interacted" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="C4_Reload" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out_01" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out_02" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out_03" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out_04" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
