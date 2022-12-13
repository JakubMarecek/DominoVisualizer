LUAC0�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_210/mis_210_gasprogression_b40a_b.domino
-- User graph: GasProgression2
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
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_GasProgression_B40a_b.GasProgression2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Begin",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
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
    self._name = "GasProgression2";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2";
    self.Ended = DummyFunction;
    self.box_PositionModifier_v2_11 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|87334307");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_11_Done,
    });
    self.box_PositionModifier_v2_21 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|222081229");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_17 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|593532822");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_17_Done,
    });
    self.box_PositionModifier_v2_10 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|602290752");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_10_Done,
    });
    self.box_PositionModifier_v2_22 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|853086280");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_22_Done,
    });
    self.box_PositionModifier_v2_18 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|888620954");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_18_Done,
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1315410270");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1498028719");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1624838657");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_PositionModifier_v2_27 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1640819495");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_27_Done,
    });
    self.box_PositionModifier_v2_14 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1837254547");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_14_Done,
    });
    self.box_PositionModifier_v2_7 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1880248571");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_7_Done,
    });
    self.box_PositionModifier_v2_20 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1890853768");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_20_Done,
    });
    self.box_PositionModifier_v2_2 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1900789318");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_2_Done,
    });
    self.box_PositionModifier_v2_13 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1999119142");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_13_Done,
    });
    self.box_Delay_v5_5 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|2139911980");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_5_TimeElapsed,
    });
end;

function export:Begin()
    local params, l0;
    params = self:OnEnter_box_ParticleSystem_v3_8();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1436058824", "1436058824", "GasProgression2", "Begin", "box_ParticleSystem_v3_8.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_11_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_21();
    l0 = self.box_PositionModifier_v2_11;
    l1 = self.box_PositionModifier_v2_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|850753300", "850753300", "GasProgression2", "box_PositionModifier_v2_11.Done", "box_PositionModifier_v2_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_TriggerState_v2_1_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|82240310", "82240310", "GasProgression2", "box_TriggerState_v2_1.Enabled", "box_Delay_v5_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_TriggerState_v2_16_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_9();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|999285881", "999285881", "GasProgression2", "box_TriggerState_v2_16.Enabled", "box_TriggerState_v2_9.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_9_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|118971324", "118971324", "GasProgression2", "box_TriggerState_v2_9.Disabled", "Ended", clone:GetLuaBox(), self);
    self:Ended();
end;

