LUAC�5  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/master/bowmore_exp_coast_start.domino
-- User graph: Bowmore_Exp_Coast_Start_Ambiant
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Master/Bowmore_Exp_Coast_Start.Bowmore_Exp_Coast_Start_Ambiant.debug.lua")] = {
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
    self._name = "Bowmore_Exp_Coast_Start_Ambiant";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Master\\Bowmore_Exp_Coast_Start.domino|@Bowmore_Exp_Coast_Start_Ambiant";
    self.box_Brick_Exp_TOD_Fog_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_TOD_Fog.debug.lua");
    l0 = self.box_Brick_Exp_TOD_Fog_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_TOD_Fog_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Master\\Bowmore_Exp_Coast_Start.domino|@Bowmore_Exp_Coast_Start_Ambiant|608392914");
    l0:SetConnections({
    });
    self.box_JoinInProgressModifier_3 = cbox:CreateBox("Domino/System/Coop/JoinInProgresModifier.lua");
    l0 = self.box_JoinInProgressModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_JoinInProgressModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Master\\Bowmore_Exp_Coast_Start.domino|@Bowmore_Exp_Coast_Start_Ambiant|1478568893");
    l0:SetConnections({
        -- OnLockSession,
        [0] = self.f_box_JoinInProgressModifier_3_OnLockSession,
    });
    self.box_Brick_Exp_TOD_Fog_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_TOD_Fog.debug.lua");
    l0 = self.box_Brick_Exp_TOD_Fog_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_TOD_Fog_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Master\\Bowmore_Exp_Coast_Start.domino|@Bowmore_Exp_Coast_Start_Ambiant|1528877889");
    l0:SetConnections({
    });
    self.box_Brick_Exp_EnvStory_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_EnvStory.debug.lua");
    l0 = self.box_Brick_Exp_EnvStory_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_EnvStory_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Master\\Bowmore_Exp_Coast_Start.domino|@Bowmore_Exp_Coast_Start_Ambiant|1819223500");
    l0:SetConnections({
        -- C2,
        [0] = self.f_box_Brick_Exp_EnvStory_1_C2,
        -- C7,
        [1] = self.f_box_Brick_Exp_EnvStory_1_C7,
    });
end;

function export:In()
    local l0;
    l0 = self.box_JoinInProgressModifier_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Master\\Bowmore_Exp_Coast_Start.domino|@Bowmore_Exp_Coast_Start_Ambiant|190338020", "190338020", "Bowmore_Exp_Coast_Start_Ambiant", "In", "box_JoinInProgressModifier_3.LockSession", self, l0:GetLuaBox());
    -- LockSession
    l0:Exec(0, {
    });
end;

function export:f_box_JoinInProgressModifier_3_OnLockSession()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_EnvStory_1();
    l0 = self.box_JoinInProgressModifier_3;
    l1 = self.box_Brick_Exp_EnvStory_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Master\\Bowmore_Exp_Coast_Start.domino|@Bowmore_Exp_Coast_Start_Ambiant|1618829088", "1618829088", "Bowmore_Exp_Coast_Start_Ambiant", "box_JoinInProgressModifier_3.OnLockSession", "box_Brick_Exp_EnvStory_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_EnvStory_1_C2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_TOD_Fog_4();
    l0 = self.box_Brick_Exp_EnvStory_1;
    l1 = self.box_Brick_Exp_TOD_Fog_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Master\\Bowmore_Exp_Coast_Start.domino|@Bowmore_Exp_Coast_Start_Ambiant|327583328", "327583328", "Bowmore_Exp_Coast_Start_Ambiant", "box_Brick_Exp_EnvStory_1.C2", "box_Brick_Exp_TOD_Fog_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_EnvStory_1_C7()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_TOD_Fog_5();
    l0 = self.box_Brick_Exp_EnvStory_1;
    l1 = self.box_Brick_Exp_TOD_Fog_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Master\\Bowmore_Exp_Coast_Start.domino|@Bowmore_Exp_Coast_Start_Ambiant|702879050", "702879050", "Bowmore_Exp_Coast_Start_Ambiant", "box_Brick_Exp_EnvStory_1.C7", "box_Brick_Exp_TOD_Fog_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_Brick_Exp_TOD_Fog_5()
    local params;
    params = {
        -- BiomeName,
        [0] = "Coast",
        -- Point_01_Expert_Hour,
        [1] = 19,
        -- Point_01_Expert_Minute,
        [2] = 0,
        -- Point_01_HardExpert_Hour,
        [3] = 0,
        -- Point_01_HardExpert_Minute,
        [4] = 0,
        -- Point_01_NormalExpert_Hour,
        [5] = 6,
        -- Point_01_NormalExpert_Minute,
        [6] = 50,
        -- Point_02_Expert_Hour,
        [7] = 19,
        -- Point_02_Expert_Minute,
        [8] = 30,
        -- Point_02_HardExpert_Hour,
        [9] = 7,
        -- Point_02_HardExpert_Minute,
        [10] = 20,
        -- Point_02_NormalExpert_Hour,
        [11] = 8,
        -- Point_02_NormalExpert_Minute,
        [12] = 10,
        -- Point_03_Expert_Hour,
        [13] = 3,
        -- Point_03_Expert_Minute,
        [14] = 0,
        -- Point_03_HardExpert_Hour,
        [15] = 7,
        -- Point_03_HardExpert_Minute,
        [16] = 20,
        -- Point_03_NormalExpert_Hour,
        [17] = 19,
        -- Point_03_NormalExpert_Minute,
        [18] = 0,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_TOD_Fog_4()
    local params;
    params = {
        -- BiomeName,
        [0] = "Coast",
        -- Point_01_Expert_Hour,
        [1] = 7,
        -- Point_01_Expert_Minute,
        [2] = 0,
        -- Point_01_HardExpert_Hour,
        [3] = 19,
        -- Point_01_HardExpert_Minute,
        [4] = 20,
        -- Point_01_NormalExpert_Hour,
        [5] = 19,
        -- Point_01_NormalExpert_Minute,
        [6] = 0,
        -- Point_02_Expert_Hour,
        [7] = 0,
        -- Point_02_Expert_Minute,
        [8] = 0,
        -- Point_02_HardExpert_Hour,
        [9] = 18,
        -- Point_02_HardExpert_Minute,
        [10] = 6,
        -- Point_02_NormalExpert_Hour,
        [11] = 14,
        -- Point_02_NormalExpert_Minute,
        [12] = 0,
        -- Point_03_Expert_Hour,
        [13] = 7,
        -- Point_03_Expert_Minute,
        [14] = 30,
        -- Point_03_HardExpert_Hour,
        [15] = 22,
        -- Point_03_HardExpert_Minute,
        [16] = 0,
        -- Point_03_NormalExpert_Hour,
        [17] = 18,
        -- Point_03_NormalExpert_Minute,
        [18] = 10,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_EnvStory_1()
    local params;
    params = {
        -- AnyIntroSceneEntity_C2,
        [0] = "2108885159762723846",
        -- AnyIntroSceneEntity_C7,
        [1] = "2108885173004141578",
        -- AnyIntroSceneEntity_H2,
        [2] = "2108885178163135502",
        -- VistaMB,
        [3] = "27160306979966471",
        -- VistaMBLayer_C2,
        [4] = "36167506234707464",
        -- VistaMBLayer_C7,
        [5] = "45174705489463000",
        -- VistaMBLayer_H2,
        [6] = "54181904744208615",
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
