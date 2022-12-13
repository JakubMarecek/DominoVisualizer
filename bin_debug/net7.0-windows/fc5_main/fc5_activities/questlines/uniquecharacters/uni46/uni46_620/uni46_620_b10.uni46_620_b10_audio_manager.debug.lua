LUAC�G  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_620/uni46_620_b10.domino
-- User graph: UNI46_620_B10_Audio_Manager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Soundpoint1_Flame" Type="Nomad|entity{}" />
    <DataIn Name="Soundpoint2_Flame" Type="Nomad|entity{}" />
    <DataIn Name="Soundpoint_Fire" Type="Nomad|entity{}" />
    <DataIn Name="Start_VEH_Fire_Sound" Type="Nomad|Sound" />
    <DataIn Name="Stop_VEH_Fire_Sound" Type="Nomad|Sound" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[190283160.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4187798004.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Audio_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable_Flame",
            },
            [1] = {
                name = "Disable_Veh_Fire",
            },
            [2] = {
                name = "Enable_Flame",
            },
            [3] = {
                name = "Enable_Veh_Fire",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Disabled_Flame",
                delayed = false,
            },
            [1] = {
                name = "Disabled_Veh_Fire",
                delayed = false,
            },
            [2] = {
                name = "Enabled_Flame",
                delayed = false,
            },
            [3] = {
                name = "Enabled_Veh_Fire",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Soundpoint_Fire",
                type = "entity",
            },
            [1] = {
                name = "Soundpoint1_Flame",
                type = "entity",
            },
            [2] = {
                name = "Soundpoint2_Flame",
                type = "entity",
            },
            [3] = {
                name = "Start_VEH_Fire_Sound",
                type = "Sound",
            },
            [4] = {
                name = "Stop_VEH_Fire_Sound",
                type = "Sound",
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
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI46_620_B10_Audio_Manager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager";
    self.Disabled_Flame = DummyFunction;
    self.Enabled_Flame = DummyFunction;
    self.Enabled_Veh_Fire = DummyFunction;
    self.Disabled_Veh_Fire = DummyFunction;
    self.box_SoundModifier_v2_3 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|97449423");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_3_Started,
    });
    self.box_SoundModifier_v2_1 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|685082235");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_1_Started,
    });
    self.box_SoundModifier_v2_8 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|875765597");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_8_Started,
    });
    self.box_SoundModifier_v2_5 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|1807072808");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_7 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|1999300392");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_7_Started,
    });
    self.box_SoundModifier_v2_2 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|2053711992");
    l0:SetConnections({
    });
end;

function export:Disable_Flame()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|2056514231", "2056514231", "UNI46_620_B10_Audio_Manager", "Disable_Flame", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Disable_Veh_Fire()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_7();
    l0 = self.box_SoundModifier_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|708927457", "708927457", "UNI46_620_B10_Audio_Manager", "Disable_Veh_Fire", "box_SoundModifier_v2_7.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:Enable_Flame()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|1696202164", "1696202164", "UNI46_620_B10_Audio_Manager", "Enable_Flame", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable_Veh_Fire()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_8();
    l0 = self.box_SoundModifier_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|938744809", "938744809", "UNI46_620_B10_Audio_Manager", "Enable_Veh_Fire", "box_SoundModifier_v2_8.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_3_Started()
    local l0;
    l0 = self.box_SoundModifier_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|403012125", "403012125", "UNI46_620_B10_Audio_Manager", "box_SoundModifier_v2_3.Started", "Disabled_Flame", l0:GetLuaBox(), self);
    self:Disabled_Flame();
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_1();
    l0 = self.box_SoundModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|2131606998", "2131606998", "UNI46_620_B10_Audio_Manager", "box_OutputOrder_v2_6.Out", "box_SoundModifier_v2_1.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_5();
    l0 = self.box_SoundModifier_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|1934119127", "1934119127", "UNI46_620_B10_Audio_Manager", "box_OutputOrder_v2_6.Out", "box_SoundModifier_v2_5.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_1_Started()
    local l0;
    l0 = self.box_SoundModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|1715358457", "1715358457", "UNI46_620_B10_Audio_Manager", "box_SoundModifier_v2_1.Started", "Enabled_Flame", l0:GetLuaBox(), self);
    self:Enabled_Flame();
end;

function export:f_box_SoundModifier_v2_8_Started()
    local l0;
    l0 = self.box_SoundModifier_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|1666401963", "1666401963", "UNI46_620_B10_Audio_Manager", "box_SoundModifier_v2_8.Started", "Enabled_Veh_Fire", l0:GetLuaBox(), self);
    self:Enabled_Veh_Fire();
end;

function export:f_box_SoundModifier_v2_7_Started()
    local l0;
    l0 = self.box_SoundModifier_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|376386683", "376386683", "UNI46_620_B10_Audio_Manager", "box_SoundModifier_v2_7.Started", "Disabled_Veh_Fire", l0:GetLuaBox(), self);
    self:Disabled_Veh_Fire();
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_3();
    l0 = self.box_SoundModifier_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|186367961", "186367961", "UNI46_620_B10_Audio_Manager", "box_OutputOrder_v2_4.Out", "box_SoundModifier_v2_3.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_2();
    l0 = self.box_SoundModifier_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|1132052708", "1132052708", "UNI46_620_B10_Audio_Manager", "box_OutputOrder_v2_4.Out", "box_SoundModifier_v2_2.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:OnEnter_box_SoundModifier_v2_3()
    local params;
    params = {
        -- Pawns,
        [0] = self.Soundpoint1_Flame,
        -- SoundId,
        [1] = "4187798004",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|428785199");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_1()
    local params;
    params = {
        -- Pawns,
        [0] = self.Soundpoint1_Flame,
        -- SoundId,
        [1] = "190283160",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_8()
    local params;
    params = {
        -- Pawns,
        [0] = self.Soundpoint_Fire,
        -- SoundId,
        [1] = self.Start_VEH_Fire_Sound,
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_5()
    local params;
    params = {
        -- Pawns,
        [0] = self.Soundpoint2_Flame,
        -- SoundId,
        [1] = "190283160",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_7()
    local params;
    params = {
        -- Pawns,
        [0] = self.Soundpoint_Fire,
        -- SoundId,
        [1] = self.Stop_VEH_Fire_Sound,
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Audio_Manager|2036661238");
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

function export:OnEnter_box_SoundModifier_v2_2()
    local params;
    params = {
        -- Pawns,
        [0] = self.Soundpoint2_Flame,
        -- SoundId,
        [1] = "4187798004",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

-- Empty out anchor definitions
function export:Disabled_Flame()
    
end;
function export:Enabled_Flame()
    
end;
function export:Enabled_Veh_Fire()
    
end;
function export:Disabled_Veh_Fire()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable_Flame" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Disable_Veh_Fire" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable_Flame" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable_Veh_Fire" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Disabled_Flame" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Disabled_Veh_Fire" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Enabled_Flame" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Enabled_Veh_Fire" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Soundpoint_Fire" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Soundpoint1_Flame" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Soundpoint2_Flame" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Start_VEH_Fire_Sound" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Stop_VEH_Fire_Sound" AnchorDynType="0" DataTypeID="Sound" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
