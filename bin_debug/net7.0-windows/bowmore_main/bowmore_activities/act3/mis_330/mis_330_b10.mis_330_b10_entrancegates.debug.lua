LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_330/mis_330_b10.domino
-- User graph: MIS_330_B10_EntranceGates
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
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3932088769.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2928863494.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_B10_EntranceGates.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = false,
            },
            [1] = {
                name = "GateOpening",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/NoWeaponMode_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Off",
            },
            [1] = {
                name = "On",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnEnter",
                delayed = false,
            },
            [1] = {
                name = "OnLeave",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "useAnims",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
            [0] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
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
    self._name = "MIS_330_B10_EntranceGates";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates";
    self.Out = DummyFunction;
    self.Done = DummyFunction;
    self.GateOpening = DummyFunction;
    self.box_SoundModifier_v2_13 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|150968508");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_2 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|378740652");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_2_Deactivated,
    });
    self.box_Bind_v4_19 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|410854097");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_19_Bound,
    });
    self.box_PositionModifier_v2_5 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|417356458");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_5_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_5_StartOut,
    });
    self.box_PositionModifier_v2_8 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|651233021");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_8_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_8_StartOut,
    });
    self.box_NoWeaponMode_v3_18 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|891757711");
    l0:SetConnections({
    });
    self.box_Bind_v4_20 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|916265431");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_20_Bound,
    });
    self.box_PositionModifier_v2_3 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1254764645");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_3_StartOut,
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1430469498");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_RemoveEntity_v2_9 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1784613894");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_9_Out,
    });
    self.box_PositionModifier_v2_1 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1898034573");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_1_StartOut,
    });
    self.box_SoundModifier_v2_11 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1976063560");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_11_Started,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1303193248", "1303193248", "MIS_330_B10_EntranceGates", "In", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_16();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|943937753", "943937753", "MIS_330_B10_EntranceGates", "box_OutputOrder_v2_17.Out", "box_ParticleSystem_v3_16.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|334985575", "334985575", "MIS_330_B10_EntranceGates", "box_OutputOrder_v2_17.Out", "Done", clone:GetLuaBox(), self);
    self:Done();
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_5();
    l0 = self.box_PositionModifier_v2_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|2129767090", "2129767090", "MIS_330_B10_EntranceGates", "box_OutputOrder_v2_7.Out", "box_PositionModifier_v2_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_8();
    l0 = self.box_PositionModifier_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|247849001", "247849001", "MIS_330_B10_EntranceGates", "box_OutputOrder_v2_7.Out", "box_PositionModifier_v2_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_13();
    l0 = self.box_SoundModifier_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|446657076", "446657076", "MIS_330_B10_EntranceGates", "box_OutputOrder_v2_7.Out", "box_SoundModifier_v2_13.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_NavLinkModifier_2_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_10();
    l0 = self.box_NavLinkModifier_2;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|373615411", "373615411", "MIS_330_B10_EntranceGates", "box_NavLinkModifier_2.Deactivated", "box_SetBoolean_v2_10.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_19_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_1();
    l0 = self.box_Bind_v4_19;
    l1 = self.box_PositionModifier_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|319757772", "319757772", "MIS_330_B10_EntranceGates", "box_Bind_v4_19.Bound", "box_PositionModifier_v2_1.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_5_Done()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_14();
    l0 = self.box_PositionModifier_v2_5;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1358765158", "1358765158", "MIS_330_B10_EntranceGates", "box_PositionModifier_v2_5.Done", "box_ParticleSystem_v3_14.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_5_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_PositionModifier_v2_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|909015136", "909015136", "MIS_330_B10_EntranceGates", "box_PositionModifier_v2_5.StartOut", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_8_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_PositionModifier_v2_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1842271681", "1842271681", "MIS_330_B10_EntranceGates", "box_PositionModifier_v2_8.Done", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_8_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_16();
    l0 = self.box_PositionModifier_v2_8;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|254528003", "254528003", "MIS_330_B10_EntranceGates", "box_PositionModifier_v2_8.StartOut", "box_ParticleSystem_v3_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_10_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1856044985", "1856044985", "MIS_330_B10_EntranceGates", "box_SetBoolean_v2_10.Out", "box_Delay_v5_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Bind_v4_20_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_19();
    l0 = self.box_Bind_v4_20;
    l1 = self.box_Bind_v4_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1787009190", "1787009190", "MIS_330_B10_EntranceGates", "box_Bind_v4_20.Bound", "box_Bind_v4_19.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_12_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1570338524", "1570338524", "MIS_330_B10_EntranceGates", "box_SetBoolean_v2_12.Out", "GateOpening", clone:GetLuaBox(), self);
    self:GateOpening();
