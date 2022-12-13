LUAC}{  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_430/mis_430_b10.domino
-- User graph: MIS_430_CarAlarm
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="TriggererGroup" Type="Nomad|group" />
    <DataIn Name="RadiusTarget" Type="Nomad|entity{}" />
    <DataIn Name="Distance" Type="Core|float" />
    <DataIn Name="CarLight_1" Type="Nomad|entity{}" />
    <DataIn Name="CarLight_2" Type="Nomad|entity{}" />
    <DataIn Name="SoundPoint" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1934513932.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3267170733.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_430_B10 = nil;
    Globals.MIS_430_B10 = {
        b_TurbineA_Destroyed = false,
        b_TurbineB_Destroyed = false,
        b_TurbineC_Destroyed = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Ended",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CarLight_1",
                type = "entity",
            },
            [1] = {
                name = "CarLight_2",
                type = "entity",
            },
            [2] = {
                name = "Distance",
                type = "float",
            },
            [3] = {
                name = "RadiusTarget",
                type = "entity",
            },
            [4] = {
                name = "SoundPoint",
                type = "entity",
            },
            [5] = {
                name = "TriggererGroup",
                type = "group",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MultipleOR.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Input",
                dynamicType = 1,
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    self._name = "MIS_430_CarAlarm";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm";
    self.Out = DummyFunction;
    self.Ended = DummyFunction;
    self.box_ProximityRadiusListener_v3_3 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|92198306");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_3_AllFar,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_3_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_3_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_3_SomeoneNear,
    });
    self.box_Gate_v3_12 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|279535071");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_12_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_12_Out,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|312509159");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_SoundModifier_v2_11 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|583137728");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_11_Started,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|935806393");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|1091173863");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_1_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|1701431341");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_SoundModifier_v2_8 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|2061792805");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|1063563540", "1063563540", "MIS_430_CarAlarm", "In", "box_MultipleOR_7.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:Reset()
    local l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|2140958650", "2140958650", "MIS_430_CarAlarm", "Reset", "box_MultipleOR_7.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_3_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_3;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|318291316", "318291316", "MIS_430_CarAlarm", "box_ProximityRadiusListener_v3_3.AllFar", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_3_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_3;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|2102574704", "2102574704", "MIS_430_CarAlarm", "box_ProximityRadiusListener_v3_3.Disabled", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_3_Enabled()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|988732374", "988732374", "MIS_430_CarAlarm", "box_ProximityRadiusListener_v3_3.Enabled", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_ProximityRadiusListener_v3_3_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_ProximityRadiusListener_v3_3;
    l1 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|1900482208", "1900482208", "MIS_430_CarAlarm", "box_ProximityRadiusListener_v3_3.SomeoneNear", "box_Gate_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_12_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_Gate_v3_12;
    l1 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|144170194", "144170194", "MIS_430_CarAlarm", "box_Gate_v3_12.Closed", "box_Delay_v5_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_11();
    l0 = self.box_Gate_v3_12;
    l1 = self.box_SoundModifier_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|1282319173", "1282319173", "MIS_430_CarAlarm", "box_Gate_v3_12.Out", "box_SoundModifier_v2_11.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_2();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|193831531", "193831531", "MIS_430_CarAlarm", "box_OutputOrder_v2_4.Out", "box_ParticleSystem_v3_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|1324490385", "1324490385", "MIS_430_CarAlarm", "box_OutputOrder_v2_4.Out", "box_Gate_v3_12.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|982791370", "982791370", "MIS_430_CarAlarm", "box_MultipleOR_5.Out", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_11_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_SoundModifier_v2_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|1250570664", "1250570664", "MIS_430_CarAlarm", "box_SoundModifier_v2_11.Started", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_2_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_6();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|2116321894", "2116321894", "MIS_430_CarAlarm", "box_ParticleSystem_v3_2.Started", "box_ParticleSystem_v3_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_2_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_6();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|1932278539", "1932278539", "MIS_430_CarAlarm", "box_ParticleSystem_v3_2.Stopped", "box_ParticleSystem_v3_6.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_Delay_v5_10;
    l1 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|1946158495", "1946158495", "MIS_430_CarAlarm", "box_Delay_v5_10.TimeElapsed", "box_Gate_v3_12.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_2();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|1765232829", "1765232829", "MIS_430_CarAlarm", "box_OutputOrder_v2_9.Out", "box_ParticleSystem_v3_2.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_8();
    l0 = self.box_SoundModifier_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|888815058", "888815058", "MIS_430_CarAlarm", "box_OutputOrder_v2_9.Out", "box_SoundModifier_v2_8.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_1_Stopped()
    local l0;
    l0 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|2105079996", "2105079996", "MIS_430_CarAlarm", "box_Delay_v5_1.Stopped", "Ended", l0:GetLuaBox(), self);
    self:Ended();
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_3();
    l0 = self.box_Delay_v5_1;
    l1 = self.box_ProximityRadiusListener_v3_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|387483653", "387483653", "MIS_430_CarAlarm", "box_Delay_v5_1.TimeElapsed", "box_ProximityRadiusListener_v3_3.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_6_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|543957275", "543957275", "MIS_430_CarAlarm", "box_ParticleSystem_v3_6.Started", "box_Delay_v5_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_6_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|700755390", "700755390", "MIS_430_CarAlarm", "box_ParticleSystem_v3_6.Stopped", "box_Delay_v5_1.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_3();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_ProximityRadiusListener_v3_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|58638717", "58638717", "MIS_430_CarAlarm", "box_MultipleOR_7.Out", "box_ProximityRadiusListener_v3_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_ProximityRadiusListener_v3_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.TriggererGroup,
        -- id2,
        [3] = self.RadiusTarget,
        -- nearZone,
        [4] = self.Distance,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_12()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|300344251");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_11()
    local params;
    params = {
        -- Pawns,
        [0] = self.SoundPoint,
        -- SoundId,
        [1] = "1934513932",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|711029220");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_2_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_2_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.CarLight_1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|939856867");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_1()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_CarAlarm|1239916340");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_6_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_6_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.CarLight_2,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_8()
    local params;
    params = {
        -- Pawns,
        [0] = self.SoundPoint,
        -- SoundId,
        [1] = "3267170733",
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
function export:Out()
    
end;
function export:Ended()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Reset" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Ended" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="CarLight_1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="CarLight_2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Distance" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="RadiusTarget" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="SoundPoint" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="TriggererGroup" AnchorDynType="0" DataTypeID="group" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
