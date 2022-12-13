LUACV  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_210/mis_210_b40_b.domino
-- User graph: PlaceAndStartOldParticles
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
        cboxRes:RegisterBox("Domino/System/ParticleSystemScaleModifier.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B40_b.PlaceAndStartOldParticles.debug.lua")] = {
        stateless = false,
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
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    self._name = "PlaceAndStartOldParticles";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles";
    self.Out = DummyFunction;
    self.box_PositionModifier_v2_4 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|122181296");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_4_Done,
    });
    self.box_PositionModifier_v2_2 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|1617218288");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_2_StartOut,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ParticleSystem_v3_13();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|1059636893", "1059636893", "PlaceAndStartOldParticles", "In", "box_ParticleSystem_v3_13.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystemScaleModifier_1_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_6();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|781437353", "781437353", "PlaceAndStartOldParticles", "box_ParticleSystemScaleModifier_1.Out", "box_TriggerState_v2_6.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_4_Done()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystemScaleModifier_15();
    l0 = self.box_PositionModifier_v2_4;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|1255501082", "1255501082", "PlaceAndStartOldParticles", "box_PositionModifier_v2_4.Done", "box_ParticleSystemScaleModifier_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystemScaleModifier_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_8();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|755435792", "755435792", "PlaceAndStartOldParticles", "box_ParticleSystemScaleModifier_15.Out", "box_TriggerState_v2_8.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_13_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystemScaleModifier_1();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|721446779", "721446779", "PlaceAndStartOldParticles", "box_ParticleSystem_v3_13.Started", "box_ParticleSystemScaleModifier_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_5_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_4();
    l0 = self.box_PositionModifier_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|425498636", "425498636", "PlaceAndStartOldParticles", "box_ParticleSystem_v3_5.Started", "box_PositionModifier_v2_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_3_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_2();
    l0 = self.box_PositionModifier_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|1306436070", "1306436070", "PlaceAndStartOldParticles", "box_ParticleSystem_v3_3.Started", "box_PositionModifier_v2_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_TriggerState_v2_6_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_3();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|1636166337", "1636166337", "PlaceAndStartOldParticles", "box_TriggerState_v2_6.Enabled", "box_ParticleSystem_v3_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_2_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystemScaleModifier_14();
    l0 = self.box_PositionModifier_v2_2;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|1291322160", "1291322160", "PlaceAndStartOldParticles", "box_PositionModifier_v2_2.StartOut", "box_ParticleSystemScaleModifier_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_7_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_5();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|791424983", "791424983", "PlaceAndStartOldParticles", "box_TriggerState_v2_7.Enabled", "box_ParticleSystem_v3_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_8_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|830933748", "830933748", "PlaceAndStartOldParticles", "box_TriggerState_v2_8.Enabled", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_ParticleSystemScaleModifier_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_7();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|149255876", "149255876", "PlaceAndStartOldParticles", "box_ParticleSystemScaleModifier_14.Out", "box_TriggerState_v2_7.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_ParticleSystemScaleModifier_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystemScaleModifier_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|90780901");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ParticleSystemScaleModifier_1_Out,
    });
    params = {
        -- Scale,
        [0] = 4,
        -- ScaleTime,
        [1] = 1,
        -- TargetEntities,
        [2] = "2109481723138957284",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_4()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2109390033659133944",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109483622619701145",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystemScaleModifier_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystemScaleModifier_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|243594781");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ParticleSystemScaleModifier_15_Out,
    });
    params = {
        -- Scale,
        [0] = 4,
        -- ScaleTime,
        [1] = 1,
        -- TargetEntities,
        [2] = "2109483622619701145",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|378595270");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_13_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109481723138957284",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|947153282");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_5_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483622619701145",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|1373933565");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_3_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483632641990555",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|1474884794");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_6_Enabled,
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

function export:OnEnter_box_PositionModifier_v2_2()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2109398652255478357",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109483632641990555",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|1763278853");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_7_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109510873482543343",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|1948602214");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_8_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109511167417270514",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystemScaleModifier_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystemScaleModifier_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_b.domino|@PlaceAndStartOldParticles|2065914987");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ParticleSystemScaleModifier_14_Out,
    });
    params = {
        -- Scale,
        [0] = 4,
        -- ScaleTime,
        [1] = 1,
        -- TargetEntities,
        [2] = "2109483632641990555",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