end;

function export:f_box_PositionModifier_v2_3_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_9();
    l0 = self.box_PositionModifier_v2_3;
    l1 = self.box_RemoveEntity_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|796816987", "796816987", "MIS_330_B10_EntranceGates", "box_PositionModifier_v2_3.StartOut", "box_RemoveEntity_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_Delay_v5_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|96563418", "96563418", "MIS_330_B10_EntranceGates", "box_Delay_v5_4.TimeElapsed", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_3();
    l0 = self.box_PositionModifier_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1566607839", "1566607839", "MIS_330_B10_EntranceGates", "box_OutputOrder_v2_6.Out", "box_PositionModifier_v2_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_20();
    l0 = self.box_Bind_v4_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1448412298", "1448412298", "MIS_330_B10_EntranceGates", "box_OutputOrder_v2_6.Out", "box_Bind_v4_20.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_11();
    l0 = self.box_SoundModifier_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1498449354", "1498449354", "MIS_330_B10_EntranceGates", "box_OutputOrder_v2_6.Out", "box_SoundModifier_v2_11.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_12();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1281318809", "1281318809", "MIS_330_B10_EntranceGates", "box_OutputOrder_v2_15.Out", "box_SetBoolean_v2_12.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_14();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|2117739159", "2117739159", "MIS_330_B10_EntranceGates", "box_OutputOrder_v2_15.Out", "box_ParticleSystem_v3_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_9_Out()
    local l0;
    l0 = self.box_RemoveEntity_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|131931027", "131931027", "MIS_330_B10_EntranceGates", "box_RemoveEntity_v2_9.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_PositionModifier_v2_1_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_2();
    l0 = self.box_PositionModifier_v2_1;
    l1 = self.box_NavLinkModifier_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|743512543", "743512543", "MIS_330_B10_EntranceGates", "box_PositionModifier_v2_1.StartOut", "box_NavLinkModifier_2.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_11_Started()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_18();
    l0 = self.box_SoundModifier_v2_11;
    l1 = self.box_NoWeaponMode_v3_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1357929434", "1357929434", "MIS_330_B10_EntranceGates", "box_SoundModifier_v2_11.Started", "box_NoWeaponMode_v3_18.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|99635305");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_13()
    local params;
    params = {
        -- Pawns,
        [0] = "2108515804501773309",
        -- SoundId,
        [1] = "3932088769",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|333655334");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 3,
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_2()
    local params;
    params = {
        -- Entity,
        [0] = "2107727925450119264",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_19()
    local params;
    params = {
        -- EntityA,
        [1] = "2109291425278473114",
        -- EntityB,
        [2] = "2109775384026300458",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_5()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2108445606396561075",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108350971521282484",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_8()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2107743377159100843",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108350971519185330",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|747704155");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|866682435");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109290887574991404",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_18()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_20()
    local params;
    params = {
        -- EntityA,
        [1] = "2109291430026425248",
        -- EntityB,
        [2] = "2109775390613454892",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|940234777");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_3()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2109677184019872588",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109291425278473114",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1572116025");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109290989244920366",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1608124456");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 3,
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b10.domino|@MIS_330_B10_EntranceGates|1632690700");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_9()
    local params;
    params = {
        -- Group,
        [0] = "#32A50412",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_1()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2107743362059606437",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109291430026425248",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_11()
    local params;
    params = {
        -- Pawns,
        [0] = "2108529680536592124",
        -- SoundId,
        [1] = "2928863494",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_330_b10.b_Derby_SasGates_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_330_b10.b_Derby_ArenaGates_Opened = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Done()
    
end;
function export:GateOpening()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Done" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="GateOpening" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
