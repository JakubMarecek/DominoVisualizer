LUAC�F  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_210/mis_210_b40_a.domino
-- User graph: Gas1Bypass
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystemScaleModifier.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B40_a.Gas1Bypass.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")] = {
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Scale",
                type = "float",
            },
            [1] = {
                name = "ScaleTime",
                type = "float",
            },
            [2] = {
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
            },
        },
        controlInCount = 4,
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Gas1Bypass";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass";
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|1202893037");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|2108875119");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ParticleSystem_v3_8();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|1770640154", "1770640154", "Gas1Bypass", "In", "box_ParticleSystem_v3_8.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_8_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|639037875", "639037875", "Gas1Bypass", "box_ParticleSystem_v3_8.Started", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_3();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|1229161929", "1229161929", "Gas1Bypass", "box_OutputOrder_v2_5.Out", "box_TriggerState_v2_3.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_2();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|1384781954", "1384781954", "Gas1Bypass", "box_OutputOrder_v2_5.Out", "box_ParticleSystem_v3_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_Delay_v5_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|552813843", "552813843", "Gas1Bypass", "box_Delay_v5_6.TimeElapsed", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_2_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|1183214368", "1183214368", "Gas1Bypass", "box_ParticleSystem_v3_2.Started", "box_Delay_v5_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystemScaleModifier_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_1();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|1928513181", "1928513181", "Gas1Bypass", "box_ParticleSystemScaleModifier_9.Out", "box_TriggerState_v2_1.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_1_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_4();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|6850487", "6850487", "Gas1Bypass", "box_TriggerState_v2_1.Enabled", "box_TriggerState_v2_4.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystemScaleModifier_9();
    l0 = self.box_Delay_v5_7;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|2107565009", "2107565009", "Gas1Bypass", "box_Delay_v5_7.TimeElapsed", "box_ParticleSystemScaleModifier_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_TriggerState_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|488551107");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109388366718968385",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|842843518");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_8_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109481638548234210",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|898811246");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|1232815408");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_2_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109481723138957284",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystemScaleModifier_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystemScaleModifier_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|1375884713");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ParticleSystemScaleModifier_9_Out,
    });
    params = {
        -- Scale,
        [0] = 4,
        -- ScaleTime,
        [1] = 6,
        -- TargetEntities,
        [2] = "2109481723138957284",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|1533399104");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109388366718968385",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@Gas1Bypass|1533828766");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_1_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109509673045475562",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
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