function export:f_box_ParticleSystem_v3_4_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1896647693", "1896647693", "GasProgression2", "box_ParticleSystem_v3_4.Stopped", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_17_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_10();
    l0 = self.box_PositionModifier_v2_17;
    l1 = self.box_PositionModifier_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|607277960", "607277960", "GasProgression2", "box_PositionModifier_v2_17.Done", "box_PositionModifier_v2_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_10_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_18();
    l0 = self.box_PositionModifier_v2_10;
    l1 = self.box_PositionModifier_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1639865890", "1639865890", "GasProgression2", "box_PositionModifier_v2_10.Done", "box_PositionModifier_v2_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_22_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_27();
    l0 = self.box_PositionModifier_v2_22;
    l1 = self.box_PositionModifier_v2_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1876556718", "1876556718", "GasProgression2", "box_PositionModifier_v2_22.Done", "box_PositionModifier_v2_27.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_18_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_11();
    l0 = self.box_PositionModifier_v2_18;
    l1 = self.box_PositionModifier_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|940217180", "940217180", "GasProgression2", "box_PositionModifier_v2_18.Done", "box_PositionModifier_v2_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_17();
    l0 = self.box_PositionModifier_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1859684266", "1859684266", "GasProgression2", "box_OutputOrder_v2_3.Out", "box_PositionModifier_v2_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_22();
    l0 = self.box_PositionModifier_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|822881569", "822881569", "GasProgression2", "box_OutputOrder_v2_3.Out", "box_PositionModifier_v2_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_Delay_v5_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1642602256", "1642602256", "GasProgression2", "box_Delay_v5_26.TimeElapsed", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_6_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystemScaleModifier_12();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|604530980", "604530980", "GasProgression2", "box_ParticleSystem_v3_6.Started", "box_ParticleSystemScaleModifier_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_1();
    l0 = self.box_Delay_v5_15;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|166286883", "166286883", "GasProgression2", "box_Delay_v5_15.TimeElapsed", "box_TriggerState_v2_1.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystemScaleModifier_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1034090635", "1034090635", "GasProgression2", "box_ParticleSystemScaleModifier_12.Out", "box_Delay_v5_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_16();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|304224601", "304224601", "GasProgression2", "box_Delay_v5_19.TimeElapsed", "box_TriggerState_v2_16.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_8_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|570996731", "570996731", "GasProgression2", "box_ParticleSystem_v3_8.Started", "box_Delay_v5_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_27_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_20();
    l0 = self.box_PositionModifier_v2_27;
    l1 = self.box_PositionModifier_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|214459807", "214459807", "GasProgression2", "box_PositionModifier_v2_27.Done", "box_PositionModifier_v2_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_14_Done()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = self.box_PositionModifier_v2_14;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|695531157", "695531157", "GasProgression2", "box_PositionModifier_v2_14.Done", "box_ParticleSystem_v3_4.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_7_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_2();
    l0 = self.box_PositionModifier_v2_7;
    l1 = self.box_PositionModifier_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1602912496", "1602912496", "GasProgression2", "box_PositionModifier_v2_7.Done", "box_PositionModifier_v2_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_20_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_13();
    l0 = self.box_PositionModifier_v2_20;
    l1 = self.box_PositionModifier_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|11535265", "11535265", "GasProgression2", "box_PositionModifier_v2_20.Done", "box_PositionModifier_v2_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_2_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_14();
    l0 = self.box_PositionModifier_v2_2;
    l1 = self.box_PositionModifier_v2_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1490689367", "1490689367", "GasProgression2", "box_PositionModifier_v2_2.Done", "box_PositionModifier_v2_14.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_13_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_7();
    l0 = self.box_PositionModifier_v2_13;
    l1 = self.box_PositionModifier_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|404626562", "404626562", "GasProgression2", "box_PositionModifier_v2_13.Done", "box_PositionModifier_v2_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_5_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_6();
    l0 = self.box_Delay_v5_5;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1100601050", "1100601050", "GasProgression2", "box_Delay_v5_5.TimeElapsed", "box_ParticleSystem_v3_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_PositionModifier_v2_11()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2109398530301895221",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109388586087354600",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|177748443");
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
        [2] = "2109388586087354600",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_21()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2109398577231962689",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109388586087354600",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|302723504");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_16_Enabled,
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

function export:OnEnter_box_TriggerState_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|326231347");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_9_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109388586087354600",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|493924882");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_4_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483518003273619",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_17()
    local params;
    params = {
        -- blendTime,
        [1] = 5,
        -- endTarget,
        [4] = "2109398357542707727",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109388586087354600",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_10()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2109398383941657109",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109388586087354600",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_22()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108034296250899344",
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

function export:OnEnter_box_PositionModifier_v2_18()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2109398486702105121",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109388586087354600",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1043473784");
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

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1357941569");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_6_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483632641990555",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystemScaleModifier_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystemScaleModifier_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1501301223");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ParticleSystemScaleModifier_12_Out,
    });
    params = {
        -- Scale,
        [0] = 4,
        -- ScaleTime,
        [1] = 6,
        -- TargetEntities,
        [2] = "2109483632641990555",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_GasProgression_B40a_b.domino|@GasProgression2|1629866132");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_8_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483518003273619",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_27()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2109398504446108201",
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

function export:OnEnter_box_PositionModifier_v2_14()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
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

function export:OnEnter_box_PositionModifier_v2_7()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2109398585549267525",
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

function export:OnEnter_box_PositionModifier_v2_20()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2109398516787847725",
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

function export:OnEnter_box_PositionModifier_v2_2()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2109398630321365581",
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

function export:OnEnter_box_PositionModifier_v2_13()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2109398561518002745",
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

function export:OnEnter_box_Delay_v5_5()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

-- Empty out anchor definitions
function export:Ended()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Begin" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Ended" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
