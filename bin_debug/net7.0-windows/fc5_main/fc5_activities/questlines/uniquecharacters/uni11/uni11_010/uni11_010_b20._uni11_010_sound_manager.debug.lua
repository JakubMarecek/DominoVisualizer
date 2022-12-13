LUAC  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni11/uni11_010/uni11_010_b20.domino
-- User graph: _UNI11_010_Sound_Manager
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
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3294122092.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2776894532.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B20._UNI11_010_Sound_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start_Metal_Gate_Sliding",
            },
            [1] = {
                name = "Stop_Metal_Gate_Sliding",
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
    self._name = "_UNI11_010_Sound_Manager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_UNI11_010_Sound_Manager";
    self.box_SoundModifier_v2_1 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_UNI11_010_Sound_Manager|914733844");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_2 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_UNI11_010_Sound_Manager|1754498158");
    l0:SetConnections({
    });
end;

function export:Start_Metal_Gate_Sliding()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_2();
    l0 = self.box_SoundModifier_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_UNI11_010_Sound_Manager|1580989386", "1580989386", "_UNI11_010_Sound_Manager", "Start_Metal_Gate_Sliding", "box_SoundModifier_v2_2.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:Stop_Metal_Gate_Sliding()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_1();
    l0 = self.box_SoundModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_UNI11_010_Sound_Manager|212176486", "212176486", "_UNI11_010_Sound_Manager", "Stop_Metal_Gate_Sliding", "box_SoundModifier_v2_1.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:OnEnter_box_SoundModifier_v2_1()
    local params;
    params = {
        -- Pawns,
        [0] = "2103070068754651786",
        -- SoundId,
        [1] = "3294122092",
        -- SoundType,
        [2] = 27,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_2()
    local params;
    params = {
        -- Pawns,
        [0] = "2103070068754651786",
        -- SoundId,
        [1] = "2776894532",
        -- SoundType,
        [2] = 27,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start_Metal_Gate_Sliding" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop_Metal_Gate_Sliding" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
