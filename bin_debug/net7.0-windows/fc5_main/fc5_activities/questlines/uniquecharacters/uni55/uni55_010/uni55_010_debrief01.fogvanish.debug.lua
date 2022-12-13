LUAC="  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni55/uni55_010/uni55_010_debrief01.domino
-- User graph: FogVanish
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
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_010_DEBRIEF01.FogVanish.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
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
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "useSmallestAngleDiff",
                type = "bool",
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
    self._name = "FogVanish";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_DEBRIEF01.domino|@FogVanish";
    self.box_PositionModifier_v2_1 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_DEBRIEF01.domino|@FogVanish|979625670");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_3 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_DEBRIEF01.domino|@FogVanish|1117120866");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_3_StartOut,
    });
    self.box_PositionModifier_v2_4 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_DEBRIEF01.domino|@FogVanish|1339847976");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_4_StartOut,
    });
    self.box_PositionModifier_v2_2 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_DEBRIEF01.domino|@FogVanish|1616109058");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_2_StartOut,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_PositionModifier_v2_3();
    l0 = self.box_PositionModifier_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_DEBRIEF01.domino|@FogVanish|555632230", "555632230", "FogVanish", "In", "box_PositionModifier_v2_3.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_3_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_4();
    l0 = self.box_PositionModifier_v2_3;
    l1 = self.box_PositionModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_DEBRIEF01.domino|@FogVanish|36266860", "36266860", "FogVanish", "box_PositionModifier_v2_3.StartOut", "box_PositionModifier_v2_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_4_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_2();
    l0 = self.box_PositionModifier_v2_4;
    l1 = self.box_PositionModifier_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_DEBRIEF01.domino|@FogVanish|918357597", "918357597", "FogVanish", "box_PositionModifier_v2_4.StartOut", "box_PositionModifier_v2_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_2_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_1();
    l0 = self.box_PositionModifier_v2_2;
    l1 = self.box_PositionModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_DEBRIEF01.domino|@FogVanish|1815098010", "1815098010", "FogVanish", "box_PositionModifier_v2_2.StartOut", "box_PositionModifier_v2_1.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:OnEnter_box_PositionModifier_v2_1()
    local params;
    params = {
        -- blendTime,
        [1] = 15,
        -- endTarget,
        [4] = "2101082228470599310",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100192911005063853",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_3()
    local params;
    params = {
        -- blendTime,
        [1] = 20,
        -- endTarget,
        [4] = "2101082148099346050",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100192718991921171",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_4()
    local params;
    params = {
        -- blendTime,
        [1] = 15,
        -- endTarget,
        [4] = "2101082187131539078",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100192907146304165",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_2()
    local params;
    params = {
        -- blendTime,
        [1] = 15,
        -- endTarget,
        [4] = "2101082209927581322",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100192909786618537",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
