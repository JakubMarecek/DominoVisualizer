LUAC5$  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/treasurehunt/th_d201.domino
-- User graph: Sound_Manager
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
        cboxRes:LoadResource([[1982792409.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3294122092.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2776894532.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3381977507.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3607026267.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.TH_D201 = nil;
    Globals.TH_D201 = {
        ePlayer = nil,
        derp = "",
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_D201.Sound_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start_Bunker_Trap_Door_Open",
            },
            [1] = {
                name = "Start_Garage_Door",
            },
            [2] = {
                name = "Start_Metal_Gate_Sliding",
            },
            [3] = {
                name = "Stop_Garage_Door",
            },
            [4] = {
                name = "Stop_Metal_Gate_Sliding",
            },
        },
        controlInCount = 5,
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
    self._name = "Sound_Manager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@Sound_Manager";
    self.box_SoundModifier_v2_5 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@Sound_Manager|20830521");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_4 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@Sound_Manager|791837432");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_2 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@Sound_Manager|942691435");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_1 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@Sound_Manager|1434414649");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_3 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@Sound_Manager|1957300592");
    l0:SetConnections({
    });
end;

function export:Start_Bunker_Trap_Door_Open()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_5();
    l0 = self.box_SoundModifier_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@Sound_Manager|504718341", "504718341", "Sound_Manager", "Start_Bunker_Trap_Door_Open", "box_SoundModifier_v2_5.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:Start_Garage_Door()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_1();
    l0 = self.box_SoundModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@Sound_Manager|514914293", "514914293", "Sound_Manager", "Start_Garage_Door", "box_SoundModifier_v2_1.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:Start_Metal_Gate_Sliding()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_3();
    l0 = self.box_SoundModifier_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@Sound_Manager|1105148139", "1105148139", "Sound_Manager", "Start_Metal_Gate_Sliding", "box_SoundModifier_v2_3.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:Stop_Garage_Door()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_2();
    l0 = self.box_SoundModifier_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@Sound_Manager|112175166", "112175166", "Sound_Manager", "Stop_Garage_Door", "box_SoundModifier_v2_2.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:Stop_Metal_Gate_Sliding()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_4();
    l0 = self.box_SoundModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D201.domino|@Sound_Manager|1315927736", "1315927736", "Sound_Manager", "Stop_Metal_Gate_Sliding", "box_SoundModifier_v2_4.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:OnEnter_box_SoundModifier_v2_5()
    local params;
    params = {
        -- Pawns,
        [0] = "2101933959412721251",
        -- SoundId,
        [1] = "3381977507",
        -- SoundType,
        [2] = 27,
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
        [0] = "2101910511093310866",
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
        [0] = "2101906925743511792",
        -- SoundId,
        [1] = "1982792409",
        -- SoundType,
        [2] = 27,
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
        [0] = "2101906925743511792",
        -- SoundId,
        [1] = "3607026267",
        -- SoundType,
        [2] = 27,
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
        [0] = "2101910511093310866",
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
		<ControlIn Name="Start_Bunker_Trap_Door_Open" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start_Garage_Door" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start_Metal_Gate_Sliding" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop_Garage_Door" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop_Metal_Gate_Sliding" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
