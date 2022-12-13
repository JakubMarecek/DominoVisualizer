LUAC�?  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_enemy.domino
-- User graph: Canyon_H2_CTP_010_AiDirect_Packin30
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Canyon_H2_CTP_010_Enemy = nil;
    Globals.Canyon_H2_CTP_010_Enemy = {
        iExtractionPOIIndex = 0,
        iPackagePositionIndex = 0,
        iDifficulty = 0,
        ePackageSpawner = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AiDirect_Packin30.debug.lua")] = {
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
                name = "Requested",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Canyon_H2_CTP_010_AiDirect_Packin30";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30";
    self.Requested = DummyFunction;
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|372531667");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|1198091304");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|1214728856");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_1_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_1_ToStartFailSafeSetup,
    });
    self.box_Gate_v3_5 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|1288308950");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_5_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_5_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|1645352598");
    l0:SetConnections({
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_2_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_2_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_2_ToStartFailSafeSetup,
    });
end;

function export:Cancel()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_5();
    l0 = self.box_Gate_v3_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|837861679", "837861679", "Canyon_H2_CTP_010_AiDirect_Packin30", "Cancel", "box_Gate_v3_5.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_5();
    l0 = self.box_Gate_v3_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|200835112", "200835112", "Canyon_H2_CTP_010_AiDirect_Packin30", "Start", "box_Gate_v3_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_1();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|1947750856", "1947750856", "Canyon_H2_CTP_010_AiDirect_Packin30", "box_MultipleOR_4.Out", "box_Brick_Exp_Common_WaveSpawner_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_3_Out()
    local l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|486918872", "486918872", "Canyon_H2_CTP_010_AiDirect_Packin30", "box_MultipleOR_3.Out", "Requested", l0:GetLuaBox(), self);
    self:Requested();
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_1_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_1;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|409375422", "409375422", "Canyon_H2_CTP_010_AiDirect_Packin30", "box_Brick_Exp_Common_WaveSpawner_1.NextWave", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_1_ToStartFailSafeSetup()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_1;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|1592791915", "1592791915", "Canyon_H2_CTP_010_AiDirect_Packin30", "box_Brick_Exp_Common_WaveSpawner_1.ToStartFailSafeSetup", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Gate_v3_5_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_2();
    l0 = self.box_Gate_v3_5;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|734959094", "734959094", "Canyon_H2_CTP_010_AiDirect_Packin30", "box_Gate_v3_5.Closed", "box_Brick_Exp_Common_WaveSpawner_2.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_2();
    l0 = self.box_Gate_v3_5;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|1474888246", "1474888246", "Canyon_H2_CTP_010_AiDirect_Packin30", "box_Gate_v3_5.Out", "box_Brick_Exp_Common_WaveSpawner_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_2_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_1();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_2;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|986644047", "986644047", "Canyon_H2_CTP_010_AiDirect_Packin30", "box_Brick_Exp_Common_WaveSpawner_2.Cancelled", "box_Brick_Exp_Common_WaveSpawner_1.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_2_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|415371466", "415371466", "Canyon_H2_CTP_010_AiDirect_Packin30", "box_Brick_Exp_Common_WaveSpawner_2.NextWave", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_2_ToStartFailSafeSetup()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin30|1313891946", "1313891946", "Canyon_H2_CTP_010_AiDirect_Packin30", "box_Brick_Exp_Common_WaveSpawner_2.ToStartFailSafeSetup", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_1()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 9,
        -- EnemyGroup,
        [1] = "#CAC04D14",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 60,
        -- MinWaveDuration,
        [4] = 5,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- Spawner_1,
        [10] = "2109010311833984225",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_5()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_2()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#CAC04D14",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 3,
        -- MinWaveDuration,
        [4] = 30,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- Spawner_1,
        [10] = "2109005348554676325",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Requested()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Cancel" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Requested" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
