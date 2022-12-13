LUAC0�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/h4/h4_outpost_01_quest.domino
-- User graph: TargetListener
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Target" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1891742298.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.TargetListener.debug.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Target",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/OnceOnly_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
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
                dynamicType = 1,
                delayed = false,
            },
            [1] = {
                name = "ResetOut",
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "TargetListener";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener";
    self.Out = DummyFunction;
    self.eShooter = nil;
    self.eBreakTarget = nil;
    self.bCoop = false;
    self.eHost = nil;
    self.eClient = nil;
    self.ePlayerAR = nil;
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|4956868");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_OnceOnly_v3_9 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|570439399");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_9_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_13 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1080544317");
    l0:SetConnections({
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1496237237");
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
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1735725381");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_CoopActivePlayers_12 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|2004065448");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_12_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_12_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_12_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_12_TwoPlayers,
    });
    self.box_StaticBreakableListener_1 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|2114113237");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_1_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_1_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_1_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_1_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_1_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_1_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_1_OnStateChanged,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1725060879", "1725060879", "TargetListener", "Disable", "box_Simple_Node_16.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    local l0;
    l0 = self.box_CoopActivePlayers_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1510874897", "1510874897", "TargetListener", "Enable", "box_CoopActivePlayers_12.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_1();
    l0 = self.box_StaticBreakableListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1829041105", "1829041105", "TargetListener", "box_Simple_Node_16.Out", "box_StaticBreakableListener_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_CoopActivePlayers_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|190767322", "190767322", "TargetListener", "box_Simple_Node_16.Out", "box_CoopActivePlayers_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_6();
    l0 = self.box_MultipleOR_17;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1165203812", "1165203812", "TargetListener", "box_MultipleOR_17.Out", "box_SetBoolean_v2_6.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_10_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1405731087", "1405731087", "TargetListener", "box_Compare_Entity_10.Equal", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_5_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_3();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1580002917", "1580002917", "TargetListener", "box_Compare_Boolean_5.A_is_False", "box_Compare_Entity_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_5_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|102299899", "102299899", "TargetListener", "box_Compare_Boolean_5.A_is_True", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_9_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_2();
    l0 = self.box_OnceOnly_v3_9;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|553390521", "553390521", "TargetListener", "box_OnceOnly_v3_9.Out", "box_StaticBreakableBreaker_2.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_8_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|2096631128", "2096631128", "TargetListener", "box_Compare_Entity_8.Equal", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_18_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1268393048", "1268393048", "TargetListener", "box_SetEntity_v2_18.Out", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_6_Out()
    self:OnExit_box_SetBoolean_v2_6_Out();
end;

function export:f_box_Simple_Node_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_6();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1060104959", "1060104959", "TargetListener", "box_Simple_Node_19.Out", "box_SetBoolean_v2_6.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_3_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|106929005", "106929005", "TargetListener", "box_Compare_Entity_3.Equal", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1825466607", "1825466607", "TargetListener", "box_OutputOrder_v2_4.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|470559641", "470559641", "TargetListener", "box_OutputOrder_v2_4.Out", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableBreaker_2_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1282809742", "1282809742", "TargetListener", "box_StaticBreakableBreaker_2.Destroyed", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_1();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_StaticBreakableListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|70310994", "70310994", "TargetListener", "box_MultipleOR_7.Out", "box_StaticBreakableListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_11_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_11;
    l1 = self.box_OnceOnly_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1808268023", "1808268023", "TargetListener", "box_MultipleOR_11.Out", "box_OnceOnly_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_8();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1439962327", "1439962327", "TargetListener", "box_OutputOrder_v2_14.Out", "box_Compare_Entity_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_10();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1097570230", "1097570230", "TargetListener", "box_OutputOrder_v2_14.Out", "box_Compare_Entity_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|737970759", "737970759", "TargetListener", "box_OutputOrder_v2_15.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_13();
    l0 = self.box_SoundModifier_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|358235136", "358235136", "TargetListener", "box_OutputOrder_v2_15.Out", "box_SoundModifier_v2_13.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_12_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_12_OnePlayer();
    l0 = self.box_CoopActivePlayers_12;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1712278942", "1712278942", "TargetListener", "box_CoopActivePlayers_12.OnePlayer", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_12_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_12_PlayerAdded();
    params = self:OnEnter_box_SetEntity_v2_18();
    l0 = self.box_CoopActivePlayers_12;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1596425209", "1596425209", "TargetListener", "box_CoopActivePlayers_12.PlayerAdded", "box_SetEntity_v2_18.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_12_PlayerRemoved()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_12_PlayerRemoved();
    params = self:OnEnter_box_Simple_Node_19();
    l0 = self.box_CoopActivePlayers_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|18272334", "18272334", "TargetListener", "box_CoopActivePlayers_12.PlayerRemoved", "box_Simple_Node_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_12_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_12_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_CoopActivePlayers_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|625918343", "625918343", "TargetListener", "box_CoopActivePlayers_12.TwoPlayers", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_1_OnBreak()
    self:OnExit_box_StaticBreakableListener_1_OnBreak();
