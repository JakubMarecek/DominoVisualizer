LUAC'6  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/master/bowmore_exp_canyon_start.domino
-- User graph: Bowmore_Exp_Canyon_Start_Ambiant
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_EnvStory.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_TOD_Fog.debug.lua");
        cboxRes:RegisterBox("Domino/System/Coop/JoinInProgresModifier.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Master/Bowmore_Exp_Canyon_Start.Bowmore_Exp_Canyon_Start_Ambiant.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_EnvStory.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "C2",
                delayed = false,
            },
            [1] = {
                name = "C7",
                delayed = false,
            },
            [2] = {
                name = "H2",
                delayed = false,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AnyIntroSceneEntity_C2",
                type = "entity",
            },
            [1] = {
                name = "AnyIntroSceneEntity_C7",
                type = "entity",
            },
            [2] = {
                name = "AnyIntroSceneEntity_H2",
                type = "entity",
            },
            [3] = {
                name = "VistaMB",
                type = "missionblock",
            },
            [4] = {
                name = "VistaMBLayer_C2",
                type = "missionblocklayer",
            },
            [5] = {
                name = "VistaMBLayer_C7",
                type = "missionblocklayer",
            },
            [6] = {
                name = "VistaMBLayer_H2",
                type = "missionblocklayer",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_TOD_Fog.debug.lua")] = {
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
            [0] = {
                name = "BiomeName",
                type = "string",
            },
            [1] = {
                name = "Point_01_Expert_Hour",
                type = "int",
            },
            [2] = {
                name = "Point_01_Expert_Minute",
                type = "int",
            },
            [3] = {
                name = "Point_01_HardExpert_Hour",
                type = "int",
            },
            [4] = {
                name = "Point_01_HardExpert_Minute",
                type = "int",
            },
            [5] = {
                name = "Point_01_NormalExpert_Hour",
                type = "int",
            },
            [6] = {
                name = "Point_01_NormalExpert_Minute",
                type = "int",
            },
            [7] = {
                name = "Point_02_Expert_Hour",
                type = "int",
            },
            [8] = {
                name = "Point_02_Expert_Minute",
                type = "int",
            },
            [9] = {
                name = "Point_02_HardExpert_Hour",
                type = "int",
            },
            [10] = {
                name = "Point_02_HardExpert_Minute",
                type = "int",
            },
            [11] = {
                name = "Point_02_NormalExpert_Hour",
                type = "int",
            },
            [12] = {
                name = "Point_02_NormalExpert_Minute",
                type = "int",
            },
            [13] = {
                name = "Point_03_Expert_Hour",
                type = "int",
            },
            [14] = {
                name = "Point_03_Expert_Minute",
                type = "int",
            },
            [15] = {
                name = "Point_03_HardExpert_Hour",
                type = "int",
            },
            [16] = {
                name = "Point_03_HardExpert_Minute",
                type = "int",
            },
            [17] = {
                name = "Point_03_NormalExpert_Hour",
                type = "int",
            },
            [18] = {
                name = "Point_03_NormalExpert_Minute",
                type = "int",
            },
        },
        dataInCount = 19,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/JoinInProgresModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LockSession",
            },
            [1] = {
                name = "UnlockSession",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnLockSession",
                delayed = false,
            },
            [1] = {
                name = "OnUnlockSession",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Bowmore_Exp_Canyon_Start_Ambiant";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Master\\Bowmore_Exp_Canyon_Start.domino|@Bowmore_Exp_Canyon_Start_Ambiant";
    self.box_Brick_Exp_TOD_Fog_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_TOD_Fog.debug.lua");
    l0 = self.box_Brick_Exp_TOD_Fog_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_TOD_Fog_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Master\\Bowmore_Exp_Canyon_Start.domino|@Bowmore_Exp_Canyon_Start_Ambiant|203263639");
    l0:SetConnections({
    });
    self.box_Brick_Exp_EnvStory_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_EnvStory.debug.lua");
    l0 = self.box_Brick_Exp_EnvStory_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_EnvStory_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Master\\Bowmore_Exp_Canyon_Start.domino|@Bowmore_Exp_Canyon_Start_Ambiant|800394379");
    l0:SetConnections({
        -- C2,
        [0] = self.f_box_Brick_Exp_EnvStory_1_C2,
        -- H2,
        [2] = self.f_box_Brick_Exp_EnvStory_1_H2,
    });
    self.box_JoinInProgressModifier_3 = cbox:CreateBox("Domino/System/Coop/JoinInProgresModifier.lua");
    l0 = self.box_JoinInProgressModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_JoinInProgressModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Master\\Bowmore_Exp_Canyon_Start.domino|@Bowmore_Exp_Canyon_Start_Ambiant|836610870");
    l0:SetConnections({
        -- OnLockSession,
        [0] = self.f_box_JoinInProgressModifier_3_OnLockSession,
    });
    self.box_Brick_Exp_TOD_Fog_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_TOD_Fog.debug.lua");
    l0 = self.box_Brick_Exp_TOD_Fog_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_TOD_Fog_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Master\\Bowmore_Exp_Canyon_Start.domino|@Bowmore_Exp_Canyon_Start_Ambiant|1568231550");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_JoinInProgressModifier_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Master\\Bowmore_Exp_Canyon_Start.domino|@Bowmore_Exp_Canyon_Start_Ambiant|1629232706", "1629232706", "Bowmore_Exp_Canyon_Start_Ambiant", "In", "box_JoinInProgressModifier_3.LockSession", self, l0:GetLuaBox());
    -- LockSession
    l0:Exec(0, {
    });
