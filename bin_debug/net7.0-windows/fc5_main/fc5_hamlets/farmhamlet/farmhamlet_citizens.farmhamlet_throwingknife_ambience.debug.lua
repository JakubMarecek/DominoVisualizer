LUACYl  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_hamlets/farmhamlet/farmhamlet_citizens.domino
-- User graph: FarmHamlet_ThrowingKnife_Ambience
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
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_Citizens.FarmHamlet_ThrowingKnife_Ambience.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "Pause",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = true,
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
    metadataTable[GetPathID("Domino/System/AI/StateListener_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Alert",
            },
            [1] = {
                name = "Combat",
            },
            [2] = {
                name = "Dead",
            },
            [3] = {
                name = "Disable",
            },
            [4] = {
                name = "Idle_RelaxCautious",
            },
            [5] = {
                name = "Investigate",
            },
        },
        controlInCount = 6,
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
                name = "MemberInState",
                delayed = true,
            },
            [3] = {
                name = "StateStart",
                delayed = true,
            },
            [4] = {
                name = "StateStop",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "memberCountInState",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
                dynamicType = 1,
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
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
    self._name = "FarmHamlet_ThrowingKnife_Ambience";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience";
    self.Enabled = DummyFunction;
    self.Paused = DummyFunction;
    self.box_StateListener_v2_8 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|405498942");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_8_StateStart,
    });
    self.box_MultipleAND_v2_1 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|476585549");
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
        [0] = self.f_box_MultipleAND_v2_1_Out,
    });
    self.box_StateListener_v2_14 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|540302251");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_14_StateStart,
    });
    self.box_StateListener_v2_9 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|568042821");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_9_StateStart,
    });
    self.box_MultipleAND_v2_6 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|961241525");
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
        [0] = self.f_box_MultipleAND_v2_6_Out,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1978035421");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
    self.box_StateListener_v2_2 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|2146064737");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_2_StateStart,
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_StateListener_v2_14();
    l0 = self.box_StateListener_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1026643721", "1026643721", "FarmHamlet_ThrowingKnife_Ambience", "Enable", "box_StateListener_v2_14.Idle_RelaxCautious", self, l0:GetLuaBox());
    -- Idle_RelaxCautious
    l0:Exec(4, params);
end;

function export:Pause()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1014245528", "1014245528", "FarmHamlet_ThrowingKnife_Ambience", "Pause", "box_OutputOrder_v2_12.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundShapeModifier_13_Resumed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_6();
    l0 = self.box_MultipleAND_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|456217266", "456217266", "FarmHamlet_ThrowingKnife_Ambience", "box_SoundShapeModifier_13.Resumed", "box_MultipleAND_v2_6.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_StateListener_v2_8_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_8;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1158380386", "1158380386", "FarmHamlet_ThrowingKnife_Ambience", "box_StateListener_v2_8.StateStart", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_1_Out()
    local l0;
    l0 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|128184592", "128184592", "FarmHamlet_ThrowingKnife_Ambience", "box_MultipleAND_v2_1.Out", "Paused", l0:GetLuaBox(), self);
    self:Paused();
end;

function export:f_box_StateListener_v2_14_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_StateListener_v2_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1952416242", "1952416242", "FarmHamlet_ThrowingKnife_Ambience", "box_StateListener_v2_14.StateStart", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_9_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_9;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|541606096", "541606096", "FarmHamlet_ThrowingKnife_Ambience", "box_StateListener_v2_9.StateStart", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SoundShapeModifier_4_Paused()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_1();
    l0 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|756087001", "756087001", "FarmHamlet_ThrowingKnife_Ambience", "box_SoundShapeModifier_4.Paused", "box_MultipleAND_v2_1.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_6_Out()
    local l0;
    l0 = self.box_MultipleAND_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|2070843076", "2070843076", "FarmHamlet_ThrowingKnife_Ambience", "box_MultipleAND_v2_6.Out", "Enabled", l0:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_13();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|698073026", "698073026", "FarmHamlet_ThrowingKnife_Ambience", "box_OutputOrder_v2_3.Out", "box_SoundShapeModifier_13.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_11();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1983207442", "1983207442", "FarmHamlet_ThrowingKnife_Ambience", "box_OutputOrder_v2_3.Out", "box_SoundShapeModifier_11.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundShapeModifier_7_Paused()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_1();
    l0 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1813906513", "1813906513", "FarmHamlet_ThrowingKnife_Ambience", "box_SoundShapeModifier_7.Paused", "box_MultipleAND_v2_1.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_4();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|463661680", "463661680", "FarmHamlet_ThrowingKnife_Ambience", "box_OutputOrder_v2_10.Out", "box_SoundShapeModifier_4.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_7();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|64397100", "64397100", "FarmHamlet_ThrowingKnife_Ambience", "box_OutputOrder_v2_10.Out", "box_SoundShapeModifier_7.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|2102869459", "2102869459", "FarmHamlet_ThrowingKnife_Ambience", "box_MultipleOR_5.Out", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundShapeModifier_11_Resumed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_6();
    l0 = self.box_MultipleAND_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|882656246", "882656246", "FarmHamlet_ThrowingKnife_Ambience", "box_SoundShapeModifier_11.Resumed", "box_MultipleAND_v2_6.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_8();
    l0 = self.box_StateListener_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1705889326", "1705889326", "FarmHamlet_ThrowingKnife_Ambience", "box_OutputOrder_v2_12.Out", "box_StateListener_v2_8.Alert", clone:GetLuaBox(), l0:GetLuaBox());
    -- Alert
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_2();
    l0 = self.box_StateListener_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1750757357", "1750757357", "FarmHamlet_ThrowingKnife_Ambience", "box_OutputOrder_v2_12.Out", "box_StateListener_v2_2.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_9();
    l0 = self.box_StateListener_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1344699854", "1344699854", "FarmHamlet_ThrowingKnife_Ambience", "box_OutputOrder_v2_12.Out", "box_StateListener_v2_9.Dead", clone:GetLuaBox(), l0:GetLuaBox());
    -- Dead
    l0:Exec(2, params);
end;

function export:f_box_StateListener_v2_2_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1113766198", "1113766198", "FarmHamlet_ThrowingKnife_Ambience", "box_StateListener_v2_2.StateStart", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_SoundShapeModifier_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|104416919");
    l0:SetConnections({
        -- Resumed,
        [1] = self.f_box_SoundShapeModifier_13_Resumed,
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2100097565994288103",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_8()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#5D6F399D",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_1()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#5D6F399D",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_9()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#5D6F399D",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|607385804");
    l0:SetConnections({
        -- Paused,
        [0] = self.f_box_SoundShapeModifier_4_Paused,
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2100097565994288103",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_6()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1241333317");
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

function export:OnEnter_box_SoundShapeModifier_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1500344754");
    l0:SetConnections({
        -- Paused,
        [0] = self.f_box_SoundShapeModifier_7_Paused,
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2100098037536790694",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|1694687806");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|2078556856");
    l0:SetConnections({
        -- Resumed,
        [1] = self.f_box_SoundShapeModifier_11_Resumed,
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2100098037536790694",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_Citizens.domino|@FarmHamlet_ThrowingKnife_Ambience|2140039233");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_2()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#5D6F399D",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Enabled()
    
end;
function export:Paused()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Pause" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Enabled" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="Paused" AnchorDynType="0" IsDelayed="1" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