end;

function export:f_box_StaticBreakableListener_1_OnBreakAll()
    self:OnExit_box_StaticBreakableListener_1_OnBreakAll();
end;

function export:f_box_StaticBreakableListener_1_OnDamage()
    local params, l0, l1;
    self:OnExit_box_StaticBreakableListener_1_OnDamage();
    params = self:OnEnter_box_Compare_Boolean_5();
    l0 = self.box_StaticBreakableListener_1;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1140632334", "1140632334", "TargetListener", "box_StaticBreakableListener_1.OnDamage", "box_Compare_Boolean_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_1_OnHit()
    self:OnExit_box_StaticBreakableListener_1_OnHit();
end;

function export:f_box_StaticBreakableListener_1_OnStateChanged()
    self:OnExit_box_StaticBreakableListener_1_OnStateChanged();
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|@DisableListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|154268806");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_10_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eShooter,
        -- Entity2,
        [1] = self.eClient,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|482561455");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_5_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_5_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|674513575");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_8_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eShooter,
        -- Entity2,
        [1] = self.eHost,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|825373554");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_18_Out,
    });
    params = {
        -- Entity,
        [0] = self.ePlayerAR,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|857055388");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|934584671");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_19_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_13()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1891742298",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1117374576");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_3_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eShooter,
        -- Entity2,
        [1] = self.eHost,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1161302674");
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

function export:OnEnter_box_StaticBreakableBreaker_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1441490563");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_2_Destroyed,
    });
    params = {
        -- entity,
        [0] = self.eBreakTarget,
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1791334218");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@TargetListener|1998564054");
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

function export:OnEnter_box_StaticBreakableListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = self.Target,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eClient = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bCoop = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_12_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_12;
    self.eHost = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_12_PlayerAdded()
    local l0;
    l0 = self.box_CoopActivePlayers_12;
    self.ePlayerAR = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_12_PlayerRemoved()
    local l0;
    l0 = self.box_CoopActivePlayers_12;
    self.ePlayerAR = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_12_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_12;
    self.eHost = l0:GetDataOutValue(0);
    self.eClient = l0:GetDataOutValue(1);
end;

function export:OnExit_box_StaticBreakableListener_1_OnBreak()
    local l0;
    l0 = self.box_StaticBreakableListener_1;
    self.eShooter = l0:GetDataOutValue(0);
    self.eBreakTarget = l0:GetDataOutValue(2);
end;

function export:OnExit_box_StaticBreakableListener_1_OnBreakAll()
    local l0;
    l0 = self.box_StaticBreakableListener_1;
    self.eShooter = l0:GetDataOutValue(0);
    self.eBreakTarget = l0:GetDataOutValue(2);
end;

function export:OnExit_box_StaticBreakableListener_1_OnDamage()
    local l0;
    l0 = self.box_StaticBreakableListener_1;
    self.eShooter = l0:GetDataOutValue(0);
    self.eBreakTarget = l0:GetDataOutValue(2);
end;

function export:OnExit_box_StaticBreakableListener_1_OnHit()
    local l0;
    l0 = self.box_StaticBreakableListener_1;
    self.eShooter = l0:GetDataOutValue(0);
    self.eBreakTarget = l0:GetDataOutValue(2);
end;

function export:OnExit_box_StaticBreakableListener_1_OnStateChanged()
    local l0;
    l0 = self.box_StaticBreakableListener_1;
    self.eShooter = l0:GetDataOutValue(0);
    self.eBreakTarget = l0:GetDataOutValue(2);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Target" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
