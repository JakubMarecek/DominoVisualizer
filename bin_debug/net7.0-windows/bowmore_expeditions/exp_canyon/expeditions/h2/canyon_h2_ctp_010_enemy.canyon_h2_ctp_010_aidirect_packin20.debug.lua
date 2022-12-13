LUAC2 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_enemy.domino
-- User graph: Canyon_H2_CTP_010_AiDirect_Packin20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.globals.lua");
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_AiDirect_Packin20.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
            [2] = {
                name = "StartMagicSpawn",
            },
            [3] = {
                name = "StopMagicSpawn",
            },
        },
        controlInCount = 4,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "EnemyHelicopterLoaded",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "EnemyHelicopter",
                type = "entity",
            },
            [1] = {
                name = "EnemyHelicopterGroup",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SpawnAI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = true,
            },
            [3] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntitySpawner",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "mercsSpawned",
                type = "list",
            },
            [1] = {
                name = "othersSpawned",
                type = "list",
            },
            [2] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
                type = "string",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
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
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/Print_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ToAll",
            },
            [1] = {
                name = "ToConsole",
            },
            [2] = {
                name = "ToFile",
            },
            [3] = {
                name = "ToScreen",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "PrintedToConsole",
                delayed = false,
            },
            [2] = {
                name = "PrintedToFile",
                delayed = false,
            },
            [3] = {
                name = "PrintedToScreen",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bool",
                type = "bool",
            },
            [1] = {
                name = "color",
                type = "string",
            },
            [2] = {
                name = "db",
                type = "genericdb",
            },
            [3] = {
                name = "duration",
                type = "float",
            },
            [4] = {
                name = "float",
                type = "float",
            },
            [5] = {
                name = "id",
                type = "entity",
            },
            [6] = {
                name = "int",
                type = "int",
            },
            [7] = {
                name = "path",
                type = "string",
            },
            [8] = {
                name = "str",
                type = "string",
            },
            [9] = {
                name = "useTimeTag",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Canyon_H2_CTP_010_AiDirect_Packin20";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20";
    self.Requested = DummyFunction;
    self.box_GroupSizeListener_v6_11 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|53823054");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_11_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_11_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_11_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_11_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_11_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_11_MemberSpawned,
    });
    self.box_Brick_Exp_Common_EnemyHelicopterCleaner_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_EnemyHelicopterCleaner_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|642404758");
    l0:SetConnections({
        -- EnemyHelicopterLoaded,
        [0] = self.f_box_Brick_Exp_Common_EnemyHelicopterCleaner_20_EnemyHelicopterLoaded,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|655382760");
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
    self.box_OnceOnly_v3_25 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|730431449");
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
                [0] = self.f_box_OnceOnly_v3_25_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupSizeListener_v6_14 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|795046779");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_14_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_14_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_14_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_14_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_14_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_14_MemberSpawned,
    });
    self.box_SpawnAI_12 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|870554183");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_12_Spawned,
    });
    self.box_Brick_Exp_Common_WaveSpawner_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|877113143");
    l0:SetConnections({
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|981946716");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1004291004");
    l0:SetConnections({
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_4_ToStartFailSafeSetup,
    });
    self.box_SpawnAI_16 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1122378907");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_16_Spawned,
    });
    self.box_Gate_v3_28 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1187057496");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_28_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_28_Out,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1190374450");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_Brick_Exp_Common_WaveSpawner_23 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1237741751");
    l0:SetConnections({
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_23_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_23_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_23_ToStartFailSafeSetup,
    });
    self.box_EntityStatusListener_22 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1270257909");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_22_Enabled,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_22_Unloaded,
    });
    self.box_ConsoleCommand_v3_33 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1360852012");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_33_Execute,
    });
    self.box_SpawnAI_15 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1375638236");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_15_Spawned,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1443776444");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1691574425");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1751208963");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_GroupSizeListener_v6_13 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1780058020");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_13_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_13_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_13_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_13_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_13_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_13_MemberSpawned,
    });
    self.box_Brick_Exp_Common_WaveSpawner_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|2050666849");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_1_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_1_ToStartFailSafeSetup,
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|2085995831");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
end;