end;

function export:f_box_Brick_Exp_EnvStory_1_C2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_TOD_Fog_5();
    l0 = self.box_Brick_Exp_EnvStory_1;
    l1 = self.box_Brick_Exp_TOD_Fog_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Master\\Bowmore_Exp_Canyon_Start.domino|@Bowmore_Exp_Canyon_Start_Ambiant|1660236977", "1660236977", "Bowmore_Exp_Canyon_Start_Ambiant", "box_Brick_Exp_EnvStory_1.C2", "box_Brick_Exp_TOD_Fog_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_EnvStory_1_H2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_TOD_Fog_4();
    l0 = self.box_Brick_Exp_EnvStory_1;
    l1 = self.box_Brick_Exp_TOD_Fog_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Master\\Bowmore_Exp_Canyon_Start.domino|@Bowmore_Exp_Canyon_Start_Ambiant|1348412627", "1348412627", "Bowmore_Exp_Canyon_Start_Ambiant", "box_Brick_Exp_EnvStory_1.H2", "box_Brick_Exp_TOD_Fog_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_JoinInProgressModifier_3_OnLockSession()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_EnvStory_1();
    l0 = self.box_JoinInProgressModifier_3;
    l1 = self.box_Brick_Exp_EnvStory_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Master\\Bowmore_Exp_Canyon_Start.domino|@Bowmore_Exp_Canyon_Start_Ambiant|1530849784", "1530849784", "Bowmore_Exp_Canyon_Start_Ambiant", "box_JoinInProgressModifier_3.OnLockSession", "box_Brick_Exp_EnvStory_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_Brick_Exp_TOD_Fog_5()
    local params;
    params = {
        -- BiomeName,
        [0] = "Canyon",
        -- Point_01_Expert_Hour,
        [1] = 18,
        -- Point_01_Expert_Minute,
        [2] = 45,
        -- Point_01_HardExpert_Hour,
        [3] = 1,
        -- Point_01_HardExpert_Minute,
        [4] = 45,
        -- Point_01_NormalExpert_Hour,
        [5] = 10,
        -- Point_01_NormalExpert_Minute,
        [6] = 0,
        -- Point_02_Expert_Hour,
        [7] = 0,
        -- Point_02_Expert_Minute,
        [8] = 0,
        -- Point_02_HardExpert_Hour,
        [9] = 18,
        -- Point_02_HardExpert_Minute,
        [10] = 0,
        -- Point_02_NormalExpert_Hour,
        [11] = 20,
        -- Point_02_NormalExpert_Minute,
        [12] = 20,
        -- Point_03_Expert_Hour,
        [13] = 19,
        -- Point_03_Expert_Minute,
        [14] = 20,
        -- Point_03_HardExpert_Hour,
        [15] = 18,
        -- Point_03_HardExpert_Minute,
        [16] = 0,
        -- Point_03_NormalExpert_Hour,
        [17] = 16,
        -- Point_03_NormalExpert_Minute,
        [18] = 50,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_EnvStory_1()
    local params;
    params = {
        -- AnyIntroSceneEntity_C2,
        [0] = "2108884815787852833",
        -- AnyIntroSceneEntity_C7,
        [1] = "2108885020918678565",
        -- AnyIntroSceneEntity_H2,
        [2] = "2108885033994421289",
        -- VistaMB,
        [3] = "27160306978063011",
        -- VistaMBLayer_C2,
        [4] = "36167506232804004",
        -- VistaMBLayer_C7,
        [5] = "45174705487557385",
        -- VistaMBLayer_H2,
        [6] = "54181904742302169",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_TOD_Fog_4()
    local params;
    params = {
        -- BiomeName,
        [0] = "Canyon",
        -- Point_01_Expert_Hour,
        [1] = 22,
        -- Point_01_Expert_Minute,
        [2] = 0,
        -- Point_01_HardExpert_Hour,
        [3] = 4,
        -- Point_01_HardExpert_Minute,
        [4] = 30,
        -- Point_01_NormalExpert_Hour,
        [5] = 9,
        -- Point_01_NormalExpert_Minute,
        [6] = 30,
        -- Point_02_Expert_Hour,
        [7] = 2,
        -- Point_02_Expert_Minute,
        [8] = 0,
        -- Point_02_HardExpert_Hour,
        [9] = 17,
        -- Point_02_HardExpert_Minute,
        [10] = 0,
        -- Point_02_NormalExpert_Hour,
        [11] = 10,
        -- Point_02_NormalExpert_Minute,
        [12] = 50,
        -- Point_03_Expert_Hour,
        [13] = 4,
        -- Point_03_Expert_Minute,
        [14] = 0,
        -- Point_03_HardExpert_Hour,
        [15] = 16,
        -- Point_03_HardExpert_Minute,
        [16] = 30,
        -- Point_03_NormalExpert_Hour,
        [17] = 18,
        -- Point_03_NormalExpert_Minute,
        [18] = 30,
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
