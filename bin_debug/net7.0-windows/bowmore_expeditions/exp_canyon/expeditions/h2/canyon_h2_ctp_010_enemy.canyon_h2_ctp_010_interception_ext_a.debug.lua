LUAC�m  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_enemy.domino
-- User graph: Canyon_H2_CTP_010_Interception_Ext_A
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="gPlayerGroup" Type="Nomad|group" />
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
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_Interception_Ext_A.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "gPlayerGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "requiresPawnsActive",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Canyon_H2_CTP_010_Interception_Ext_A";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A";
    self.box_ProximityTrigger_v3_2 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|36772285");
    l0:SetConnections({
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_2_OnOccupied,
    });
    self.box_ProximityTrigger_v3_1 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|258568472");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_1_Enabled,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_1_OnOccupied,
    });
    self.box_Brick_Exp_Common_WaveSpawner_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|395703036");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_WaveSpawner_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|433416428");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_3_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_3_ToStartFailSafeSetup,
    });
    self.box_Brick_Exp_Common_WaveSpawner_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|775421759");
    l0:SetConnections({
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|1307702472");
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
    self.box_Gate_v3_10 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|1315429349");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_10_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|1451790785");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_4_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_4_ToStartFailSafeSetup,
    });
    self.box_Gate_v3_5 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|1590044463");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_5_Out,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|1648541408");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v3_1();
    l0 = self.box_ProximityTrigger_v3_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|382948856", "382948856", "Canyon_H2_CTP_010_Interception_Ext_A", "Enable", "box_ProximityTrigger_v3_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_2_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_5();
    l0 = self.box_ProximityTrigger_v3_2;
    l1 = self.box_Gate_v3_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|848565538", "848565538", "Canyon_H2_CTP_010_Interception_Ext_A", "box_ProximityTrigger_v3_2.OnOccupied", "box_Gate_v3_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_2();
    l0 = self.box_ProximityTrigger_v3_1;
    l1 = self.box_ProximityTrigger_v3_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|607910319", "607910319", "Canyon_H2_CTP_010_Interception_Ext_A", "box_ProximityTrigger_v3_1.Enabled", "box_ProximityTrigger_v3_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_1_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_ProximityTrigger_v3_1;
    l1 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|101184287", "101184287", "Canyon_H2_CTP_010_Interception_Ext_A", "box_ProximityTrigger_v3_1.OnOccupied", "box_Gate_v3_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_3_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_3;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|261013958", "261013958", "Canyon_H2_CTP_010_Interception_Ext_A", "box_Brick_Exp_Common_WaveSpawner_3.NextWave", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_3_ToStartFailSafeSetup()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_3;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|516237971", "516237971", "Canyon_H2_CTP_010_Interception_Ext_A", "box_Brick_Exp_Common_WaveSpawner_3.ToStartFailSafeSetup", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_3();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|1508156003", "1508156003", "Canyon_H2_CTP_010_Interception_Ext_A", "box_OutputOrder_v2_12.Out", "box_Brick_Exp_Common_WaveSpawner_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|1091616585", "1091616585", "Canyon_H2_CTP_010_Interception_Ext_A", "box_OutputOrder_v2_12.Out", "box_Gate_v3_10.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_6();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|1807592634", "1807592634", "Canyon_H2_CTP_010_Interception_Ext_A", "box_MultipleOR_7.Out", "box_Brick_Exp_Common_WaveSpawner_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_Gate_v3_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|352967600", "352967600", "Canyon_H2_CTP_010_Interception_Ext_A", "box_Gate_v3_10.Out", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_5();
    l0 = self.box_Gate_v3_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|55534215", "55534215", "Canyon_H2_CTP_010_Interception_Ext_A", "box_OutputOrder_v2_11.Out", "box_Gate_v3_5.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_4();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|1613006981", "1613006981", "Canyon_H2_CTP_010_Interception_Ext_A", "box_OutputOrder_v2_11.Out", "box_Brick_Exp_Common_WaveSpawner_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_4_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_4;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|1862619458", "1862619458", "Canyon_H2_CTP_010_Interception_Ext_A", "box_Brick_Exp_Common_WaveSpawner_4.NextWave", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_4_ToStartFailSafeSetup()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_4;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|1228498422", "1228498422", "Canyon_H2_CTP_010_Interception_Ext_A", "box_Brick_Exp_Common_WaveSpawner_4.ToStartFailSafeSetup", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_Gate_v3_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|58163335", "58163335", "Canyon_H2_CTP_010_Interception_Ext_A", "box_Gate_v3_5.Out", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_8();
    l0 = self.box_MultipleOR_9;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|769841366", "769841366", "Canyon_H2_CTP_010_Interception_Ext_A", "box_MultipleOR_9.Out", "box_Brick_Exp_Common_WaveSpawner_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:OnEnter_box_ProximityTrigger_v3_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gPlayerGroup,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109010541696524636",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gPlayerGroup,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109010441899352034",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_6()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#3ECD6984",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 90,
        -- MinWaveDuration,
        [4] = 30,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109010483236315271",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_3()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#CAC04D14",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 90,
        -- MinWaveDuration,
        [4] = 30,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109010565054603692",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|737628075");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_8()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#CAC04D14",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 90,
        -- MinWaveDuration,
        [4] = 30,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109010565054603692",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_10()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_Interception_Ext_A|1378264777");
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

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_4()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#CAC04D14",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 90,
        -- MinWaveDuration,
        [4] = 30,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109010483236315271",
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

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="gPlayerGroup" AnchorDynType="0" DataTypeID="group" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