function export:Cancel()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|506684946", "506684946", "Canyon_H2_CTP_010_AiDirect_Packin20", "Cancel", "box_Gate_v3_28.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|457097990", "457097990", "Canyon_H2_CTP_010_AiDirect_Packin20", "Start", "box_Gate_v3_28.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:StartMagicSpawn()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|80613708", "80613708", "Canyon_H2_CTP_010_AiDirect_Packin20", "StartMagicSpawn", "box_OutputOrder_v2_17.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:StopMagicSpawn()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1583109103", "1583109103", "Canyon_H2_CTP_010_AiDirect_Packin20", "StopMagicSpawn", "box_OutputOrder_v2_18.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_1();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|9824137", "9824137", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Simple_Node_27.Out", "box_Brick_Exp_Common_WaveSpawner_1.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_4();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|242124408", "242124408", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Simple_Node_27.Out", "box_Brick_Exp_Common_WaveSpawner_4.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_23();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1378324631", "1378324631", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Simple_Node_27.Out", "box_Brick_Exp_Common_WaveSpawner_23.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_11_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_GroupSizeListener_v6_11;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|450677141", "450677141", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_GroupSizeListener_v6_11.Disabled", "box_SpawnAI_16.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_11_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_6();
    l0 = self.box_GroupSizeListener_v6_11;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1320650780", "1320650780", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_GroupSizeListener_v6_11.MemberRemoved", "box_Compare_Integers_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_32_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_34();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|170752059", "170752059", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_HealthModifier_v2_32.Damaged", "box_Print_v2_34.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_EnemyHelicopterCleaner_20_EnemyHelicopterLoaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_22();
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_20;
    l1 = self.box_EntityStatusListener_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1869935746", "1869935746", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Brick_Exp_Common_EnemyHelicopterCleaner_20.EnemyHelicopterLoaded", "box_EntityStatusListener_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_5_Out()
    local l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|13937651", "13937651", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_MultipleOR_5.Out", "Requested", l0:GetLuaBox(), self);
    self:Requested();
end;

