LUACqM  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_040/lt03_040_b05.domino
-- User graph: LT03_040_B05_Boundaries_Player2
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="ePlayer" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayerLookAtModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2641902273.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B05.LT03_040_B05_Boundaries_Player2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ePlayer",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Delay_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
            [2] = {
                name = "Start",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "LoopingEnded",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Resumed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Stopped",
                delayed = false,
            },
            [5] = {
                name = "TimeElapsed",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "loop",
                type = "bool",
            },
            [1] = {
                name = "nbLoop",
                type = "int",
            },
            [2] = {
                name = "seconds",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "currentLoop",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/PostFx_v3.lua")] = {
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
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "PostFxName",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerLookAtModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LookAtEntity",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = true,
            },
            [1] = {
                name = "Started",
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
                name = "blendOutTime",
                type = "float",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "lockPlayer",
                type = "bool",
            },
            [3] = {
                name = "lockTime",
                type = "float",
            },
            [4] = {
                name = "lookTarget",
                type = "entity",
            },
            [5] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerSpeedModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ApplySpeedFactor",
            },
            [1] = {
                name = "ForceWalk",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ApplySpeedFactorOut",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "ForceWalkOut",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "blendTime",
                type = "float",
            },
            [1] = {
                name = "factor",
                type = "float",
            },
            [2] = {
                name = "Players",
                type = "group",
            },
        },
        dataInCount = 3,
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
    self._name = "LT03_040_B05_Boundaries_Player2";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2";
    self.box_PlayerLookAtModifier_v3_1 = cbox:CreateBox("Domino/System/PlayerLookAtModifier_v3.lua");
    l0 = self.box_PlayerLookAtModifier_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerLookAtModifier_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|349266602");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_PlayerLookAtModifier_v3_1_Started,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|371475184");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_PostFx_v3_5 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|461408367");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_5_Disabled,
    });
    self.box_PostFx_v3_6 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|892034693");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_6_Enabled,
    });
    self.box_SoundModifier_v2_2 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|992951296");
    l0:SetConnections({
    });
    self.box_PlayerSpeedModifier_v3_7 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|1911122991");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_7_ApplySpeedFactorOut,
    });
    self.box_PlayerSpeedModifier_v3_4 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|2013381052");
    l0:SetConnections({
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_PostFx_v3_6();
    l0 = self.box_PostFx_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|1348325815", "1348325815", "LT03_040_B05_Boundaries_Player2", "Enable", "box_PostFx_v3_6.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayerLookAtModifier_v3_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_5();
    l0 = self.box_PlayerLookAtModifier_v3_1;
    l1 = self.box_PostFx_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|1455709104", "1455709104", "LT03_040_B05_Boundaries_Player2", "box_PlayerLookAtModifier_v3_1.Started", "box_PostFx_v3_5.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerLookAtModifier_v3_1();
    l0 = self.box_Delay_v5_8;
    l1 = self.box_PlayerLookAtModifier_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|1457434937", "1457434937", "LT03_040_B05_Boundaries_Player2", "box_Delay_v5_8.TimeElapsed", "box_PlayerLookAtModifier_v3_1.LookAtEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- LookAtEntity
    l1:Exec(0, params);
end;

function export:f_box_PostFx_v3_5_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_4();
    l0 = self.box_PostFx_v3_5;
    l1 = self.box_PlayerSpeedModifier_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|2093891390", "2093891390", "LT03_040_B05_Boundaries_Player2", "box_PostFx_v3_5.Disabled", "box_PlayerSpeedModifier_v3_4.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_7();
    l0 = self.box_PlayerSpeedModifier_v3_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|105092745", "105092745", "LT03_040_B05_Boundaries_Player2", "box_OutputOrder_v2_3.Out", "box_PlayerSpeedModifier_v3_7.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_2();
    l0 = self.box_SoundModifier_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|1218383109", "1218383109", "LT03_040_B05_Boundaries_Player2", "box_OutputOrder_v2_3.Out", "box_SoundModifier_v2_2.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_PostFx_v3_6_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_PostFx_v3_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|419496126", "419496126", "LT03_040_B05_Boundaries_Player2", "box_PostFx_v3_6.Enabled", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerSpeedModifier_v3_7_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_PlayerSpeedModifier_v3_7;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|140273659", "140273659", "LT03_040_B05_Boundaries_Player2", "box_PlayerSpeedModifier_v3_7.ApplySpeedFactorOut", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:OnEnter_box_PlayerLookAtModifier_v3_1()
    local params;
    params = {
        -- blendOutTime,
        [0] = 0,
        -- blendTime,
        [1] = 0,
        -- lockPlayer,
        [2] = false,
        -- lockTime,
        [3] = 3,
        -- lookTarget,
        [4] = "2104426277705375147",
        -- Pawns,
        [5] = self.ePlayer,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_5()
    local params;
    params = {
        -- Pawns,
        [0] = self.ePlayer,
        -- PostFxName,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B05.domino|@LT03_040_B05_Boundaries_Player2|690244385");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_6()
    local params;
    params = {
        -- Pawns,
        [0] = self.ePlayer,
        -- PostFxName,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_2()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2641902273",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_7()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0,
        -- Players,
        [2] = self.ePlayer,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_4()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0.5,
        -- Players,
        [2] = self.ePlayer,
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="ePlayer" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
