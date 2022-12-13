LUAC�{  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c7/swamp_c7_ctp_010_share.domino
-- User graph: Swamp_C7_EliteReinforcement_Expert
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="e_SpawnEliteGroup" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Main.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Swamp_C7_CTP_010_Share = nil;
    Globals.Swamp_C7_CTP_010_Share = {
        b_ReinforcementElitSpawned = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_EliteReinforcement_Expert.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "NextWave",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "e_SpawnEliteGroup",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "CleanupOnly",
            },
            [2] = {
                name = "In",
            },
            [3] = {
                name = "UpdateAllowedRemainingNPCForNextCheck",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "AllowedRemainingNPCUpdated",
                delayed = false,
            },
            [1] = {
                name = "Cancelled",
                delayed = false,
            },
            [2] = {
                name = "NextWave",
                delayed = false,
            },
            [3] = {
                name = "ToStartFailSafeSetup",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AllowedRemainingNPC",
                type = "int",
            },
            [1] = {
                name = "EnemyGroup",
                type = "group",
            },
            [2] = {
                name = "HardDelayBeforeNextWave",
                type = "float",
            },
            [3] = {
                name = "MaxWaveDuration",
                type = "float",
            },
            [4] = {
                name = "MinWaveDuration",
                type = "float",
            },
            [5] = {
                name = "NextWaveWaitUntilCombat",
                type = "bool",
            },
            [6] = {
                name = "opt_Spawner_2",
                type = "entity",
            },
            [7] = {
                name = "opt_Spawner_3",
                type = "entity",
            },
            [8] = {
                name = "opt_Spawner_4",
                type = "entity",
            },
            [9] = {
                name = "opt_Spawner_5",
                type = "entity",
            },
            [10] = {
                name = "Spawner_1",
                type = "entity",
            },
        },
        dataInCount = 11,
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
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Swamp_C7_EliteReinforcement_Expert";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert";
    self.Cancelled = DummyFunction;
    self.NextWave = DummyFunction;
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|130636230");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|171971240");
    l0:SetConnections({
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_5_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_5_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_5_ToStartFailSafeSetup,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|827275908");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1432794422");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1482645560");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_GroupSizeListener_v6_8 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1902166849");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_8_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_8_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_8_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_8_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_8_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_8_MemberSpawned,
    });
    self.box_IndexList_v2_1 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|2080976846");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_1_Output_0,
                [1] = self.f_box_IndexList_v2_1_Output_1,
                [2] = self.f_box_IndexList_v2_1_Output_2,
            },
            count = 3,
        },
    });
end;

function export:Cancel()
    local l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|740681222", "740681222", "Swamp_C7_EliteReinforcement_Expert", "Cancel", "box_MultipleOR_10.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_IndexList_v2_1();
    l0 = self.box_IndexList_v2_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1206845879", "1206845879", "Swamp_C7_EliteReinforcement_Expert", "In", "box_IndexList_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|684529565", "684529565", "Swamp_C7_EliteReinforcement_Expert", "box_MultipleOR_2.Out", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_5_Cancelled()
    local l0;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|2103040587", "2103040587", "Swamp_C7_EliteReinforcement_Expert", "box_Brick_Exp_Common_WaveSpawner_5.Cancelled", "Cancelled", l0:GetLuaBox(), self);
    self:Cancelled();
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_5_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_6();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_5;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1761581839", "1761581839", "Swamp_C7_EliteReinforcement_Expert", "box_Brick_Exp_Common_WaveSpawner_5.NextWave", "box_SetBoolean_v2_6.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_5_ToStartFailSafeSetup()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1714794020", "1714794020", "Swamp_C7_EliteReinforcement_Expert", "box_Brick_Exp_Common_WaveSpawner_5.ToStartFailSafeSetup", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|2117636941", "2117636941", "Swamp_C7_EliteReinforcement_Expert", "box_OutputOrder_v2_11.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1877369907", "1877369907", "Swamp_C7_EliteReinforcement_Expert", "box_OutputOrder_v2_11.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_9_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|957893330", "957893330", "Swamp_C7_EliteReinforcement_Expert", "box_Compare_Integers_9.A_ge_B", "NextWave", clone:GetLuaBox(), self);
    self:NextWave();
end;

function export:f_box_Compare_Integers_9_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1338318194", "1338318194", "Swamp_C7_EliteReinforcement_Expert", "box_Compare_Integers_9.A_lt_B", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_4();
    l0 = self.box_MultipleOR_3;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1032349915", "1032349915", "Swamp_C7_EliteReinforcement_Expert", "box_MultipleOR_3.Out", "box_Compare_Boolean_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_4_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_5();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1649450936", "1649450936", "Swamp_C7_EliteReinforcement_Expert", "box_Compare_Boolean_4.A_is_False", "box_Brick_Exp_Common_WaveSpawner_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_4_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1016041542", "1016041542", "Swamp_C7_EliteReinforcement_Expert", "box_Compare_Boolean_4.A_is_True", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_7_Out()
    local l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|49366950", "49366950", "Swamp_C7_EliteReinforcement_Expert", "box_MultipleOR_7.Out", "NextWave", l0:GetLuaBox(), self);
    self:NextWave();
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_5();
    l0 = self.box_MultipleOR_10;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1059162713", "1059162713", "Swamp_C7_EliteReinforcement_Expert", "box_MultipleOR_10.Out", "box_Brick_Exp_Common_WaveSpawner_5.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_9();
    l0 = self.box_GroupSizeListener_v6_8;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|812446495", "812446495", "Swamp_C7_EliteReinforcement_Expert", "box_GroupSizeListener_v6_8.Enabled", "box_Compare_Integers_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_6_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|246304353", "246304353", "Swamp_C7_EliteReinforcement_Expert", "box_SetBoolean_v2_6.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_1_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1466224026", "1466224026", "Swamp_C7_EliteReinforcement_Expert", "box_IndexList_v2_1.Output", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_1_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|901164158", "901164158", "Swamp_C7_EliteReinforcement_Expert", "box_IndexList_v2_1.Output", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_1_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_8();
    l0 = self.box_IndexList_v2_1;
    l1 = self.box_GroupSizeListener_v6_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|2022504294", "2022504294", "Swamp_C7_EliteReinforcement_Expert", "box_IndexList_v2_1.Output", "box_GroupSizeListener_v6_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_5()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#A21E7AC0",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = self.e_SpawnEliteGroup,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|321525185");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|490655167");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_9_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_9_A_lt_B,
    });
    l0 = self.box_GroupSizeListener_v6_8;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|911151788");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_4_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_4_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.Swamp_C7_CTP_010_Share.b_ReinforcementElitSpawned,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#755D9E49",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_EliteReinforcement_Expert|1959995333");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_1()
    local params;
    params = {
        -- Index,
        [0] = Globals.Swamp_C7_CTP_010_Main.i_Difficulty,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.Swamp_C7_CTP_010_Share.b_ReinforcementElitSpawned = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Cancelled()
    
end;
function export:NextWave()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Cancel" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Cancelled" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="NextWave" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="e_SpawnEliteGroup" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
