LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_015/intro_015_b60.domino
-- User graph: WATERLEVEL_MODIFIER
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
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1354069374.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4025703243.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3656420151.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2401689683.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_015/INTRO_015_B60.WATERLEVEL_MODIFIER.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bind",
            },
            [1] = {
                name = "UnBind",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
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
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SimpleNode.lua")] = {
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
    self._name = "WATERLEVEL_MODIFIER";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER";
    self.Out = DummyFunction;
    self.box_Bind_v4_9 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|17384022");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_9_Bound,
    });
    self.box_SoundModifier_v2_12 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|186012725");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_20 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|385133591");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_7 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|424872299");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_7_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_7_StartOut,
    });
    self.box_SoundModifier_v2_15 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|547679702");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_19 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1009541688");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_13 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1301939662");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_1 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1313960167");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_18 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1440598818");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_14 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1718654716");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_16 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1740950189");
    l0:SetConnections({
    });
    self.box_Bind_v4_3 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1773255880");
    l0:SetConnections({
        -- UnBound,
        [1] = self.f_box_Bind_v4_3_UnBound,
    });
    self.box_SoundModifier_v2_11 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1932985634");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Bind_v4_9();
    l0 = self.box_Bind_v4_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|440755268", "440755268", "WATERLEVEL_MODIFIER", "In", "box_Bind_v4_9.Bind", self, l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1636631755", "1636631755", "WATERLEVEL_MODIFIER", "box_Simple_Node_23.Out", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|2143854128", "2143854128", "WATERLEVEL_MODIFIER", "box_Simple_Node_22.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_9_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_7();
    l0 = self.box_Bind_v4_9;
    l1 = self.box_PositionModifier_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|568281096", "568281096", "WATERLEVEL_MODIFIER", "box_Bind_v4_9.Bound", "box_PositionModifier_v2_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_7_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_PositionModifier_v2_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1801700514", "1801700514", "WATERLEVEL_MODIFIER", "box_PositionModifier_v2_7.Done", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_7_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_6();
    l0 = self.box_PositionModifier_v2_7;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|767542681", "767542681", "WATERLEVEL_MODIFIER", "box_PositionModifier_v2_7.StartOut", "box_ParticleSystem_v3_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_6_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1494905960", "1494905960", "WATERLEVEL_MODIFIER", "box_ParticleSystem_v3_6.Started", "box_Simple_Node_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_3();
    l0 = self.box_Bind_v4_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|960677563", "960677563", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_4.Out", "box_Bind_v4_3.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_10();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1384155787", "1384155787", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_4.Out", "box_ParticleSystem_v3_10.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_10_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1817133928", "1817133928", "WATERLEVEL_MODIFIER", "box_ParticleSystem_v3_10.Stopped", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_18();
    l0 = self.box_SoundModifier_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1103063057", "1103063057", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_18.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_19();
    l0 = self.box_SoundModifier_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1158820495", "1158820495", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_19.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_20();
    l0 = self.box_SoundModifier_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1389029126", "1389029126", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_20.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_16();
    l0 = self.box_SoundModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|28490317", "28490317", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_16.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_15();
    l0 = self.box_SoundModifier_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|777913559", "777913559", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_17.Out", "box_SoundModifier_v2_15.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Bind_v4_3_UnBound()
    local l0;
    l0 = self.box_Bind_v4_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|480151382", "480151382", "WATERLEVEL_MODIFIER", "box_Bind_v4_3.UnBound", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_1();
    l0 = self.box_SoundModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1540523396", "1540523396", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_5.Out", "box_SoundModifier_v2_1.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_2();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|515188734", "515188734", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_5.Out", "box_SoundShapeModifier_2.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_11();
    l0 = self.box_SoundModifier_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1366482596", "1366482596", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_5.Out", "box_SoundModifier_v2_11.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_12();
    l0 = self.box_SoundModifier_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|347237487", "347237487", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_5.Out", "box_SoundModifier_v2_12.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_13();
    l0 = self.box_SoundModifier_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|689401939", "689401939", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_5.Out", "box_SoundModifier_v2_13.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_14();
    l0 = self.box_SoundModifier_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1209096180", "1209096180", "WATERLEVEL_MODIFIER", "box_OutputOrder_v2_5.Out", "box_SoundModifier_v2_14.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|@Start_Water_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|@Stop_Water_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_9()
    local params;
    params = {
        -- EntityA,
        [1] = "2102793696062749921",
        -- EntityB,
        [2] = "2101853126689569425",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_12()
    local params;
    params = {
        -- Pawns,
        [0] = "2104257298135293923",
        -- SoundId,
        [1] = "4025703243",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_20()
    local params;
    params = {
        -- Pawns,
        [0] = "2104257298135293923",
        -- SoundId,
        [1] = "3656420151",
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|420047845");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2104257160218189791",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_7()
    local params;
    params = {
        -- blendTime,
        [1] = 15,
        -- endTarget,
        [4] = "2102793718074457319",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102793696062749921",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|470449234");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_6_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102793847235951851",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_15()
    local params;
    params = {
        -- Pawns,
        [0] = "2104257304506441703",
        -- SoundId,
        [1] = "3656420151",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_19()
    local params;
    params = {
        -- Pawns,
        [0] = "2104257283895631841",
        -- SoundId,
        [1] = "3656420151",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_13()
    local params;
    params = {
        -- Pawns,
        [0] = "2104257302948257765",
        -- SoundId,
        [1] = "4025703243",
        -- SoundType,
        [2] = 11,
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
        [0] = "2101521229583286667",
        -- SoundId,
        [1] = "2401689683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1398442590");
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

function export:OnEnter_box_SoundModifier_v2_18()
    local params;
    params = {
        -- Pawns,
        [0] = "2101521229583286667",
        -- SoundId,
        [1] = "1354069374",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1476941028");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_10_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2102793847235951851",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|1552793037");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
                [3] = self.f_box_OutputOrder_v2_17_Out_3,
                [4] = self.f_box_OutputOrder_v2_17_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_14()
    local params;
    params = {
        -- Pawns,
        [0] = "2104257304506441703",
        -- SoundId,
        [1] = "4025703243",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_16()
    local params;
    params = {
        -- Pawns,
        [0] = "2104257302948257765",
        -- SoundId,
        [1] = "3656420151",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_3()
    local params;
    params = {
        -- EntityA,
        [1] = "2097289251600209628",
        -- EntityB,
        [2] = "2101853126689569425",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_11()
    local params;
    params = {
        -- Pawns,
        [0] = "2104257283895631841",
        -- SoundId,
        [1] = "4025703243",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_015\\INTRO_015_B60.domino|@WATERLEVEL_MODIFIER|2073993916");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
                [4] = self.f_box_OutputOrder_v2_5_Out_4,
                [5] = self.f_box_OutputOrder_v2_5_Out_5,
            },
            count = 6,
        },
    });
    params = {
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
