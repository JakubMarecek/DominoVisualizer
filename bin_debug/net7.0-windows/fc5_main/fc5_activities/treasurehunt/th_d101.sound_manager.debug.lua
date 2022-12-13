LUACV)  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/treasurehunt/th_d101.domino
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
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[582650139.bnk]], "CSoundResource");
        cboxRes:LoadResource([[798459663.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.TH_D101 = nil;
    Globals.TH_D101 = {
        gPlayer = nil,
        bWaterEffectOFF = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_D101.Sound_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Drain_Start",
            },
            [1] = {
                name = "Drain_Stop",
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
    metadataTable[GetPathID("Domino/System/SoundShapeModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Paused",
                delayed = false,
            },
            [1] = {
                name = "Resumed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "FadeTime",
                type = "float",
            },
            [1] = {
                name = "SoundShapeId",
                type = "entity",
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
    self._name = "Sound_Manager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D101.domino|@Sound_Manager";
    self.box_SoundModifier_v2_4 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D101.domino|@Sound_Manager|278887777");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_1 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D101.domino|@Sound_Manager|919564291");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_1_Finished,
        -- Started,
        [1] = self.f_box_SoundModifier_v2_1_Started,
    });
end;

function export:Drain_Start()
    local params, l0;
    params = self:OnEnter_box_SoundShapeModifier_3();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D101.domino|@Sound_Manager|1075345372", "1075345372", "Sound_Manager", "Drain_Start", "box_SoundShapeModifier_3.Resume", self, l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:Drain_Stop()
    local params, l0;
    params = self:OnEnter_box_SoundShapeModifier_2();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D101.domino|@Sound_Manager|255424368", "255424368", "Sound_Manager", "Drain_Stop", "box_SoundShapeModifier_2.Resume", self, l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundShapeModifier_2_Resumed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_3();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D101.domino|@Sound_Manager|1191078038", "1191078038", "Sound_Manager", "box_SoundShapeModifier_2.Resumed", "box_SoundShapeModifier_3.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundShapeModifier_3_Paused()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_1();
    l0 = self.box_SoundModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D101.domino|@Sound_Manager|1263927172", "1263927172", "Sound_Manager", "box_SoundShapeModifier_3.Paused", "box_SoundModifier_v2_1.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_SoundShapeModifier_3_Resumed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_1();
    l0 = self.box_SoundModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D101.domino|@Sound_Manager|1581596952", "1581596952", "Sound_Manager", "box_SoundShapeModifier_3.Resumed", "box_SoundModifier_v2_1.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_1_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_4();
    l0 = self.box_SoundModifier_v2_1;
    l1 = self.box_SoundModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D101.domino|@Sound_Manager|1721311105", "1721311105", "Sound_Manager", "box_SoundModifier_v2_1.Finished", "box_SoundModifier_v2_4.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_4();
    l0 = self.box_SoundModifier_v2_1;
    l1 = self.box_SoundModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D101.domino|@Sound_Manager|707915186", "707915186", "Sound_Manager", "box_SoundModifier_v2_1.Started", "box_SoundModifier_v2_4.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:OnEnter_box_SoundModifier_v2_4()
    local params;
    params = {
        -- Pawns,
        [0] = "2101355596065282796",
        -- SoundId,
        [1] = "582650139",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D101.domino|@Sound_Manager|639175315");
    l0:SetConnections({
        -- Resumed,
        [1] = self.f_box_SoundShapeModifier_2_Resumed,
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101632614992450258",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_D101.domino|@Sound_Manager|860462100");
    l0:SetConnections({
        -- Paused,
        [0] = self.f_box_SoundShapeModifier_3_Paused,
        -- Resumed,
        [1] = self.f_box_SoundShapeModifier_3_Resumed,
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2101633960395159644",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_1()
    local params;
    params = {
        -- Pawns,
        [0] = "2101354170775772546",
        -- SoundId,
        [1] = "798459663",
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
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Drain_Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Drain_Stop" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
