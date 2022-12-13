LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_050/key01_050_brief.domino
-- User graph: KEY01_050_KimAnim
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
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/PlaySimpleAnimation_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[animations\legacy\stp\civilians\generic_natives\simple_animation\depressed\chair\3rdcivf_fulb_sitchairdepressed_v00_loop_+000fw_noweapon.mab]], "CAnimationResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_BRIEF.KEY01_050_KimAnim.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/PlaySimpleAnimation_v2.lua")] = {
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
                name = "AnimFinished",
                delayed = true,
            },
            [1] = {
                name = "Played",
                delayed = false,
            },
            [2] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "animation",
                type = "simpleAnimation",
            },
            [1] = {
                name = "animPlayMode",
                type = "int",
            },
            [2] = {
                name = "blendDuration",
                type = "float",
            },
            [3] = {
                name = "loopAnim",
                type = "bool",
            },
            [4] = {
                name = "speedScale",
                type = "float",
            },
            [5] = {
                name = "target",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY01_050_KimAnim";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_BRIEF.domino|@KEY01_050_KimAnim";
    self.box_PlaySimpleAnimation_v2_1 = cbox:CreateBox("Domino/System/PlaySimpleAnimation_v2.lua");
    l0 = self.box_PlaySimpleAnimation_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySimpleAnimation_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_BRIEF.domino|@KEY01_050_KimAnim|692337032");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_2 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_BRIEF.domino|@KEY01_050_KimAnim|1508642477");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_2_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_2();
    l0 = self.box_EntityStatusListener_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_BRIEF.domino|@KEY01_050_KimAnim|2118768515", "2118768515", "KEY01_050_KimAnim", "In", "box_EntityStatusListener_2.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_2_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySimpleAnimation_v2_1();
    l0 = self.box_EntityStatusListener_2;
    l1 = self.box_PlaySimpleAnimation_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_BRIEF.domino|@KEY01_050_KimAnim|911446429", "911446429", "KEY01_050_KimAnim", "box_EntityStatusListener_2.Loaded", "box_PlaySimpleAnimation_v2_1.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:OnEnter_box_PlaySimpleAnimation_v2_1()
    local params;
    params = {
        -- animation,
        [0] = [[animations\legacy\stp\civilians\generic_natives\simple_animation\depressed\chair\3rdcivf_fulb_sitchairdepressed_v00_loop_+000fw_noweapon.mab]],
        -- animPlayMode,
        [1] = 0,
        -- blendDuration,
        [2] = 0,
        -- loopAnim,
        [3] = true,
        -- speedScale,
        [4] = 1,
        -- target,
        [5] = "2104424391512235590",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104424391512235590",
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
