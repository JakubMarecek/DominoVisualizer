LUAC�$  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/treasurehunt/th_e5_poi_02_watermill.domino
-- User graph: WaterFallFX
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
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.TH_E5_POI_02_WaterMill = nil;
    Globals.TH_E5_POI_02_WaterMill = {
        ePlayer = nil,
        bCelebrationStarted = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E5_POI_02_WaterMill.WaterFallFX.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Stopped",
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Started",
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
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    self._name = "WaterFallFX";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E5_POI_02_WaterMill.domino|@WaterFallFX";
    self.Started = DummyFunction;
    self.Stopped = DummyFunction;
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_ParticleSystem_v3_1();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E5_POI_02_WaterMill.domino|@WaterFallFX|547374082", "547374082", "WaterFallFX", "Start", "box_ParticleSystem_v3_1.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:Stop()
    local params, l0;
    params = self:OnEnter_box_ParticleSystem_v3_1();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E5_POI_02_WaterMill.domino|@WaterFallFX|1259443841", "1259443841", "WaterFallFX", "Stop", "box_ParticleSystem_v3_1.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_3_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E5_POI_02_WaterMill.domino|@WaterFallFX|1205960099", "1205960099", "WaterFallFX", "box_ParticleSystem_v3_3.Started", "Started", clone:GetLuaBox(), self);
    self:Started();
end;

function export:f_box_ParticleSystem_v3_3_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E5_POI_02_WaterMill.domino|@WaterFallFX|2044440286", "2044440286", "WaterFallFX", "box_ParticleSystem_v3_3.Stopped", "Stopped", clone:GetLuaBox(), self);
    self:Stopped();
end;

function export:f_box_ParticleSystem_v3_1_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_2();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E5_POI_02_WaterMill.domino|@WaterFallFX|2100792536", "2100792536", "WaterFallFX", "box_ParticleSystem_v3_1.Started", "box_ParticleSystem_v3_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_1_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_2();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E5_POI_02_WaterMill.domino|@WaterFallFX|1960032129", "1960032129", "WaterFallFX", "box_ParticleSystem_v3_1.Stopped", "box_ParticleSystem_v3_2.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_2_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_3();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E5_POI_02_WaterMill.domino|@WaterFallFX|765324162", "765324162", "WaterFallFX", "box_ParticleSystem_v3_2.Started", "box_ParticleSystem_v3_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_2_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_3();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E5_POI_02_WaterMill.domino|@WaterFallFX|378497606", "378497606", "WaterFallFX", "box_ParticleSystem_v3_2.Stopped", "box_ParticleSystem_v3_3.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_ParticleSystem_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E5_POI_02_WaterMill.domino|@WaterFallFX|1248565859");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_3_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_3_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103485548617281464",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E5_POI_02_WaterMill.domino|@WaterFallFX|1320664989");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_1_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_1_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103485541291929524",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E5_POI_02_WaterMill.domino|@WaterFallFX|1464201345");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_2_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_2_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103485565421760442",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Started()
    
end;
function export:Stopped()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Started" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Stopped" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