function export:f_box_Compare_Integers_6_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1723434719", "1723434719", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Compare_Integers_6.A_eq_B", "box_SpawnAI_16.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_25_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_19();
    l0 = self.box_OnceOnly_v3_25;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1728323997", "1728323997", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_OnceOnly_v3_25.Out", "box_SetContextualStrategy_19.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_14_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_GroupSizeListener_v6_14;
    l1 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|723979806", "723979806", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_GroupSizeListener_v6_14.Disabled", "box_SpawnAI_12.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_14_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_9();
    l0 = self.box_GroupSizeListener_v6_14;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1417708802", "1417708802", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_GroupSizeListener_v6_14.MemberRemoved", "box_Compare_Integers_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_12_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_12;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|83925091", "83925091", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_SpawnAI_12.Spawned", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_26_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|986972437", "986972437", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Compare_Integers_26.A_eq_B", "box_Delay_v5_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_26_A_ne_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_4();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|494239411", "494239411", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Compare_Integers_26.A_ne_B", "box_Brick_Exp_Common_WaveSpawner_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_14();
    l0 = self.box_GroupSizeListener_v6_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|53396041", "53396041", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_OutputOrder_v2_18.Out", "box_GroupSizeListener_v6_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_13();
    l0 = self.box_GroupSizeListener_v6_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1676681732", "1676681732", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_OutputOrder_v2_18.Out", "box_GroupSizeListener_v6_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_11();
    l0 = self.box_GroupSizeListener_v6_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1327146943", "1327146943", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_OutputOrder_v2_18.Out", "box_GroupSizeListener_v6_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_24_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_24;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1981317985", "1981317985", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_MultipleOR_24.Out", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_4_ToStartFailSafeSetup()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_20();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_4;
    l1 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|617858050", "617858050", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Brick_Exp_Common_WaveSpawner_4.ToStartFailSafeSetup", "box_Brick_Exp_Common_EnemyHelicopterCleaner_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_16_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_16;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1185978844", "1185978844", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_SpawnAI_16.Spawned", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Gate_v3_28_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = self.box_Gate_v3_28;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1263199121", "1263199121", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Gate_v3_28.Closed", "box_Simple_Node_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_Gate_v3_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1429513892", "1429513892", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Gate_v3_28.Out", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_23();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1436727250", "1436727250", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Delay_v5_30.TimeElapsed", "box_Brick_Exp_Common_WaveSpawner_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_23_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_3();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_23;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|2031936221", "2031936221", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Brick_Exp_Common_WaveSpawner_23.Cancelled", "box_Brick_Exp_Common_WaveSpawner_3.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_23_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_23;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|563423111", "563423111", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Brick_Exp_Common_WaveSpawner_23.NextWave", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_23_ToStartFailSafeSetup()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_23;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1769523986", "1769523986", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Brick_Exp_Common_WaveSpawner_23.ToStartFailSafeSetup", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_14();
    l0 = self.box_GroupSizeListener_v6_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|255427216", "255427216", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_OutputOrder_v2_17.Out", "box_GroupSizeListener_v6_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_13();
    l0 = self.box_GroupSizeListener_v6_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|203891867", "203891867", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_OutputOrder_v2_17.Out", "box_GroupSizeListener_v6_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_11();
    l0 = self.box_GroupSizeListener_v6_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|2030602399", "2030602399", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_OutputOrder_v2_17.Out", "box_GroupSizeListener_v6_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_9_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1853888259", "1853888259", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Compare_Integers_9.A_eq_B", "box_SpawnAI_12.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_EntityStatusListener_22;
    l1 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1533338433", "1533338433", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_EntityStatusListener_22.Enabled", "box_Delay_v5_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_22_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_22;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1009163305", "1009163305", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_EntityStatusListener_22.Unloaded", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ConsoleCommand_v3_33_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_32();
    l0 = self.box_ConsoleCommand_v3_33;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1422336215", "1422336215", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_ConsoleCommand_v3_33.Execute", "box_HealthModifier_v2_32.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_15_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_15;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|484415119", "484415119", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_SpawnAI_15.Spawned", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_3();
    l0 = self.box_MultipleOR_31;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1242251195", "1242251195", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_MultipleOR_31.Out", "box_Brick_Exp_Common_WaveSpawner_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_7_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1585654992", "1585654992", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Compare_Integers_7.A_eq_B", "box_SpawnAI_15.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_10();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1290335614", "1290335614", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_MultipleOR_8.Out", "box_Print_v2_10.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_21_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_21;
    l1 = self.box_OnceOnly_v3_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1960040167", "1960040167", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_MultipleOR_21.Out", "box_OnceOnly_v3_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_13_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_GroupSizeListener_v6_13;
    l1 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1428958632", "1428958632", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_GroupSizeListener_v6_13.Disabled", "box_SpawnAI_15.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_13_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_7();
    l0 = self.box_GroupSizeListener_v6_13;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1565762049", "1565762049", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_GroupSizeListener_v6_13.MemberRemoved", "box_Compare_Integers_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_26();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|493291107", "493291107", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_OutputOrder_v2_29.Out", "box_Compare_Integers_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_1();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|453140254", "453140254", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_OutputOrder_v2_29.Out", "box_Brick_Exp_Common_WaveSpawner_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_29_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_33();
    l0 = self.box_ConsoleCommand_v3_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|410429914", "410429914", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_OutputOrder_v2_29.Out", "box_ConsoleCommand_v3_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_1_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_1;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1537485903", "1537485903", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Brick_Exp_Common_WaveSpawner_1.NextWave", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_1_ToStartFailSafeSetup()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_1;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|160984948", "160984948", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Brick_Exp_Common_WaveSpawner_1.ToStartFailSafeSetup", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_2;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|910780383", "910780383", "Canyon_H2_CTP_010_AiDirect_Packin20", "box_Delay_v5_2.TimeElapsed", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|@CancelWaves");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_11()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#A9FE789E",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|209252694");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108509133855523954",
        -- Group,
        [1] = "#6088FBBF",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|438002656");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_32_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#6088FBBF",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_20()
    local params;
    params = {
        -- EnemyHelicopter,
        [0] = "2108621558812519688",
        -- EnemyHelicopterGroup,
        [1] = "#6088FBBF",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|729580666");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_6_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v6_11;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_14()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#3D29EBA9",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|835806132");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "heli group down, mayday",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_12()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108217558856372473",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_3()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#CAC04D14",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 1,
        -- MinWaveDuration,
        [4] = 30,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2108924152210523688",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|933550570");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_26_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_26_A_ne_B,
    });
    params = {
        -- A,
        [0] = Globals.Canyon_H2_CTP_010_Enemy.iDifficulty,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|935965569");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
            },
            count = 3,
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
        [0] = 4,
        -- EnemyGroup,
        [1] = "#A9463B32",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 1,
        -- MinWaveDuration,
        [4] = 30,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2108621554781793478",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_16()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108774052874163756",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1124215479");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Red",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "I Smell Magic in the AIR",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_28()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_23()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#CAC04D14",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 1,
        -- MinWaveDuration,
        [4] = 30,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2108924078575322215",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1251914875");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1260799690");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_9_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v6_14;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_22()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108621558812519688",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_33()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "kill_heli_group",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_15()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108774011658835290",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1512717491");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_7_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v6_13;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_13()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#13DFC32F",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_AiDirect_Packin20|1870246826");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
                [2] = self.f_box_OutputOrder_v2_29_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
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
        [10] = "2108924175262418918",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
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
		<ControlIn Name="StartMagicSpawn" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StopMagicSpawn" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Requested" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
