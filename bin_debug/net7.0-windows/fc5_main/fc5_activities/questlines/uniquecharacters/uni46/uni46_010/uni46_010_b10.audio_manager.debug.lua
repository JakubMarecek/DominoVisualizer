LUAC�+  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_010/uni46_010_b10.domino
-- User graph: Audio_Manager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Flame_Soundpoint" Type="Nomad|entity{}" />
    <DataIn Name="Fire_Vehicle" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[635682669.bnk]], "CSoundResource");
        cboxRes:LoadResource([[190283160.bnk]], "CSoundResource");
        cboxRes:LoadResource([[202848287.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4187798004.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In_Start_Fire",
            },
            [1] = {
                name = "In_Start_Flame",
            },
            [2] = {
                name = "In_Stop_Fire",
            },
            [3] = {
                name = "In_Stop_Flame",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out_Start_Fire",
                delayed = false,
            },
            [1] = {
                name = "Out_Start_Flame",
                delayed = false,
            },
            [2] = {
                name = "Out_Stop_Fire",
                delayed = false,
            },
            [3] = {
                name = "Out_Stop_Flame",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Fire_Vehicle",
                type = "entity",
            },
            [1] = {
                name = "Flame_Soundpoint",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    self._name = "Audio_Manager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager";
    self.Out_Start_Flame = DummyFunction;
    self.Out_Stop_Flame = DummyFunction;
    self.Out_Start_Fire = DummyFunction;
    self.Out_Stop_Fire = DummyFunction;
    self.box_SoundModifier_v2_2 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager|216649362");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_2_Started,
    });
    self.box_SoundModifier_v2_4 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager|620510567");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_4_Started,
    });
    self.box_SoundModifier_v2_1 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager|1360427953");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_1_Started,
    });
    self.box_SoundModifier_v2_3 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager|1846362623");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_3_Started,
    });
end;

function export:In_Start_Fire()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_3();
    l0 = self.box_SoundModifier_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager|373011151", "373011151", "Audio_Manager", "In_Start_Fire", "box_SoundModifier_v2_3.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:In_Start_Flame()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_1();
    l0 = self.box_SoundModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager|707271127", "707271127", "Audio_Manager", "In_Start_Flame", "box_SoundModifier_v2_1.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:In_Stop_Fire()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_4();
    l0 = self.box_SoundModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager|712188345", "712188345", "Audio_Manager", "In_Stop_Fire", "box_SoundModifier_v2_4.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:In_Stop_Flame()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_2();
    l0 = self.box_SoundModifier_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager|1632673320", "1632673320", "Audio_Manager", "In_Stop_Flame", "box_SoundModifier_v2_2.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_2_Started()
    local l0;
    l0 = self.box_SoundModifier_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager|1960956068", "1960956068", "Audio_Manager", "box_SoundModifier_v2_2.Started", "Out_Stop_Flame", l0:GetLuaBox(), self);
    self:Out_Stop_Flame();
end;

function export:f_box_SoundModifier_v2_4_Started()
    local l0;
    l0 = self.box_SoundModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager|2145653840", "2145653840", "Audio_Manager", "box_SoundModifier_v2_4.Started", "Out_Stop_Fire", l0:GetLuaBox(), self);
    self:Out_Stop_Fire();
end;

function export:f_box_SoundModifier_v2_1_Started()
    local l0;
    l0 = self.box_SoundModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager|1558216941", "1558216941", "Audio_Manager", "box_SoundModifier_v2_1.Started", "Out_Start_Flame", l0:GetLuaBox(), self);
    self:Out_Start_Flame();
end;

function export:f_box_SoundModifier_v2_3_Started()
    local l0;
    l0 = self.box_SoundModifier_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@Audio_Manager|364426589", "364426589", "Audio_Manager", "box_SoundModifier_v2_3.Started", "Out_Start_Fire", l0:GetLuaBox(), self);
    self:Out_Start_Fire();
end;

function export:OnEnter_box_SoundModifier_v2_2()
    local params;
    params = {
        -- Pawns,
        [0] = self.Flame_Soundpoint,
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

function export:OnEnter_box_SoundModifier_v2_4()
    local params;
    params = {
        -- Pawns,
        [0] = self.Fire_Vehicle,
        -- SoundId,
        [1] = "635682669",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_1()
    local params;
    params = {
        -- Pawns,
        [0] = self.Flame_Soundpoint,
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

function export:OnEnter_box_SoundModifier_v2_3()
    local params;
    params = {
        -- Pawns,
        [0] = self.Fire_Vehicle,
        -- SoundId,
        [1] = "202848287",
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
function export:Out_Start_Flame()
    
end;
function export:Out_Stop_Flame()
    
end;
function export:Out_Start_Fire()
    
end;
function export:Out_Stop_Fire()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In_Start_Fire" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Start_Flame" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Stop_Fire" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Stop_Flame" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out_Start_Fire" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out_Start_Flame" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out_Stop_Fire" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out_Stop_Flame" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Fire_Vehicle" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Flame_Soundpoint" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
