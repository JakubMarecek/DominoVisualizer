LUACE
 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/c2/canyon_c2_ctp_010_enemy.domino
-- User graph: Canyon_C2_CTP_010_Enemy
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_A.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_B.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_C.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_D.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_E.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_F.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.FlareGunSTPSetup.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetRemainingNPCNUM.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/Library/Sp/Lib_Expeditions_Gameplay.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Main.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Canyon_C2_CTP_010_Enemy = nil;
    Globals.Canyon_C2_CTP_010_Enemy = {
        i_CurrentSize = 0,
        Wave_01_Spawner_a = nil,
        Wave_01_Spawner_b = nil,
        Wave_02_Spawner_a = nil,
        Wave_02_Spawner_b = nil,
        Wave_03_Spawner_a = nil,
        Wave_03_Spawner_b = nil,
        Wave_04_Spawner_a = nil,
        Wave_04_Spawner_b = nil,
        Wave_05_Spawner_a = nil,
        Wave_05_Spawner_b = nil,
        Wave_06_Spawner_a = nil,
        Wave_06_Spawner_b = nil,
        Wave_07_Spawner_a = nil,
        Wave_07_Spawner_b = nil,
        Wave_08_Spawner_a = nil,
        Wave_08_Spawner_b = nil,
        Wave_09_Spawner_a = nil,
        Wave_09_Spawner_b = nil,
        Wave_10_Spawner_a = nil,
        Wave_10_Spawner_b = nil,
        RemainingNPCNUM_Wave_01 = 3,
        RemainingNPCNUM_Wave_02 = 3,
        RemainingNPCNUM_Wave_03 = 3,
        RemainingNPCNUM_Wave_04 = 3,
        RemainingNPCNUM_Wave_05 = 3,
        RemainingNPCNUM_Wave_06 = 3,
        RemainingNPCNUM_Wave_07 = 3,
        RemainingNPCNUM_Wave_08 = 3,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PackagePicked",
            },
            [1] = {
                name = "PackageStolenDetected",
            },
        },
        controlInCount = 2,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ActualPackageSpawner",
                type = "entity",
            },
            [1] = {
                name = "EnemyGroup_PackageGuard",
                type = "group",
            },
            [2] = {
                name = "EnemyGroupAll",
                type = "group",
            },
            [3] = {
                name = "PackageGuardPositionCS_A",
                type = "entity",
            },
            [4] = {
                name = "PackageGuardPositionCS_B",
                type = "entity",
            },
            [5] = {
                name = "PackageGuardPositionCS_C",
                type = "entity",
            },
            [6] = {
                name = "PackageGuardPositionCS_D",
                type = "entity",
            },
            [7] = {
                name = "PackageGuardPositionCS_E",
                type = "entity",
            },
            [8] = {
                name = "PackageGuardPositionCS_F",
                type = "entity",
            },
            [9] = {
                name = "PackageSpawner_A",
                type = "entity",
            },
            [10] = {
                name = "PackageSpawner_B",
                type = "entity",
            },
            [11] = {
                name = "PackageSpawner_C",
                type = "entity",
            },
            [12] = {
                name = "PackageSpawner_D",
                type = "entity",
            },
            [13] = {
                name = "PackageSpawner_E",
                type = "entity",
            },
            [14] = {
                name = "PackageSpawner_F",
                type = "entity",
            },
        },
        dataInCount = 15,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityAcknowledgeGate.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Acknowledged",
                delayed = true,
            },
            [1] = {
                name = "Reloaded",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityInitialized.lua")] = {
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
                delayed = true,
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/BroadcastMessage.lua")] = {
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
                name = "Message",
                type = "string",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/GroupIter.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndIter",
                delayed = true,
            },
            [1] = {
                name = "PawnIter",
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
                name = "entities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "entity",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "message",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/RadioModifier_v3.lua")] = {
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
                name = "Enable",
                type = "bool",
            },
            [1] = {
                name = "ImmediateOverride",
                type = "bool",
            },
            [2] = {
                name = "LockOnOff",
                type = "bool",
            },
            [3] = {
                name = "LockStationSwitching",
                type = "bool",
            },
            [4] = {
                name = "StationOverride",
                type = "genericdb",
            },
            [5] = {
                name = "TargetRadio",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/SetInteger_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
            [3] = {
                name = "UseFloor",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "Target",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "MessageType",
                type = "int",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_A.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_B.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_C.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_D.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_E.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_F.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.FlareGunSTPSetup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FlareUsed",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "End",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.PlayerFullyDetected.debug.lua")] = {
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
                name = "Detected",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "PlayerBeDetected",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetRemainingNPCNUM.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua")] = {
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
                name = "Wave_01_Spawner_a",
                type = "entity",
            },
            [1] = {
                name = "Wave_01_Spawner_b",
                type = "entity",
            },
            [2] = {
                name = "Wave_02_Spawner_a",
                type = "entity",
            },
            [3] = {
                name = "Wave_02_Spawner_b",
                type = "entity",
            },
            [4] = {
                name = "Wave_03_Spawner_a",
                type = "entity",
            },
            [5] = {
                name = "Wave_03_Spawner_b",
                type = "entity",
            },
            [6] = {
                name = "Wave_04_Spawner_a",
                type = "entity",
            },
            [7] = {
                name = "Wave_04_Spawner_b",
                type = "entity",
            },
            [8] = {
                name = "Wave_05_Spawner_a",
                type = "entity",
            },
            [9] = {
                name = "Wave_05_Spawner_b",
                type = "entity",
            },
            [10] = {
                name = "Wave_06_Spawner_a",
                type = "entity",
            },
            [11] = {
                name = "Wave_06_Spawner_b",
                type = "entity",
            },
            [12] = {
                name = "Wave_07_Spawner_a",
                type = "entity",
            },
            [13] = {
                name = "Wave_07_Spawner_b",
                type = "entity",
            },
            [14] = {
                name = "Wave_08_Spawner_a",
                type = "entity",
            },
            [15] = {
                name = "Wave_08_Spawner_b",
                type = "entity",
            },
            [16] = {
                name = "WaveIndex",
                type = "int",
            },
        },
        dataInCount = 17,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Canyon_C2_CTP_010_Enemy";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy";
    self.DetectedPlayerID = nil;
    self.HostPlayer = nil;
    self.ClientPlayer = nil;
    self.ChosenPlayer = nil;
    self.Wave_05_Spawner_a = nil;
    self.Wave_05_Spawner_b = nil;
    self.Wave_06_Spawner_a = nil;
    self.Wave_06_Spawner_b = nil;
    self.Wave_07_Spawner_a = nil;
    self.Wave_07_Spawner_b = nil;
    self.Wave_08_Spawner_a = nil;
    self.Wave_08_Spawner_b = nil;
    self.Wave_04_Spawner_a = nil;
    self.Wave_04_Spawner_b = nil;
    self.Wave_03_Spawner_a = nil;
    self.Wave_03_Spawner_b = nil;
    self.Wave_02_Spawner_a = nil;
    self.Wave_02_Spawner_b = nil;
    self.Wave_01_Spawner_a = nil;
    self.Wave_01_Spawner_b = nil;
    self.PlayerWithPackage = nil;
    self.PreviousAreaWaveGroup = nil;
    self.TurretSpawnerList = {
    };
    self.NextWaveWaitUntilCombat = true;
    self.PackageID = 0;
    self.WaveIndex = 1;
    self.box_Brick_Exp_Common_WaveSpawner_238 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|3048996");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_238_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_238_NextWave,
    });
    self.box_SetWaveSpawner_252 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_252;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|10213054");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_252_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_314 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_314;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_314");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|13154097");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_314_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_282 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_282;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_282");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|22053899");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_282_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_282_NextWave,
    });
    self.box_SetWaveSpawner_150 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|33252462");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_150_Out,
    });
    self.box_SetWaveSpawner_12 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|38167856");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_12_Out,
    });
    self.box_IndexList_v2_134 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|53457601");
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
                [0] = self.f_box_IndexList_v2_134_Output_0,
                [1] = self.f_box_IndexList_v2_134_Output_1,
                [2] = self.f_box_IndexList_v2_134_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_110 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|62046208");
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
        [0] = self.f_box_MultipleOR_110_Out,
    });
    self.box_OnceOnly_v3_186 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|63919828");
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
                [0] = self.f_box_OnceOnly_v3_186_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_127 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|67790450");
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
                [0] = self.f_box_OnceOnly_v3_127_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|117717702");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
    self.box_SetWaveSpawner_152 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|121628171");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_152_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_287 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_287");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|122602736");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_287_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_287_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_301 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_301;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_301");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|122830465");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_301_NextWave,
    });
    self.box_SetWaveSpawner_256 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|138058957");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_256_Out,
    });
    self.box_SetWaveSpawner_113 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|144166460");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_113_Out,
    });
    self.box_SetWaveSpawner_160 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|148546890");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_160_Out,
    });
    self.box_SetWaveSpawner_148 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|156784461");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_148_Out,
    });
    self.box_SetWaveSpawner_236 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|159473656");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_236_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_288 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_288");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|159886706");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_288_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_288_NextWave,
    });
    self.box_MultipleOR_311 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_311");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|161613303");
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
        [0] = self.f_box_MultipleOR_311_Out,
    });
    self.box_ProximityTrigger_v3_53 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|170988324");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_53_Enter,
    });
    self.box_SetWaveSpawner_173 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|185469082");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_173_Out,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|186417004");
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
        [0] = self.f_box_MultipleOR_48_Out,
    });
    self.box_MultipleOR_293 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_293;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_293");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|187506810");
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
        [0] = self.f_box_MultipleOR_293_Out,
    });
    self.box_SetWaveSpawner_161 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|196508783");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_161_Out,
    });
    self.box_SetWaveSpawner_163 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|212571647");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_163_Out,
    });
    self.box_MultipleOR_89 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|214469341");
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
        [0] = self.f_box_MultipleOR_89_Out,
    });
    self.box_MultipleOR_313 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_313");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|226800584");
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
        [0] = self.f_box_MultipleOR_313_Out,
    });
    self.box_SetWaveSpawner_272 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_272;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|262417521");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_272_Out,
    });
    self.box_MultipleOR_296 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_296;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_296");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|271012699");
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
        [0] = self.f_box_MultipleOR_296_Out,
    });
    self.box_SetWaveSpawner_207 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|278227371");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_207_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_283 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_283;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_283");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|278467749");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_283_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_283_NextWave,
    });
    self.box_IndexList_v2_87 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|281604510");
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
                [0] = self.f_box_IndexList_v2_87_Output_0,
                [1] = self.f_box_IndexList_v2_87_Output_1,
                [2] = self.f_box_IndexList_v2_87_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|285092980");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_OnceOnly_v3_176 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|296969944");
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
                [0] = self.f_box_OnceOnly_v3_176_Out_0,
            },
            count = 2,
        },
    });
    self.box_SetWaveSpawner_181 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|310466927");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_181_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_315 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_315;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_315");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|311710082");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_315_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_315_NextWave,
    });
    self.box_InfinityWaveCount_297 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
    l0 = self.box_InfinityWaveCount_297;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfinityWaveCount_297");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|311911103");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_InfinityWaveCount_297_End,
        -- Out,
        [1] = self.f_box_InfinityWaveCount_297_Out,
    });
    self.box_SetWaveSpawner_184 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|321830124");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_184_Out,
    });
    self.box_SetWaveSpawner_166 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|330819503");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_166_Out,
    });
    self.box_Delay_v5_265 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|333286264");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_265_TimeElapsed,
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|364347738");
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
        [0] = self.f_box_MultipleOR_104_Out,
    });
    self.box_SetWaveSpawner_180 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|389070622");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_180_Out,
    });
    self.box_MultipleOR_77 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|398438375");
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
        [0] = self.f_box_MultipleOR_77_Out,
    });
    self.box_StateListener_v2_334 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_334;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_334");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|398477538");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StateListener_v2_334_Disabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_334_StateStart,
    });
    self.box_MultipleOR_227 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|398706048");
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
        [0] = self.f_box_MultipleOR_227_Out,
    });
    self.box_SetWaveSpawner_137 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|401654618");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_137_Out,
    });
    self.box_ActivityAcknowledgeGate_98 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|413088997");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_98_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_98_Reloaded,
    });
    self.box_Random_49 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|417213697");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
        },
        dataIn = {
            [1] = 5,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Random_49_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_49_Output_0,
                [1] = self.f_box_Random_49_Output_1,
                [2] = self.f_box_Random_49_Output_2,
                [3] = self.f_box_Random_49_Output_3,
                [4] = self.f_box_Random_49_Output_4,
            },
            count = 5,
        },
    });
    self.box_MultipleOR_326 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_326;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_326");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|418671555");
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
        [0] = self.f_box_MultipleOR_326_Out,
    });
    self.box_ProximityTrigger_v3_360 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_360;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_360");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|421173749");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_360_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_360_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_360_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_360_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_360_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_360_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_360_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_360_Use,
    });
    self.box_SetWaveSpawner_273 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_273;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|429922832");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_273_Out,
    });
    self.box_SetWaveSpawner_235 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|433115117");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_235_Out,
    });
    self.box_OnceOnly_v3_165 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|443994995");
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
                [0] = self.f_box_OnceOnly_v3_165_Out_0,
            },
            count = 2,
        },
    });
    self.box_SetWaveSpawner_241 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|446462785");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_241_Out,
    });
    self.box_SetWaveSpawner_203 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|461326179");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_203_Out,
    });
    self.box_SetWaveSpawner_209 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|466686706");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_209_Out,
    });
    self.box_SetWaveSpawner_233 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|468203525");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_233_Out,
    });
    self.box_ProximityTrigger_v3_76 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|482497762");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_76_Enter,
    });
    self.box_SetWaveSpawner_143 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|485221600");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_143_Out,
    });
    self.box_ProximityTrigger_v3_81 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|485604225");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_81_Enter,
    });
    self.box_SetWaveSpawner_146 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|499936244");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_146_Out,
    });
    self.box_MultipleOR_369 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_369;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_369");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|514762353");
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
        [0] = self.f_box_MultipleOR_369_Out,
    });
    self.box_SetWaveSpawner_206 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|520624774");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_206_Out,
    });
    self.box_ActivityInitialized_46 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|524004434");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_46_Out,
    });
    self.box_SpawnAI_70 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|530247218");
    l0:SetConnections({
    });
    self.box_SetWaveSpawner_251 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|530574906");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_251_Out,
    });
    self.box_MultipleOR_108 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|547917763");
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
        [0] = self.f_box_MultipleOR_108_Out,
    });
    self.box_SetWaveSpawner_258 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|571913720");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_258_Out,
    });
    self.box_SetWaveSpawner_100 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|580316272");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_100_Out,
    });
    self.box_SetWaveSpawner_328 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_328;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_328");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|581959674");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_328_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_284 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_284");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|593583418");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_284_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_284_NextWave,
    });
    self.box_InfinityWaveCount_15 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
    l0 = self.box_InfinityWaveCount_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfinityWaveCount_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|595749379");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_InfinityWaveCount_15_End,
        -- Out,
        [1] = self.f_box_InfinityWaveCount_15_Out,
    });
    self.box_SetWaveSpawner_204 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|596403997");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_204_Out,
    });
    self.box_Delay_v5_371 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_371;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_371");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|596637804");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_371_TimeElapsed,
    });
    self.box_SetWaveSpawner_234 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|602526683");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_234_Out,
    });
    self.box_MultipleOR_312 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_312;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_312");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|604733701");
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
        [0] = self.f_box_MultipleOR_312_Out,
    });
    self.box_Gate_v3_218 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|616332953");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_218_Out,
    });
    self.box_OnceOnly_v3_26 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|617863569");
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
                [0] = self.f_box_OnceOnly_v3_26_Out_0,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_88 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|659717650");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_88_Received,
    });
    self.box_MessageListener_v3_20 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|670153367");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_20_Received,
    });
    self.box_MultipleOR_290 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_290;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_290");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|681595938");
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
        [0] = self.f_box_MultipleOR_290_Out,
    });
    self.box_SetWaveSpawner_257 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|682040332");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_257_Out,
    });
    self.box_SetWaveSpawner_43 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|686613233");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_43_Out,
    });
    self.box_Delay_v5_344 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_344;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_344");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|702314820");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_344_TimeElapsed,
    });
    self.box_MultipleOR_172 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|707819499");
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
        [0] = self.f_box_MultipleOR_172_Out,
    });
    self.box_ProximityTrigger_v3_356 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_356;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_356");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|709729342");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_356_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_356_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_356_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_356_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_356_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_356_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_356_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_356_Use,
    });
    self.box_Brick_Exp_Common_WaveSpawner_228 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|710769141");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_228_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_228_NextWave,
    });
    self.box_InfinityWaveCount_321 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
    l0 = self.box_InfinityWaveCount_321;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfinityWaveCount_321");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|713649484");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_InfinityWaveCount_321_End,
        -- Out,
        [1] = self.f_box_InfinityWaveCount_321_Out,
    });
    self.box_IndexList_v2_164 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|720559619");
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
                [0] = self.f_box_IndexList_v2_164_Output_0,
                [1] = self.f_box_IndexList_v2_164_Output_1,
                [2] = self.f_box_IndexList_v2_164_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_169 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|734081009");
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
        [0] = self.f_box_MultipleOR_169_Out,
    });
    self.box_SetWaveSpawner_156 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|750984544");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_156_Out,
    });
    self.box_Brick_Exp_Common_EnemyHelicopterCleaner_82 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_EnemyHelicopterCleaner_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|751483473");
    l0:SetConnections({
        -- EnemyHelicopterLoaded,
        [0] = self.f_box_Brick_Exp_Common_EnemyHelicopterCleaner_82_EnemyHelicopterLoaded,
    });
    self.box_SetWaveSpawner_37 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|759147604");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_37_Out,
    });
    self.box_SetWaveSpawner_270 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_270");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|764049151");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_270_Out,
    });
    self.box_Gate_v3_86 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|767667151");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_86_Out,
    });
    self.box_Canyon_C2_CTP_010_Enemy_F_123 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_F.debug.lua");
    l0 = self.box_Canyon_C2_CTP_010_Enemy_F_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_C2_CTP_010_Enemy_F_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|796815956");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Canyon_C2_CTP_010_Enemy_F_123_Out,
    });
    self.box_SetWaveSpawner_240 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|806619984");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_240_Out,
    });
    self.box_SetWaveSpawner_244 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|811295492");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_244_Out,
    });
    self.box_SetWaveSpawner_131 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|815589686");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_131_Out,
    });
    self.box_IndexList_v2_144 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|823332769");
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
                [0] = self.f_box_IndexList_v2_144_Output_0,
                [1] = self.f_box_IndexList_v2_144_Output_1,
                [2] = self.f_box_IndexList_v2_144_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_Exp_Common_WaveSpawner_324 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_324;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_324");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|823570680");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_324_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_324_NextWave,
    });
    self.box_SetWaveSpawner_248 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|837744969");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_248_Out,
    });
    self.box_SetWaveSpawner_275 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_275");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|844451490");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_275_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|855018482");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_3_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_3_NextWave,
    });
    self.box_SetWaveSpawner_136 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|855274581");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_136_Out,
    });
    self.box_Canyon_C2_CTP_010_Enemy_A_62 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_A.debug.lua");
    l0 = self.box_Canyon_C2_CTP_010_Enemy_A_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_C2_CTP_010_Enemy_A_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|856356238");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Canyon_C2_CTP_010_Enemy_A_62_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_322 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_322;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_322");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|871279894");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_322_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_322_NextWave,
    });
    self.box_MultipleOR_230 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|882449874");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_230_Out,
    });
    self.box_IndexList_v2_135 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|893783357");
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
                [0] = self.f_box_IndexList_v2_135_Output_0,
                [1] = self.f_box_IndexList_v2_135_Output_1,
                [2] = self.f_box_IndexList_v2_135_Output_2,
            },
            count = 3,
        },
    });
    self.box_SetWaveSpawner_262 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|895133349");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_262_Out,
    });
    self.box_MultipleOR_295 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_295;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_295");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|906582031");
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
        [0] = self.f_box_MultipleOR_295_Out,
    });
    self.box_Canyon_C2_CTP_010_Enemy_B_120 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_B.debug.lua");
    l0 = self.box_Canyon_C2_CTP_010_Enemy_B_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_C2_CTP_010_Enemy_B_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|916226012");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Canyon_C2_CTP_010_Enemy_B_120_Out,
    });
    self.box_InfinityWaveCount_18 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
    l0 = self.box_InfinityWaveCount_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfinityWaveCount_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|918222761");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_InfinityWaveCount_18_End,
        -- Out,
        [1] = self.f_box_InfinityWaveCount_18_Out,
    });
    self.box_IndexList_v2_159 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|924516670");
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
                [0] = self.f_box_IndexList_v2_159_Output_0,
                [1] = self.f_box_IndexList_v2_159_Output_1,
                [2] = self.f_box_IndexList_v2_159_Output_2,
            },
            count = 3,
        },
    });
    self.box_DisplayCustomUIMsg_v5_187 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|931723699");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_263 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_263;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|938753878");
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
                [0] = self.f_box_OnceOnly_v3_263_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_379 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_379;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_379");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|944424073");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_379_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_128 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|953666203");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_128_Enter,
    });
    self.box_PlayerFullyDetected_27 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|989815180");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_27_Detected,
        -- Disabled,
        [1] = self.f_box_PlayerFullyDetected_27_Disabled,
        -- Enabled,
        [2] = self.f_box_PlayerFullyDetected_27_Enabled,
    });
    self.box_MultipleOR_171 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|993124710");
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
        [0] = self.f_box_MultipleOR_171_Out,
    });
    self.box_SetWaveSpawner_140 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|996739507");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_140_Out,
    });
    self.box_ProximityTrigger_v3_212 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1001728513");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_212_Enter,
    });
    self.box_SetWaveSpawner_259 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1006949684");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_259_Out,
    });
    self.box_Canyon_C2_CTP_010_Enemy_C_125 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_C.debug.lua");
    l0 = self.box_Canyon_C2_CTP_010_Enemy_C_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_C2_CTP_010_Enemy_C_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1008595642");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Canyon_C2_CTP_010_Enemy_C_125_Out,
    });
    self.box_SetWaveSpawner_239 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1015849313");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_239_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_310 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_310;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_310");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1019615669");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_310_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_310_NextWave,
    });
    self.box_FlareGunSTPSetup_346 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.FlareGunSTPSetup.debug.lua");
    l0 = self.box_FlareGunSTPSetup_346;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FlareGunSTPSetup_346");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1020908190");
    l0:SetConnections({
        -- FlareUsed,
        [0] = self.f_box_FlareGunSTPSetup_346_FlareUsed,
    });
    self.box_InfinityWaveCount_323 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
    l0 = self.box_InfinityWaveCount_323;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfinityWaveCount_323");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1057001868");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_InfinityWaveCount_323_End,
        -- Out,
        [1] = self.f_box_InfinityWaveCount_323_Out,
    });
    self.box_ProximityTrigger_v3_32 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1057933602");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_32_Enter,
    });
    self.box_SetWaveSpawner_170 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1059230166");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_170_Out,
    });
    self.box_Canyon_C2_CTP_010_Enemy_E_60 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_E.debug.lua");
    l0 = self.box_Canyon_C2_CTP_010_Enemy_E_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_C2_CTP_010_Enemy_E_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1066405166");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Canyon_C2_CTP_010_Enemy_E_60_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_316 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_316;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_316");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1070315445");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_316_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_316_NextWave,
    });
    self.box_SetWaveSpawner_179 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1093596391");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_179_Out,
    });
    self.box_MultipleAND_v2_52 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1117337963");
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
        [0] = self.f_box_MultipleAND_v2_52_Out,
    });
    self.box_SetWaveSpawner_112 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1119564286");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_112_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_299 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_299;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_299");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1123737808");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_299_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_299_NextWave,
    });
    self.box_InfinityWaveCount_302 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
    l0 = self.box_InfinityWaveCount_302;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfinityWaveCount_302");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1137850332");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_InfinityWaveCount_302_End,
        -- Out,
        [1] = self.f_box_InfinityWaveCount_302_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_229 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1137968770");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_229_NextWave,
    });
    self.box_Delay_v5_214 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1146982742");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_214_TimeElapsed,
    });
    self.box_Brick_Exp_Common_WaveSpawner_303 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_303;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_303");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1160099218");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_303_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_303_NextWave,
    });
    self.box_SetWaveSpawner_117 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1160700868");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_117_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_268 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1162568275");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_268_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_268_NextWave,
    });
    self.box_SetWaveSpawner_307 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_307;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_307");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1170706866");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_307_Out,
    });
    self.box_SetWaveSpawner_254 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1185446286");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_254_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1190592843");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_6_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_6_NextWave,
    });
    self.box_Gate_v3_129 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1198641495");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_129_Out,
    });
    self.box_InfinityWaveCount_320 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
    l0 = self.box_InfinityWaveCount_320;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfinityWaveCount_320");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1208779461");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_InfinityWaveCount_320_End,
        -- Out,
        [1] = self.f_box_InfinityWaveCount_320_Out,
    });
    self.box_SetWaveSpawner_250 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1210153660");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_250_Out,
    });
    self.box_ProximityTrigger_v3_35 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1214172597");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_35_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_35_Enter,
    });
    self.box_SetRemainingNPCNUM_330 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetRemainingNPCNUM.debug.lua");
    l0 = self.box_SetRemainingNPCNUM_330;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetRemainingNPCNUM_330");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1218141067");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_WaveSpawner_294 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_294;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_294");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1228972587");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_294_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_294_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_291 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_291");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1230727717");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_291_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_291_NextWave,
    });
    self.box_MultipleOR_174 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1237271515");
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
        [0] = self.f_box_MultipleOR_174_Out,
    });
    self.box_ProximityTrigger_v3_213 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1241904387");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_213_Enter,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1259971225");
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
    self.box_Brick_Exp_Enemy_PackageGuardNearest_66 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuardNearest_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1266571975");
    l0:SetConnections({
    });
    self.box_SetWaveSpawner_114 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1267492488");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_114_Out,
    });
    self.box_Gate_v3_215 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1273744809");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_215_Out,
    });
    self.box_SetWaveSpawner_255 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1277382210");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_255_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_318 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_318;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_318");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1279055567");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_318_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_318_NextWave,
    });
    self.box_SetWaveSpawner_261 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1283321468");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_261_Out,
    });
    self.box_SetWaveSpawner_232 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1301999920");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_232_Out,
    });
    self.box_SetWaveSpawner_242 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1346274288");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_242_Out,
    });
    self.box_SetWaveSpawner_279 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_279");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1346840929");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_279_Out,
    });
    self.box_SetWaveSpawner_162 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1372512221");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_162_Out,
    });
    self.box_GroupIter_189 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1376633759");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_189_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_189_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_189_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_189_Stopped,
    });
    self.box_Brick_Exp_Common_WaveSpawner_177 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1383949032");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_177_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_177_NextWave,
    });
    self.box_SetWaveSpawner_246 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_246;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1384080045");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_246_Out,
    });
    self.box_SetWaveSpawner_167 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1400093299");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_167_Out,
    });
    self.box_IndexList_v2_116 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1405398546");
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
                [0] = self.f_box_IndexList_v2_116_Output_0,
                [1] = self.f_box_IndexList_v2_116_Output_1,
                [2] = self.f_box_IndexList_v2_116_Output_2,
            },
            count = 3,
        },
    });
    self.box_IndexList_v2_168 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1410058878");
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
                [0] = self.f_box_IndexList_v2_168_Output_0,
                [1] = self.f_box_IndexList_v2_168_Output_1,
                [2] = self.f_box_IndexList_v2_168_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_155 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1423926075");
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
        [0] = self.f_box_MultipleOR_155_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1435351793");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_5_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_5_NextWave,
    });
    self.box_Brick_Exp_Common_EnemyHelicopterCleaner_83 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_EnemyHelicopterCleaner_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1443448635");
    l0:SetConnections({
        -- EnemyHelicopterLoaded,
        [0] = self.f_box_Brick_Exp_Common_EnemyHelicopterCleaner_83_EnemyHelicopterLoaded,
    });
    self.box_SetWaveSpawner_281 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_281");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1445197120");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_281_Out,
    });
    self.box_SetWaveSpawner_183 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1447384448");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_183_Out,
    });
    self.box_SetWaveSpawner_97 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1458609766");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_97_Out,
    });
    self.box_OnceOnly_v3_61 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1458749809");
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
                [0] = self.f_box_OnceOnly_v3_61_Out_0,
            },
            count = 2,
        },
    });
    self.box_IndexList_v2_182 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1465461620");
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
                [0] = self.f_box_IndexList_v2_182_Output_0,
                [1] = self.f_box_IndexList_v2_182_Output_1,
                [2] = self.f_box_IndexList_v2_182_Output_2,
            },
            count = 3,
        },
    });
    self.box_SetWaveSpawner_271 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1497654350");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_271_Out,
    });
    self.box_Delay_v5_377 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_377;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_377");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1506588570");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_377_TimeElapsed,
    });
    self.box_SetWaveSpawner_130 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1524649412");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_130_Out,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1533067996");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_SetWaveSpawner_253 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1536639976");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_253_Out,
    });
    self.box_InfinityWaveCount_11 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
    l0 = self.box_InfinityWaveCount_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfinityWaveCount_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1542274440");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_InfinityWaveCount_11_End,
        -- Out,
        [1] = self.f_box_InfinityWaveCount_11_Out,
    });
    self.box_InfinityWaveCount_289 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
    l0 = self.box_InfinityWaveCount_289;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfinityWaveCount_289");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1543336846");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_InfinityWaveCount_289_End,
        -- Out,
        [1] = self.f_box_InfinityWaveCount_289_Out,
    });
    self.box_SetWaveSpawner_280 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_280");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1548489582");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_280_Out,
    });
    self.box_SetWaveSpawner_260 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1549394272");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_260_Out,
    });
    self.box_SetWaveSpawner_276 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1560094308");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_276_Out,
    });
    self.box_MultipleOR_309 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_309;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_309");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1562997480");
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
        [0] = self.f_box_MultipleOR_309_Out,
    });
    self.box_SetWaveSpawner_269 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1569464951");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_269_Out,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1586302868");
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
    self.box_MultipleOR_319 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_319;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_319");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1591867867");
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
        [0] = self.f_box_MultipleOR_319_Out,
    });
    self.box_SpawnAI_79 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1604054703");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_64 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1608766720");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_64_Enter,
    });
    self.box_MultipleOR_300 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_300;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_300");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1609324517");
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
        [0] = self.f_box_MultipleOR_300_Out,
    });
    self.box_SetWaveSpawner_139 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1615112380");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_139_Out,
    });
    self.box_SetWaveSpawner_142 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1617290382");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_142_Out,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1624305442");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_SetWaveSpawner_208 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1625689750");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_208_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1626165790");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_7_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_7_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_305 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_305;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_305");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1627453130");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_305_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_305_NextWave,
    });
    self.box_SetWaveSpawner_205 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1627855115");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_205_Out,
    });
    self.box_OnceOnly_v3_414 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_414;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_414");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1627920107");
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
                [0] = self.f_box_OnceOnly_v3_414_Out_0,
            },
            count = 2,
        },
    });
    self.box_SetWaveSpawner_138 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1635831915");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_138_Out,
    });
    self.box_SetWaveSpawner_267 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_267;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1659082616");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_267_Out,
    });
    self.box_SetWaveSpawner_141 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1683761615");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_141_Out,
    });
    self.box_SetWaveSpawner_329 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_329;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_329");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1690898296");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_329_Out,
    });
    self.box_IndexList_v2_335 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_335;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_335");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1702541899");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_335_Output_0,
                [1] = self.f_box_IndexList_v2_335_Output_1,
                [2] = self.f_box_IndexList_v2_335_Output_2,
                [3] = self.f_box_IndexList_v2_335_Output_3,
                [4] = self.f_box_IndexList_v2_335_Output_4,
                [5] = self.f_box_IndexList_v2_335_Output_5,
            },
            count = 6,
        },
    });
    self.box_ProximityTrigger_v3_58 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1704146290");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_58_Enter,
    });
    self.box_OnceOnly_v3_133 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1706120524");
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
                [0] = self.f_box_OnceOnly_v3_133_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Exp_Common_WaveSpawner_92 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1707592047");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_92_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_92_NextWave,
    });
    self.box_MultipleOR_286 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_286;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_286");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1712488006");
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
        [0] = self.f_box_MultipleOR_286_Out,
    });
    self.box_SetWaveSpawner_278 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1748035281");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_278_Out,
    });
    self.box_IndexList_v2_325 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_325;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_325");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1749650453");
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
                [0] = self.f_box_IndexList_v2_325_Output_0,
                [1] = self.f_box_IndexList_v2_325_Output_1,
                [2] = self.f_box_IndexList_v2_325_Output_2,
            },
            count = 3,
        },
    });
    self.box_SetWaveSpawner_44 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1754488026");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_44_Out,
    });
    self.box_IndexList_v2_157 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1770346228");
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
                [0] = self.f_box_IndexList_v2_157_Output_0,
                [1] = self.f_box_IndexList_v2_157_Output_1,
                [2] = self.f_box_IndexList_v2_157_Output_2,
            },
            count = 3,
        },
    });
    self.box_IndexList_v2_347 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_347;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_347");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1778723924");
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
                [0] = self.f_box_IndexList_v2_347_Output_0,
                [1] = self.f_box_IndexList_v2_347_Output_1,
                [2] = self.f_box_IndexList_v2_347_Output_2,
            },
            count = 3,
        },
    });
    self.box_SetWaveSpawner_245 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_245;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1779755290");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_245_Out,
    });
    self.box_IndexList_v2_72 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1780260775");
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
                [0] = self.f_box_IndexList_v2_72_Output_0,
                [1] = self.f_box_IndexList_v2_72_Output_1,
                [2] = self.f_box_IndexList_v2_72_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_Exp_Common_WaveSpawner_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1797226095");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_4_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_4_NextWave,
    });
    self.box_SetWaveSpawner_2 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1801879606");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_2_Out,
    });
    self.box_InfinityWaveCount_16 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
    l0 = self.box_InfinityWaveCount_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfinityWaveCount_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1815615881");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_InfinityWaveCount_16_End,
        -- Out,
        [1] = self.f_box_InfinityWaveCount_16_Out,
    });
    self.box_SpawnAI_80 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1835508832");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_WaveSpawner_304 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_304;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_304");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1864296503");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_304_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_304_NextWave,
    });
    self.box_SetWaveSpawner_145 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1864475158");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_145_Out,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1864579960");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
    self.box_IndexList_v2_198 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1867130779");
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
                [0] = self.f_box_IndexList_v2_198_Output_0,
                [1] = self.f_box_IndexList_v2_198_Output_1,
                [2] = self.f_box_IndexList_v2_198_Output_2,
            },
            count = 3,
        },
    });
    self.box_Gate_v3_222 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1871048333");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_222_Out,
    });
    self.box_SetWaveSpawner_249 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1881133627");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_249_Out,
    });
    self.box_SetWaveSpawner_237 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1887404166");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_237_Out,
    });
    self.box_MessageListener_v3_69 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1901958160");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_69_Received,
    });
    self.box_SetWaveSpawner_111 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1904785238");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_111_Out,
    });
    self.box_SetWaveSpawner_274 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_274");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1911453493");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_274_Out,
    });
    self.box_GroupIter_190 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1914732079");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_190_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_190_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_190_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_190_Stopped,
    });
    self.box_Brick_Exp_Common_WaveSpawner_292 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_292;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_292");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1931539578");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_292_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_292_NextWave,
    });
    self.box_SetWaveSpawner_175 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1933911949");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_175_Out,
    });
    self.box_SetWaveSpawner_327 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_327;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_327");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1936371494");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_327_Out,
    });
    self.box_GroupSizeListener_v6_93 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1943247830");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_93_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_93_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_93_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_93_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_93_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_93_MemberSpawned,
    });
    self.box_Random_285 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_285");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1948512600");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Random_285_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_285_Output_0,
                [1] = self.f_box_Random_285_Output_1,
                [2] = self.f_box_Random_285_Output_2,
                [3] = self.f_box_Random_285_Output_3,
            },
            count = 4,
        },
    });
    self.box_SetWaveSpawner_149 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1952250536");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_149_Out,
    });
    self.box_MultipleOR_115 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1954405720");
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
        [0] = self.f_box_MultipleOR_115_Out,
    });
    self.box_Delay_v5_378 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_378;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_378");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1963519402");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_378_TimeElapsed,
    });
    self.box_SetWaveSpawner_277 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1966401181");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_277_Out,
    });
    self.box_SetWaveSpawner_153 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1966444542");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_153_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_306 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_306;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_306");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1968897634");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_306_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_306_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_317 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_317;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_317");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1974771657");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_317_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_317_NextWave,
    });
    self.box_Random_308 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_308;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_308");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1986641544");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Random_308_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_308_Output_0,
                [1] = self.f_box_Random_308_Output_1,
                [2] = self.f_box_Random_308_Output_2,
            },
            count = 3,
        },
    });
    self.box_OnceOnly_v3_370 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_370;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_370");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1993749905");
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
                [0] = self.f_box_OnceOnly_v3_370_Out_0,
            },
            count = 2,
        },
    });
    self.box_InfinityWaveCount_298 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
    l0 = self.box_InfinityWaveCount_298;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfinityWaveCount_298");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2006448822");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_InfinityWaveCount_298_End,
        -- Out,
        [1] = self.f_box_InfinityWaveCount_298_Out,
    });
    self.box_OnceOnly_v3_147 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2011886953");
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
                [0] = self.f_box_OnceOnly_v3_147_Out_0,
            },
            count = 2,
        },
    });
    self.box_SetWaveSpawner_42 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2012113751");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_42_Out,
    });
    self.box_InfinityWaveCount_8 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.InfinityWaveCount.debug.lua");
    l0 = self.box_InfinityWaveCount_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InfinityWaveCount_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2018433793");
    l0:SetConnections({
        -- End,
        [0] = self.f_box_InfinityWaveCount_8_End,
        -- Out,
        [1] = self.f_box_InfinityWaveCount_8_Out,
    });
    self.box_Delay_v5_185 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2019184221");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_185_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_185_TimeElapsed,
    });
    self.box_Gate_v3_221 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2021090328");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_221_Out,
    });
    self.box_SetWaveSpawner_243 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2029261609");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_243_Out,
    });
    self.box_SetWaveSpawner_109 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2030395440");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_109_Out,
    });
    self.box_Delay_v5_345 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_345;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_345");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2032682012");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_345_TimeElapsed,
    });
    self.box_SetWaveSpawner_154 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2034736706");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_154_Out,
    });
    self.box_Canyon_C2_CTP_010_Enemy_D_74 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.Canyon_C2_CTP_010_Enemy_D.debug.lua");
    l0 = self.box_Canyon_C2_CTP_010_Enemy_D_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_C2_CTP_010_Enemy_D_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2050953843");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Canyon_C2_CTP_010_Enemy_D_74_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_226 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2076624851");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_226_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_226_NextWave,
    });
    self.box_SetWaveSpawner_151 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2077453957");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_151_Out,
    });
    self.box_OnceOnly_v3_231 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2087133619");
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
                [0] = self.f_box_OnceOnly_v3_231_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_211 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2089014978");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_211_TimeElapsed,
    });
    self.box_Brick_Exp_Common_WaveSpawner_225 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2103995114");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_225_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_225_NextWave,
    });
    self.box_SetWaveSpawner_247 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2105093015");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_247_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_23 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2126646769");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_23_AllowedRemainingNPCUpdated,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_23_NextWave,
    });
    self.box_SetWaveSpawner_178 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.SetWaveSpawner.debug.lua");
    l0 = self.box_SetWaveSpawner_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetWaveSpawner_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2142964075");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetWaveSpawner_178_Out,
    });
    self.box_IndexList_v2_332 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_332;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_332");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2146648254");
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
                [0] = self.f_box_IndexList_v2_332_Output_0,
                [1] = self.f_box_IndexList_v2_332_Output_1,
                [2] = self.f_box_IndexList_v2_332_Output_2,
            },
            count = 3,
        },
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1464064899", "1464064899", "Canyon_C2_CTP_010_Enemy", "In", "box_OutputOrder_v2_59.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_52();
    l0 = self.box_MultipleAND_v2_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|455309924", "455309924", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_54.Out", "box_MultipleAND_v2_52.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_368_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_Canyon_C2_CTP_010_Enemy_A_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|962274311", "962274311", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_368.Out", "box_Canyon_C2_CTP_010_Enemy_A_62.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_336_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_Canyon_C2_CTP_010_Enemy_B_120;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1060657233", "1060657233", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_336.Out", "box_Canyon_C2_CTP_010_Enemy_B_120.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_337_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_Canyon_C2_CTP_010_Enemy_C_125;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1772558879", "1772558879", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_337.Out", "box_Canyon_C2_CTP_010_Enemy_C_125.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_338_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_Canyon_C2_CTP_010_Enemy_D_74;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1833588318", "1833588318", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_338.Out", "box_Canyon_C2_CTP_010_Enemy_D_74.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_339_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_Canyon_C2_CTP_010_Enemy_E_60;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1512815203", "1512815203", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_339.Out", "box_Canyon_C2_CTP_010_Enemy_E_60.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_340_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_Canyon_C2_CTP_010_Enemy_F_123;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|121845731", "121845731", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_340.Out", "box_Canyon_C2_CTP_010_Enemy_F_123.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_355_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_360();
    l0 = self.box_ProximityTrigger_v3_360;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|428296019", "428296019", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_355.Out", "box_ProximityTrigger_v3_360.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_354_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_356();
    l0 = self.box_ProximityTrigger_v3_356;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1783709350", "1783709350", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_354.Out", "box_ProximityTrigger_v3_356.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_332();
    l0 = self.box_IndexList_v2_332;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|898674233", "898674233", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_22.Out", "box_IndexList_v2_332.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_StateListener_v2_334();
    l0 = self.box_StateListener_v2_334;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1269318151", "1269318151", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_22.Out", "box_StateListener_v2_334.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_224_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_215();
    l0 = self.box_Gate_v3_215;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1233292161", "1233292161", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_224.Out", "box_Gate_v3_215.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_129();
    l0 = self.box_Gate_v3_129;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1281243142", "1281243142", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_224.Out", "box_Gate_v3_129.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_222();
    l0 = self.box_Gate_v3_222;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1149230871", "1149230871", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_224.Out", "box_Gate_v3_222.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_218();
    l0 = self.box_Gate_v3_218;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1042656533", "1042656533", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_224.Out", "box_Gate_v3_218.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_221();
    l0 = self.box_Gate_v3_221;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1807456485", "1807456485", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_224.Out", "box_Gate_v3_221.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_57_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_186;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|774496631", "774496631", "Canyon_C2_CTP_010_Enemy", "box_Simple_Node_57.Out", "box_OnceOnly_v3_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_238_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_268();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_238;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_268;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|124725528", "124725528", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_238.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_268.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_238_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_268();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_238;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_268;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1854389077", "1854389077", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_238.NextWave", "box_Brick_Exp_Common_WaveSpawner_268.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_348_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_353();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1274820051", "1274820051", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_348.Enabled", "box_UseContextualActionModifier_v3_353.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_252_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_252;
    l1 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1165395226", "1165395226", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_252.Out", "box_MultipleOR_171.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_314_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_314;
    l1 = self.box_MultipleOR_312;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|653332007", "653332007", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_314.NextWave", "box_MultipleOR_312.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_282_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_92();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_282;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_92;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2120140512", "2120140512", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_282.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_92.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_282_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_92();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_282;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_92;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|9638669", "9638669", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_282.NextWave", "box_Brick_Exp_Common_WaveSpawner_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetWaveSpawner_150_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_262();
    l0 = self.box_SetWaveSpawner_150;
    l1 = self.box_SetWaveSpawner_262;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|551525057", "551525057", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_150.Out", "box_SetWaveSpawner_262.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_TriggerState_v2_376_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_213();
    l0 = self.box_ProximityTrigger_v3_213;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|295370112", "295370112", "Canyon_C2_CTP_010_Enemy", "box_TriggerState_v2_376.Enabled", "box_ProximityTrigger_v3_213.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetWaveSpawner_12_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_12;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1052932078", "1052932078", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_12.Out", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_134_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_152();
    l0 = self.box_IndexList_v2_134;
    l1 = self.box_SetWaveSpawner_152;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|219689519", "219689519", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_134.Output", "box_SetWaveSpawner_152.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_134_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_100();
    l0 = self.box_IndexList_v2_134;
    l1 = self.box_SetWaveSpawner_100;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1020699313", "1020699313", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_134.Output", "box_SetWaveSpawner_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_134_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_44();
    l0 = self.box_IndexList_v2_134;
    l1 = self.box_SetWaveSpawner_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1838680783", "1838680783", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_134.Output", "box_SetWaveSpawner_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_TriggerState_v2_373_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_128();
    l0 = self.box_ProximityTrigger_v3_128;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|907303256", "907303256", "Canyon_C2_CTP_010_Enemy", "box_TriggerState_v2_373.Enabled", "box_ProximityTrigger_v3_128.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_110_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_183();
    l0 = self.box_MultipleOR_110;
    l1 = self.box_SetWaveSpawner_183;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|64247324", "64247324", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_110.Out", "box_SetWaveSpawner_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_186_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_265();
    l0 = self.box_OnceOnly_v3_186;
    l1 = self.box_Delay_v5_265;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1725373493", "1725373493", "Canyon_C2_CTP_010_Enemy", "box_OnceOnly_v3_186.Out", "box_Delay_v5_265.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_127_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_87();
    l0 = self.box_OnceOnly_v3_127;
    l1 = self.box_IndexList_v2_87;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1988995547", "1988995547", "Canyon_C2_CTP_010_Enemy", "box_OnceOnly_v3_127.Out", "box_IndexList_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_365_Out()
    self:OnExit_box_SetInteger_v2_365_Out();
end;

function export:f_box_UseContextualActionModifier_v3_197_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_202();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|720321028", "720321028", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_197.Disabled", "box_UseContextualActionModifier_v3_202.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_220_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetWaveSpawner_42();
    l0 = self.box_SetWaveSpawner_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|104290762", "104290762", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_220.Out", "box_SetWaveSpawner_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_220_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_224();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|522272221", "522272221", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_220.Out", "box_Simple_Node_224.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_220_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_221();
    l0 = self.box_Gate_v3_221;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|675366420", "675366420", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_220.Out", "box_Gate_v3_221.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_52();
    l0 = self.box_MultipleOR_10;
    l1 = self.box_MultipleAND_v2_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|902038703", "902038703", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_10.Out", "box_MultipleAND_v2_52.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_SetWaveSpawner_152_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_261();
    l0 = self.box_SetWaveSpawner_152;
    l1 = self.box_SetWaveSpawner_261;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|25323984", "25323984", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_152.Out", "box_SetWaveSpawner_261.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_287_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_303();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_287;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_303;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|559740391", "559740391", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_287.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_303.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_287_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_287;
    l1 = self.box_InfinityWaveCount_298;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1699051715", "1699051715", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_287.NextWave", "box_InfinityWaveCount_298.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_301_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_301;
    l1 = self.box_MultipleOR_290;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1197366332", "1197366332", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_301.NextWave", "box_MultipleOR_290.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_389_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_308();
    l0 = self.box_Random_308;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|569760355", "569760355", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_389.Out", "box_Random_308.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_389_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_319;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|136590565", "136590565", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_389.Out", "box_MultipleOR_319.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetWaveSpawner_256_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_260();
    l0 = self.box_SetWaveSpawner_256;
    l1 = self.box_SetWaveSpawner_260;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1273427342", "1273427342", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_256.Out", "box_SetWaveSpawner_260.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_194_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_195();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1790153182", "1790153182", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_194.Enabled", "box_UseContextualActionModifier_v3_195.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_113_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_209();
    l0 = self.box_SetWaveSpawner_113;
    l1 = self.box_SetWaveSpawner_209;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2067188969", "2067188969", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_113.Out", "box_SetWaveSpawner_209.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_202_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_201();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|612898780", "612898780", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_202.Disabled", "box_UseContextualActionModifier_v3_201.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_374_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_58();
    l0 = self.box_ProximityTrigger_v3_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|496098116", "496098116", "Canyon_C2_CTP_010_Enemy", "box_TriggerState_v2_374.Enabled", "box_ProximityTrigger_v3_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetWaveSpawner_160_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_251();
    l0 = self.box_SetWaveSpawner_160;
    l1 = self.box_SetWaveSpawner_251;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|183100621", "183100621", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_160.Out", "box_SetWaveSpawner_251.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_148_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_164();
    l0 = self.box_SetWaveSpawner_148;
    l1 = self.box_IndexList_v2_164;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2085188745", "2085188745", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_148.Out", "box_IndexList_v2_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_236_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_325();
    l0 = self.box_SetWaveSpawner_236;
    l1 = self.box_IndexList_v2_325;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1870516147", "1870516147", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_236.Out", "box_IndexList_v2_325.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_288_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_291();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_288;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_291;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|577560044", "577560044", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_288.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_291.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_288_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_288;
    l1 = self.box_MultipleOR_290;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1369133993", "1369133993", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_288.NextWave", "box_MultipleOR_290.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_311_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_310();
    l0 = self.box_MultipleOR_311;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_310;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|62458065", "62458065", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_311.Out", "box_Brick_Exp_Common_WaveSpawner_310.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_53_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_218();
    l0 = self.box_ProximityTrigger_v3_53;
    l1 = self.box_Gate_v3_218;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|872955358", "872955358", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_53.Enter", "box_Gate_v3_218.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_132_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_376();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1117231932", "1117231932", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_132.Out", "box_TriggerState_v2_376.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_375();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|263412476", "263412476", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_132.Out", "box_TriggerState_v2_375.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_374();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1488956295", "1488956295", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_132.Out", "box_TriggerState_v2_374.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_372();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|670541929", "670541929", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_132.Out", "box_TriggerState_v2_372.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_373();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|320415792", "320415792", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_132.Out", "box_TriggerState_v2_373.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_29_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_32();
    l0 = self.box_ProximityTrigger_v3_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|591722784", "591722784", "Canyon_C2_CTP_010_Enemy", "box_TriggerState_v2_29.Enabled", "box_ProximityTrigger_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetWaveSpawner_12();
    l0 = self.box_SetWaveSpawner_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|228465644", "228465644", "Canyon_C2_CTP_010_Enemy", "box_SetContextualStrategy_30.Out", "box_SetWaveSpawner_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_173_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_237();
    l0 = self.box_SetWaveSpawner_173;
    l1 = self.box_SetWaveSpawner_237;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1795550758", "1795550758", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_173.Out", "box_SetWaveSpawner_237.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_150();
    l0 = self.box_MultipleOR_48;
    l1 = self.box_SetWaveSpawner_150;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1832172661", "1832172661", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_48.Out", "box_SetWaveSpawner_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_49();
    l0 = self.box_Random_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|219895102", "219895102", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_55.Out", "box_Random_49.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_227;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|141980980", "141980980", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_55.Out", "box_MultipleOR_227.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_293_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_285();
    l0 = self.box_MultipleOR_293;
    l1 = self.box_Random_285;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1946830993", "1946830993", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_293.Out", "box_Random_285.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_161_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_254();
    l0 = self.box_SetWaveSpawner_161;
    l1 = self.box_SetWaveSpawner_254;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|201543476", "201543476", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_161.Out", "box_SetWaveSpawner_254.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_163_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_252();
    l0 = self.box_SetWaveSpawner_163;
    l1 = self.box_SetWaveSpawner_252;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|355110658", "355110658", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_163.Out", "box_SetWaveSpawner_252.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_45();
    l0 = self.box_MultipleOR_89;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1689112244", "1689112244", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_89.Out", "box_SetInteger_v2_45.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_78_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_Canyon_C2_CTP_010_Enemy_F_123;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|550917920", "550917920", "Canyon_C2_CTP_010_Enemy", "box_MissionBlockLayer_78.Activated", "box_Canyon_C2_CTP_010_Enemy_F_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_MultipleOR_313_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_306();
    l0 = self.box_MultipleOR_313;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_306;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|368072405", "368072405", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_313.Out", "box_Brick_Exp_Common_WaveSpawner_306.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_350_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_159();
    l0 = self.box_IndexList_v2_159;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|506863393", "506863393", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_350.Enabled", "box_IndexList_v2_159.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_272_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_274();
    l0 = self.box_SetWaveSpawner_272;
    l1 = self.box_SetWaveSpawner_274;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1485010687", "1485010687", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_272.Out", "box_SetWaveSpawner_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_296_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_303();
    l0 = self.box_MultipleOR_296;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_303;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|272258304", "272258304", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_296.Out", "box_Brick_Exp_Common_WaveSpawner_303.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetWaveSpawner_207_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_207;
    l1 = self.box_OnceOnly_v3_147;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1254232524", "1254232524", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_207.Out", "box_OnceOnly_v3_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_283_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_284();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_283;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_284;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1463411442", "1463411442", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_283.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_284.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_283_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_284();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_283;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_284;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1916821584", "1916821584", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_283.NextWave", "box_Brick_Exp_Common_WaveSpawner_284.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_87_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_23();
    l0 = self.box_IndexList_v2_87;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1926055078", "1926055078", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_87.Output", "box_Brick_Exp_Common_WaveSpawner_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_87_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_282();
    l0 = self.box_IndexList_v2_87;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_282;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1617530032", "1617530032", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_87.Output", "box_Brick_Exp_Common_WaveSpawner_282.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_87_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_322();
    l0 = self.box_IndexList_v2_87;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_322;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|3738951", "3738951", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_87.Output", "box_Brick_Exp_Common_WaveSpawner_322.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_4();
    l0 = self.box_MultipleOR_13;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|683090799", "683090799", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_13.Out", "box_Brick_Exp_Common_WaveSpawner_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_176_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_377();
    l0 = self.box_OnceOnly_v3_176;
    l1 = self.box_Delay_v5_377;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1321551860", "1321551860", "Canyon_C2_CTP_010_Enemy", "box_OnceOnly_v3_176.Out", "box_Delay_v5_377.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetWaveSpawner_181_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_239();
    l0 = self.box_SetWaveSpawner_181;
    l1 = self.box_SetWaveSpawner_239;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|496757036", "496757036", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_181.Out", "box_SetWaveSpawner_239.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_315_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_310();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_315;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_310;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1130769705", "1130769705", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_315.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_310.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_315_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_315;
    l1 = self.box_MultipleOR_311;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|967099915", "967099915", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_315.NextWave", "box_MultipleOR_311.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_297_End()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_297;
    l1 = self.box_MultipleOR_286;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|759268800", "759268800", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_297.End", "box_MultipleOR_286.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_297_Out()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_297;
    l1 = self.box_MultipleOR_296;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|908726486", "908726486", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_297.Out", "box_MultipleOR_296.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_351_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_352();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|267107986", "267107986", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_351.Disabled", "box_UseContextualActionModifier_v3_352.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_184_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_203();
    l0 = self.box_SetWaveSpawner_184;
    l1 = self.box_SetWaveSpawner_203;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1690934897", "1690934897", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_184.Out", "box_SetWaveSpawner_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_166_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_241();
    l0 = self.box_SetWaveSpawner_166;
    l1 = self.box_SetWaveSpawner_241;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|146137359", "146137359", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_166.Out", "box_SetWaveSpawner_241.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_265_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_264();
    l0 = self.box_Delay_v5_265;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|989370939", "989370939", "Canyon_C2_CTP_010_Enemy", "box_Delay_v5_265.TimeElapsed", "box_Compare_Integers_264.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_94_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_101();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|97504247", "97504247", "Canyon_C2_CTP_010_Enemy", "box_GetActivityFact_94.FactSet", "box_MissionBlockLayer_101.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_105();
    l0 = self.box_MultipleOR_104;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|97464511", "97464511", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_104.Out", "box_GetActivityFact_105.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_180_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_240();
    l0 = self.box_SetWaveSpawner_180;
    l1 = self.box_SetWaveSpawner_240;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1249738628", "1249738628", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_180.Out", "box_SetWaveSpawner_240.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_77_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_77;
    l1 = self.box_ActivityInitialized_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|106505378", "106505378", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_77.Out", "box_ActivityInitialized_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_StateListener_v2_334_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_335();
    l0 = self.box_StateListener_v2_334;
    l1 = self.box_IndexList_v2_335;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|515883968", "515883968", "Canyon_C2_CTP_010_Enemy", "box_StateListener_v2_334.Disabled", "box_IndexList_v2_335.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_334_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_333();
    l0 = self.box_StateListener_v2_334;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|266053787", "266053787", "Canyon_C2_CTP_010_Enemy", "box_StateListener_v2_334.StateStart", "box_SetActivityFact_333.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_227_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_49();
    l0 = self.box_MultipleOR_227;
    l1 = self.box_Random_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1640115587", "1640115587", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_227.Out", "box_Random_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_137_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_281();
    l0 = self.box_SetWaveSpawner_137;
    l1 = self.box_SetWaveSpawner_281;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1954637190", "1954637190", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_137.Out", "box_SetWaveSpawner_281.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_126_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_Canyon_C2_CTP_010_Enemy_C_125;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1996994100", "1996994100", "Canyon_C2_CTP_010_Enemy", "box_MissionBlockLayer_126.Activated", "box_Canyon_C2_CTP_010_Enemy_C_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_266_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_127;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1099370796", "1099370796", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_266.Out", "box_OnceOnly_v3_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_266_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_265();
    l0 = self.box_Delay_v5_265;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|682480033", "682480033", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_266.Out", "box_Delay_v5_265.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_ActivityAcknowledgeGate_98_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_98;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|130084665", "130084665", "Canyon_C2_CTP_010_Enemy", "box_ActivityAcknowledgeGate_98.Acknowledged", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_98_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_98;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|183969034", "183969034", "Canyon_C2_CTP_010_Enemy", "box_ActivityAcknowledgeGate_98.Reloaded", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_49_None()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = self.box_Random_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|353396463", "353396463", "Canyon_C2_CTP_010_Enemy", "box_Random_49.None", "box_OutputOrder_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_49_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_177();
    l0 = self.box_Random_49;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_177;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2005101044", "2005101044", "Canyon_C2_CTP_010_Enemy", "box_Random_49.Output", "box_Brick_Exp_Common_WaveSpawner_177.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_49_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_225();
    l0 = self.box_Random_49;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_225;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|369820480", "369820480", "Canyon_C2_CTP_010_Enemy", "box_Random_49.Output", "box_Brick_Exp_Common_WaveSpawner_225.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_49_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_226();
    l0 = self.box_Random_49;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_226;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1060791260", "1060791260", "Canyon_C2_CTP_010_Enemy", "box_Random_49.Output", "box_Brick_Exp_Common_WaveSpawner_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_49_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_228();
    l0 = self.box_Random_49;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_228;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|555024903", "555024903", "Canyon_C2_CTP_010_Enemy", "box_Random_49.Output", "box_Brick_Exp_Common_WaveSpawner_228.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_49_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_229();
    l0 = self.box_Random_49;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_229;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|622353088", "622353088", "Canyon_C2_CTP_010_Enemy", "box_Random_49.Output", "box_Brick_Exp_Common_WaveSpawner_229.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_326_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_149();
    l0 = self.box_MultipleOR_326;
    l1 = self.box_SetWaveSpawner_149;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1378656565", "1378656565", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_326.Out", "box_SetWaveSpawner_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_360_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_362();
    l0 = self.box_ProximityTrigger_v3_360;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1991537975", "1991537975", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_360.Enter", "box_SetContextualStrategy_362.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_273_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_273;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1561885944", "1561885944", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_273.Out", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_363_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_305();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_305;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|586790990", "586790990", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_363.Out", "box_Brick_Exp_Common_WaveSpawner_305.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_363_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_82();
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_82;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|416696605", "416696605", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_363.Out", "box_Brick_Exp_Common_EnemyHelicopterCleaner_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_235_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_235;
    l1 = self.box_MultipleOR_326;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2031006149", "2031006149", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_235.Out", "box_MultipleOR_326.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_SetRemainingNPCNUM_330;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1013838519", "1013838519", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_50.Out", "box_SetRemainingNPCNUM_330.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_28();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|894519024", "894519024", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_50.Out", "box_SetBoolean_v2_28.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|723496067", "723496067", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_50.Out", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_54();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1435162596", "1435162596", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_50.Out", "box_Simple_Node_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_165_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_214();
    l0 = self.box_OnceOnly_v3_165;
    l1 = self.box_Delay_v5_214;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1503562536", "1503562536", "Canyon_C2_CTP_010_Enemy", "box_OnceOnly_v3_165.Out", "box_Delay_v5_214.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetWaveSpawner_241_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_250();
    l0 = self.box_SetWaveSpawner_241;
    l1 = self.box_SetWaveSpawner_250;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|132123606", "132123606", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_241.Out", "box_SetWaveSpawner_250.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_341_Out()
    self:OnExit_box_SetInteger_v2_341_Out();
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_86();
    l0 = self.box_Gate_v3_86;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1809420014", "1809420014", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_90.Out", "box_Gate_v3_86.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_369;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1481555966", "1481555966", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_90.Out", "box_MultipleOR_369.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetWaveSpawner_203_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_203;
    l1 = self.box_MultipleOR_172;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1796408752", "1796408752", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_203.Out", "box_MultipleOR_172.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_342_Out()
    self:OnExit_box_SetInteger_v2_342_Out();
end;

function export:f_box_SetWaveSpawner_209_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_209;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1125806197", "1125806197", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_209.Out", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetActivityFact_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_38();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|274351061", "274351061", "Canyon_C2_CTP_010_Enemy", "box_SetActivityFact_39.Out", "box_SetContextualStrategy_38.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_233_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_233;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|657205550", "657205550", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_233.Out", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_76_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_79();
    l0 = self.box_ProximityTrigger_v3_76;
    l1 = self.box_SpawnAI_79;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2086258974", "2086258974", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_76.Enter", "box_SpawnAI_79.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetWaveSpawner_143_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_242();
    l0 = self.box_SetWaveSpawner_143;
    l1 = self.box_SetWaveSpawner_242;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1270491869", "1270491869", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_143.Out", "box_SetWaveSpawner_242.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_81_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_80();
    l0 = self.box_ProximityTrigger_v3_81;
    l1 = self.box_SpawnAI_80;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2060007371", "2060007371", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_81.Enter", "box_SpawnAI_80.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetWaveSpawner_146_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_168();
    l0 = self.box_SetWaveSpawner_146;
    l1 = self.box_IndexList_v2_168;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1704828286", "1704828286", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_146.Out", "box_IndexList_v2_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_369_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_369;
    l1 = self.box_OnceOnly_v3_370;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|131920934", "131920934", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_369.Out", "box_OnceOnly_v3_370.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetWaveSpawner_206_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_207();
    l0 = self.box_SetWaveSpawner_206;
    l1 = self.box_SetWaveSpawner_207;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1970653833", "1970653833", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_206.Out", "box_SetWaveSpawner_207.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = self.box_ActivityInitialized_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1948406927", "1948406927", "Canyon_C2_CTP_010_Enemy", "box_ActivityInitialized_46.Out", "box_OutputOrder_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_251_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_253();
    l0 = self.box_SetWaveSpawner_251;
    l1 = self.box_SetWaveSpawner_253;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2005291490", "2005291490", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_251.Out", "box_SetWaveSpawner_253.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_28_Out()
    self:OnExit_box_SetBoolean_v2_28_Out();
end;

function export:f_box_MultipleOR_108_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_111();
    l0 = self.box_MultipleOR_108;
    l1 = self.box_SetWaveSpawner_111;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1735359357", "1735359357", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_108.Out", "box_SetWaveSpawner_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_352_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_349();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2051777259", "2051777259", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_352.Disabled", "box_UseContextualActionModifier_v3_349.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_258_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_258;
    l1 = self.box_OnceOnly_v3_176;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1226540993", "1226540993", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_258.Out", "box_OnceOnly_v3_176.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetWaveSpawner_100_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_259();
    l0 = self.box_SetWaveSpawner_100;
    l1 = self.box_SetWaveSpawner_259;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|862765306", "862765306", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_100.Out", "box_SetWaveSpawner_259.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_328_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_135();
    l0 = self.box_SetWaveSpawner_328;
    l1 = self.box_IndexList_v2_135;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1210720691", "1210720691", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_328.Out", "box_IndexList_v2_135.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_284_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_292();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_284;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_292;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2059656745", "2059656745", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_284.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_292.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_284_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_284;
    l1 = self.box_MultipleOR_300;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1530667480", "1530667480", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_284.NextWave", "box_MultipleOR_300.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_15_End()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_15;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1262261690", "1262261690", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_15.End", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_15_Out()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_15;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1653138710", "1653138710", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_15.Out", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetWaveSpawner_204_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_204;
    l1 = self.box_MultipleOR_172;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1456518120", "1456518120", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_204.Out", "box_MultipleOR_172.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_371_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_371;
    l1 = self.box_FlareGunSTPSetup_346;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1774879286", "1774879286", "Canyon_C2_CTP_010_Enemy", "box_Delay_v5_371.TimeElapsed", "box_FlareGunSTPSetup_346.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_SetWaveSpawner_234_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_328();
    l0 = self.box_SetWaveSpawner_234;
    l1 = self.box_SetWaveSpawner_328;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1634564504", "1634564504", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_234.Out", "box_SetWaveSpawner_328.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_312_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_312;
    l1 = self.box_MultipleOR_319;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|449817983", "449817983", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_312.Out", "box_MultipleOR_319.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_218_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_217();
    l0 = self.box_Gate_v3_218;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|342332435", "342332435", "Canyon_C2_CTP_010_Enemy", "box_Gate_v3_218.Out", "box_OutputOrder_v2_217.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_26_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_379();
    l0 = self.box_OnceOnly_v3_26;
    l1 = self.box_Delay_v5_379;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1775813327", "1775813327", "Canyon_C2_CTP_010_Enemy", "box_OnceOnly_v3_26.Out", "box_Delay_v5_379.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MessageListener_v3_88_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_MessageListener_v3_88;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2105592148", "2105592148", "Canyon_C2_CTP_010_Enemy", "box_MessageListener_v3_88.Received", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_20_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_MessageListener_v3_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1702796615", "1702796615", "Canyon_C2_CTP_010_Enemy", "box_MessageListener_v3_20.Received", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_290_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_290;
    l1 = self.box_MultipleOR_293;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|84106912", "84106912", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_290.Out", "box_MultipleOR_293.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetWaveSpawner_257_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_258();
    l0 = self.box_SetWaveSpawner_257;
    l1 = self.box_SetWaveSpawner_258;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1233463813", "1233463813", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_257.Out", "box_SetWaveSpawner_258.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_269();
    l0 = self.box_SetWaveSpawner_43;
    l1 = self.box_SetWaveSpawner_269;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1463464246", "1463464246", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_43.Out", "box_SetWaveSpawner_269.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_357_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_283();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_283;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|468887572", "468887572", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_357.Out", "box_Brick_Exp_Common_WaveSpawner_283.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_357_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_83();
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_83;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1040877621", "1040877621", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_357.Out", "box_Brick_Exp_Common_EnemyHelicopterCleaner_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_344_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_185();
    l0 = self.box_Delay_v5_344;
    l1 = self.box_Delay_v5_185;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2048719537", "2048719537", "Canyon_C2_CTP_010_Enemy", "box_Delay_v5_344.TimeElapsed", "box_Delay_v5_185.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_172_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_37();
    l0 = self.box_MultipleOR_172;
    l1 = self.box_SetWaveSpawner_37;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1801691812", "1801691812", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_172.Out", "box_SetWaveSpawner_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_356_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_359();
    l0 = self.box_ProximityTrigger_v3_356;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1528348250", "1528348250", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_356.Enter", "box_SetContextualStrategy_359.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_228_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_229();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_228;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_229;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|151814449", "151814449", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_228.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_229.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_228_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_228;
    l1 = self.box_MultipleOR_230;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|411231241", "411231241", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_228.NextWave", "box_MultipleOR_230.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_InfinityWaveCount_321_End()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_321;
    l1 = self.box_MultipleOR_313;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2009891643", "2009891643", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_321.End", "box_MultipleOR_313.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_321_Out()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_321;
    l1 = self.box_MultipleOR_309;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|180372276", "180372276", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_321.Out", "box_MultipleOR_309.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_107_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|401083046", "401083046", "Canyon_C2_CTP_010_Enemy", "box_Compare_Integers_107.A_eq_B", "box_MultipleOR_110.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_107_A_ne_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetWaveSpawner_146();
    l0 = self.box_SetWaveSpawner_146;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|634918225", "634918225", "Canyon_C2_CTP_010_Enemy", "box_Compare_Integers_107.A_ne_B", "box_SetWaveSpawner_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_IndexList_v2_164_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_163();
    l0 = self.box_IndexList_v2_164;
    l1 = self.box_SetWaveSpawner_163;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|125085967", "125085967", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_164.Output", "box_SetWaveSpawner_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_164_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_162();
    l0 = self.box_IndexList_v2_164;
    l1 = self.box_SetWaveSpawner_162;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1504838077", "1504838077", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_164.Output", "box_SetWaveSpawner_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_164_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_143();
    l0 = self.box_IndexList_v2_164;
    l1 = self.box_SetWaveSpawner_143;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2138646434", "2138646434", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_164.Output", "box_SetWaveSpawner_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_BroadcastMessage_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_65();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2080462084", "2080462084", "Canyon_C2_CTP_010_Enemy", "box_BroadcastMessage_63.Out", "box_Print_v2_65.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_169_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_166();
    l0 = self.box_MultipleOR_169;
    l1 = self.box_SetWaveSpawner_166;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1184133956", "1184133956", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_169.Out", "box_SetWaveSpawner_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_25();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|557722130", "557722130", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_68.Out", "box_SetActivityFact_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_66();
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_66;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2093086450", "2093086450", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_68.Out", "box_Brick_Exp_Enemy_PackageGuardNearest_66.PackageStolenDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackageStolenDetected
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_68_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_27();
    l0 = self.box_PlayerFullyDetected_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1173180257", "1173180257", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_68.Out", "box_PlayerFullyDetected_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_156_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_270();
    l0 = self.box_SetWaveSpawner_156;
    l1 = self.box_SetWaveSpawner_270;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|806968717", "806968717", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_156.Out", "box_SetWaveSpawner_270.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_EnemyHelicopterCleaner_82_EnemyHelicopterLoaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_360();
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_82;
    l1 = self.box_ProximityTrigger_v3_360;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1836316460", "1836316460", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_EnemyHelicopterCleaner_82.EnemyHelicopterLoaded", "box_ProximityTrigger_v3_360.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetWaveSpawner_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_206();
    l0 = self.box_SetWaveSpawner_37;
    l1 = self.box_SetWaveSpawner_206;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1246686827", "1246686827", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_37.Out", "box_SetWaveSpawner_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_193_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_194();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1047652760", "1047652760", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_193.Enabled", "box_UseContextualActionModifier_v3_194.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_270_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_270;
    l1 = self.box_MultipleOR_155;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|598592277", "598592277", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_270.Out", "box_MultipleOR_155.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_344();
    l0 = self.box_Gate_v3_86;
    l1 = self.box_Delay_v5_344;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1637487529", "1637487529", "Canyon_C2_CTP_010_Enemy", "box_Gate_v3_86.Out", "box_Delay_v5_344.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Canyon_C2_CTP_010_Enemy_F_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_367();
    l0 = self.box_Canyon_C2_CTP_010_Enemy_F_123;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1591651862", "1591651862", "Canyon_C2_CTP_010_Enemy", "box_Canyon_C2_CTP_010_Enemy_F_123.Out", "box_SetInteger_v2_367.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_240_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_240;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|83562506", "83562506", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_240.Out", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetWaveSpawner_244_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_244;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|899248037", "899248037", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_244.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetWaveSpawner_131_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_235();
    l0 = self.box_SetWaveSpawner_131;
    l1 = self.box_SetWaveSpawner_235;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1693648011", "1693648011", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_131.Out", "box_SetWaveSpawner_235.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_144_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_184();
    l0 = self.box_IndexList_v2_144;
    l1 = self.box_SetWaveSpawner_184;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1692737159", "1692737159", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_144.Output", "box_SetWaveSpawner_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_144_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_170();
    l0 = self.box_IndexList_v2_144;
    l1 = self.box_SetWaveSpawner_170;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1327429067", "1327429067", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_144.Output", "box_SetWaveSpawner_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_144_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_179();
    l0 = self.box_IndexList_v2_144;
    l1 = self.box_SetWaveSpawner_179;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|418284831", "418284831", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_144.Output", "box_SetWaveSpawner_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_324_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_315();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_324;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_315;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|694445697", "694445697", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_324.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_315.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_324_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_315();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_324;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_315;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|133139391", "133139391", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_324.NextWave", "box_Brick_Exp_Common_WaveSpawner_315.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_TriggerState_v2_36_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_35();
    l0 = self.box_ProximityTrigger_v3_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|12699622", "12699622", "Canyon_C2_CTP_010_Enemy", "box_TriggerState_v2_36.Enabled", "box_ProximityTrigger_v3_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetWaveSpawner_248_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_279();
    l0 = self.box_SetWaveSpawner_248;
    l1 = self.box_SetWaveSpawner_279;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1753274131", "1753274131", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_248.Out", "box_SetWaveSpawner_279.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_275_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_275;
    l1 = self.box_MultipleOR_155;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1540845801", "1540845801", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_275.Out", "box_MultipleOR_155.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityFact_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_63();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1061801076", "1061801076", "Canyon_C2_CTP_010_Enemy", "box_SetActivityFact_47.Out", "box_BroadcastMessage_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_3_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_4();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_3;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1871085458", "1871085458", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_3.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_4.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_3_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_3;
    l1 = self.box_InfinityWaveCount_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1495521376", "1495521376", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_3.NextWave", "box_InfinityWaveCount_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetWaveSpawner_136_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_307();
    l0 = self.box_SetWaveSpawner_136;
    l1 = self.box_SetWaveSpawner_307;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1717517596", "1717517596", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_136.Out", "box_SetWaveSpawner_307.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Canyon_C2_CTP_010_Enemy_A_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_342();
    l0 = self.box_Canyon_C2_CTP_010_Enemy_A_62;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|631787459", "631787459", "Canyon_C2_CTP_010_Enemy", "box_Canyon_C2_CTP_010_Enemy_A_62.Out", "box_SetInteger_v2_342.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_322_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_318();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_322;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_318;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1159412910", "1159412910", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_322.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_318.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_322_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_318();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_322;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_318;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1637999167", "1637999167", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_322.NextWave", "box_Brick_Exp_Common_WaveSpawner_318.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_GetActivityFact_124_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_126();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2070144935", "2070144935", "Canyon_C2_CTP_010_Enemy", "box_GetActivityFact_124.FactSet", "box_MissionBlockLayer_126.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_119_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_118();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1143501446", "1143501446", "Canyon_C2_CTP_010_Enemy", "box_GetActivityFact_119.FactSet", "box_MissionBlockLayer_118.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_367_Out()
    self:OnExit_box_SetInteger_v2_367_Out();
end;

function export:f_box_MultipleOR_230_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_230;
    l1 = self.box_MultipleOR_227;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1097377505", "1097377505", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_230.Out", "box_MultipleOR_227.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_135_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_109();
    l0 = self.box_IndexList_v2_135;
    l1 = self.box_SetWaveSpawner_109;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1899012910", "1899012910", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_135.Output", "box_SetWaveSpawner_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_135_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_113();
    l0 = self.box_IndexList_v2_135;
    l1 = self.box_SetWaveSpawner_113;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1956529673", "1956529673", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_135.Output", "box_SetWaveSpawner_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_135_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_136();
    l0 = self.box_IndexList_v2_135;
    l1 = self.box_SetWaveSpawner_136;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1226201512", "1226201512", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_135.Output", "box_SetWaveSpawner_136.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_262_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_267();
    l0 = self.box_SetWaveSpawner_262;
    l1 = self.box_SetWaveSpawner_267;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|715288968", "715288968", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_262.Out", "box_SetWaveSpawner_267.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|110869379", "110869379", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_91.Out", "box_OutputOrder_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_223();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|529867491", "529867491", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_91.Out", "box_OutputOrder_v2_223.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_88();
    l0 = self.box_MessageListener_v3_88;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1463575589", "1463575589", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_91.Out", "box_MessageListener_v3_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_91_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_72();
    l0 = self.box_IndexList_v2_72;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1796845798", "1796845798", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_91.Out", "box_IndexList_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_91_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_93();
    l0 = self.box_GroupSizeListener_v6_93;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|548013420", "548013420", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_91.Out", "box_GroupSizeListener_v6_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_295_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_287();
    l0 = self.box_MultipleOR_295;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_287;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|715286783", "715286783", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_295.Out", "box_Brick_Exp_Common_WaveSpawner_287.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Canyon_C2_CTP_010_Enemy_B_120_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_343();
    l0 = self.box_Canyon_C2_CTP_010_Enemy_B_120;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1673540322", "1673540322", "Canyon_C2_CTP_010_Enemy", "box_Canyon_C2_CTP_010_Enemy_B_120.Out", "box_SetInteger_v2_343.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_35();
    l0 = self.box_ProximityTrigger_v3_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|304632718", "304632718", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_34.Out", "box_ProximityTrigger_v3_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_39();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|165257528", "165257528", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_34.Out", "box_SetActivityFact_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetWaveSpawner_117();
    l0 = self.box_SetWaveSpawner_117;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|578759894", "578759894", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_34.Out", "box_SetWaveSpawner_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_InfinityWaveCount_18_End()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_18;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|94591939", "94591939", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_18.End", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_18_Out()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_18;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|579286783", "579286783", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_18.Out", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_195_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_196();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1492887910", "1492887910", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_195.Enabled", "box_UseContextualActionModifier_v3_196.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_159_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_192();
    l0 = self.box_IndexList_v2_159;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1139528850", "1139528850", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_159.Output", "box_UseContextualActionModifier_v3_192.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_159_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_193();
    l0 = self.box_IndexList_v2_159;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2003049285", "2003049285", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_159.Output", "box_UseContextualActionModifier_v3_193.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_159_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_GroupIter_190();
    l0 = self.box_IndexList_v2_159;
    l1 = self.box_GroupIter_190;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|265604797", "265604797", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_159.Output", "box_GroupIter_190.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_263_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_266();
    l0 = self.box_OnceOnly_v3_263;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1956316491", "1956316491", "Canyon_C2_CTP_010_Enemy", "box_OnceOnly_v3_263.Out", "box_OutputOrder_v2_266.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_379_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = self.box_Delay_v5_379;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|459718934", "459718934", "Canyon_C2_CTP_010_Enemy", "box_Delay_v5_379.TimeElapsed", "box_Simple_Node_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_128_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_222();
    l0 = self.box_ProximityTrigger_v3_128;
    l1 = self.box_Gate_v3_222;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1825801", "1825801", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_128.Enter", "box_Gate_v3_222.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayerFullyDetected_27_Detected()
    local params, l0, l1;
    self:OnExit_box_PlayerFullyDetected_27_Detected();
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_PlayerFullyDetected_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|289347484", "289347484", "Canyon_C2_CTP_010_Enemy", "box_PlayerFullyDetected_27.Detected", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_27_Disabled()
    local params, l0, l1;
    self:OnExit_box_PlayerFullyDetected_27_Disabled();
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = self.box_PlayerFullyDetected_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1298635762", "1298635762", "Canyon_C2_CTP_010_Enemy", "box_PlayerFullyDetected_27.Disabled", "box_OutputOrder_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_27_Enabled()
    self:OnExit_box_PlayerFullyDetected_27_Enabled();
end;

function export:f_box_MultipleOR_171_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_178();
    l0 = self.box_MultipleOR_171;
    l1 = self.box_SetWaveSpawner_178;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|781597290", "781597290", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_171.Out", "box_SetWaveSpawner_178.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_140_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_232();
    l0 = self.box_SetWaveSpawner_140;
    l1 = self.box_SetWaveSpawner_232;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1675489346", "1675489346", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_140.Out", "box_SetWaveSpawner_232.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_98;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|307098347", "307098347", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_59.Out", "box_ActivityAcknowledgeGate_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ProximityTrigger_v3_212_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_215();
    l0 = self.box_ProximityTrigger_v3_212;
    l1 = self.box_Gate_v3_215;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|492447897", "492447897", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_212.Enter", "box_Gate_v3_215.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetWaveSpawner_259_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_259;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|251649739", "251649739", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_259.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Canyon_C2_CTP_010_Enemy_C_125_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_364();
    l0 = self.box_Canyon_C2_CTP_010_Enemy_C_125;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2094228764", "2094228764", "Canyon_C2_CTP_010_Enemy", "box_Canyon_C2_CTP_010_Enemy_C_125.Out", "box_SetInteger_v2_364.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_239_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_239;
    l1 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1028477861", "1028477861", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_239.Out", "box_MultipleOR_169.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_310_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_317();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_310;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_317;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|159227966", "159227966", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_310.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_317.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_310_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_310;
    l1 = self.box_InfinityWaveCount_323;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|855236586", "855236586", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_310.NextWave", "box_InfinityWaveCount_323.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_FlareGunSTPSetup_346_FlareUsed()
    local l0, l1;
    l0 = self.box_FlareGunSTPSetup_346;
    l1 = self.box_OnceOnly_v3_61;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|308990597", "308990597", "Canyon_C2_CTP_010_Enemy", "box_FlareGunSTPSetup_346.FlareUsed", "box_OnceOnly_v3_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_188_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_331();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|162201165", "162201165", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_188.Disabled", "box_SetInteger_v2_331.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InfinityWaveCount_323_End()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_323;
    l1 = self.box_MultipleOR_309;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|7183727", "7183727", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_323.End", "box_MultipleOR_309.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_323_Out()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_323;
    l1 = self.box_MultipleOR_311;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|548767621", "548767621", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_323.Out", "box_MultipleOR_311.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_32_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_ProximityTrigger_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|10443700", "10443700", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_32.Enter", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_170_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_204();
    l0 = self.box_SetWaveSpawner_170;
    l1 = self.box_SetWaveSpawner_204;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1821903764", "1821903764", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_170.Out", "box_SetWaveSpawner_204.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Canyon_C2_CTP_010_Enemy_E_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_366();
    l0 = self.box_Canyon_C2_CTP_010_Enemy_E_60;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1753012616", "1753012616", "Canyon_C2_CTP_010_Enemy", "box_Canyon_C2_CTP_010_Enemy_E_60.Out", "box_SetInteger_v2_366.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_316_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_304();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_316;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_304;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1403663640", "1403663640", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_316.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_304.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_316_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_316;
    l1 = self.box_MultipleOR_312;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|691344251", "691344251", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_316.NextWave", "box_MultipleOR_312.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_331_Out()
    self:OnExit_box_SetInteger_v2_331_Out();
end;

function export:f_box_SetWaveSpawner_179_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_205();
    l0 = self.box_SetWaveSpawner_179;
    l1 = self.box_SetWaveSpawner_205;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1549510627", "1549510627", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_179.Out", "box_SetWaveSpawner_205.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_52_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_52;
    l1 = self.box_OnceOnly_v3_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1787534576", "1787534576", "Canyon_C2_CTP_010_Enemy", "box_MultipleAND_v2_52.Out", "box_OnceOnly_v3_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetWaveSpawner_112_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_234();
    l0 = self.box_SetWaveSpawner_112;
    l1 = self.box_SetWaveSpawner_234;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|615735383", "615735383", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_112.Out", "box_SetWaveSpawner_234.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_299_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_288();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_299;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_288;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1111186515", "1111186515", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_299.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_288.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_299_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_299;
    l1 = self.box_InfinityWaveCount_302;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1593379216", "1593379216", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_299.NextWave", "box_InfinityWaveCount_302.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_RadioModifier_v3_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_358();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1966484813", "1966484813", "Canyon_C2_CTP_010_Enemy", "box_RadioModifier_v3_95.Out", "box_RadioModifier_v3_358.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InfinityWaveCount_302_End()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_302;
    l1 = self.box_MultipleOR_293;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|412871336", "412871336", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_302.End", "box_MultipleOR_293.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_302_Out()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_302;
    l1 = self.box_MultipleOR_286;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|852981758", "852981758", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_302.Out", "box_MultipleOR_286.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_229_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_229;
    l1 = self.box_MultipleOR_230;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|928938313", "928938313", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_229.NextWave", "box_MultipleOR_230.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Delay_v5_214_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = self.box_Delay_v5_214;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|606624180", "606624180", "Canyon_C2_CTP_010_Enemy", "box_Delay_v5_214.TimeElapsed", "box_Simple_Node_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_303_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_299();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_303;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_299;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1302910067", "1302910067", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_303.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_299.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_303_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_303;
    l1 = self.box_InfinityWaveCount_297;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1959569870", "1959569870", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_303.NextWave", "box_InfinityWaveCount_297.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetWaveSpawner_117_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_117;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|325939038", "325939038", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_117.Out", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_268_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_3();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_268;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1447797901", "1447797901", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_268.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_3.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_268_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_268;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|585310370", "585310370", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_268.NextWave", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetWaveSpawner_307_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_307;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|331354438", "331354438", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_307.Out", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetWaveSpawner_254_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_254;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1339860205", "1339860205", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_254.Out", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_6_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_7();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_6;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1446689164", "1446689164", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_6.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_7.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_6_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_6;
    l1 = self.box_InfinityWaveCount_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1079472495", "1079472495", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_6.NextWave", "box_InfinityWaveCount_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Gate_v3_129_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_210();
    l0 = self.box_Gate_v3_129;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1449477482", "1449477482", "Canyon_C2_CTP_010_Enemy", "box_Gate_v3_129.Out", "box_OutputOrder_v2_210.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1407272275", "1407272275", "Canyon_C2_CTP_010_Enemy", "box_SetActivityFact_25.Out", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_84_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_103();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1341854520", "1341854520", "Canyon_C2_CTP_010_Enemy", "box_GetActivityFact_84.FactSet", "box_MissionBlockLayer_103.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_94();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|91856761", "91856761", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_71.Out", "box_GetActivityFact_94.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_119();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1552668478", "1552668478", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_71.Out", "box_GetActivityFact_119.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_124();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1143006531", "1143006531", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_71.Out", "box_GetActivityFact_124.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_122();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1248480386", "1248480386", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_71.Out", "box_GetActivityFact_122.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_84();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|620947909", "620947909", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_71.Out", "box_GetActivityFact_84.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_99();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1056520856", "1056520856", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_71.Out", "box_GetActivityFact_99.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_351();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1862388999", "1862388999", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_71.Out", "box_UseContextualActionModifier_v3_351.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InfinityWaveCount_320_End()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_320;
    l1 = self.box_MultipleOR_319;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|186661909", "186661909", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_320.End", "box_MultipleOR_319.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_320_Out()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_320;
    l1 = self.box_MultipleOR_313;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1829470776", "1829470776", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_320.Out", "box_MultipleOR_313.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetWaveSpawner_250_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_250;
    l1 = self.box_OnceOnly_v3_133;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2064139880", "2064139880", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_250.Out", "box_OnceOnly_v3_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TriggerState_v2_375_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_212();
    l0 = self.box_ProximityTrigger_v3_212;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1974812424", "1974812424", "Canyon_C2_CTP_010_Enemy", "box_TriggerState_v2_375.Enabled", "box_ProximityTrigger_v3_212.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_35_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_29();
    l0 = self.box_ProximityTrigger_v3_35;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|996040409", "996040409", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_35.Enabled", "box_TriggerState_v2_29.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_35_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_ProximityTrigger_v3_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|969683394", "969683394", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_35.Enter", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_294_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_301();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_294;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_301;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|600051047", "600051047", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_294.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_301.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_294_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_294;
    l1 = self.box_MultipleOR_290;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1903225595", "1903225595", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_294.NextWave", "box_MultipleOR_290.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_291_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_294();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_291;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_294;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|781852135", "781852135", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_291.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_294.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_291_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_291;
    l1 = self.box_MultipleOR_290;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1654173828", "1654173828", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_291.NextWave", "box_MultipleOR_290.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_174_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_160();
    l0 = self.box_MultipleOR_174;
    l1 = self.box_SetWaveSpawner_160;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1251880529", "1251880529", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_174.Out", "box_SetWaveSpawner_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetActivityFact_105_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetWaveSpawner_141();
    l0 = self.box_SetWaveSpawner_141;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|535899417", "535899417", "Canyon_C2_CTP_010_Enemy", "box_GetActivityFact_105.FactNotSet", "box_SetWaveSpawner_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetActivityFact_105_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetWaveSpawner_145();
    l0 = self.box_SetWaveSpawner_145;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1349962233", "1349962233", "Canyon_C2_CTP_010_Enemy", "box_GetActivityFact_105.FactSet", "box_SetWaveSpawner_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_213_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_129();
    l0 = self.box_ProximityTrigger_v3_213;
    l1 = self.box_Gate_v3_129;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|343950505", "343950505", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_213.Enter", "box_Gate_v3_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_7();
    l0 = self.box_MultipleOR_9;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1794811195", "1794811195", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_9.Out", "box_Brick_Exp_Common_WaveSpawner_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetWaveSpawner_114_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_233();
    l0 = self.box_SetWaveSpawner_114;
    l1 = self.box_SetWaveSpawner_233;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|132407545", "132407545", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_114.Out", "box_SetWaveSpawner_233.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_215_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_216();
    l0 = self.box_Gate_v3_215;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|745443599", "745443599", "Canyon_C2_CTP_010_Enemy", "box_Gate_v3_215.Out", "box_OutputOrder_v2_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_201_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_199();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1020780447", "1020780447", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_201.Disabled", "box_UseContextualActionModifier_v3_199.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_255_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_255;
    l1 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|730770583", "730770583", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_255.Out", "box_MultipleOR_171.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_318_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_305();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_318;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_305;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1325754356", "1325754356", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_318.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_305.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_318_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_363();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_318;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1398000398", "1398000398", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_318.NextWave", "box_OutputOrder_v2_363.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_261_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_261;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|950744610", "950744610", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_261.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_210_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetWaveSpawner_97();
    l0 = self.box_SetWaveSpawner_97;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|368528334", "368528334", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_210.Out", "box_SetWaveSpawner_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_210_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_224();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1037358293", "1037358293", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_210.Out", "box_Simple_Node_224.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_210_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_129();
    l0 = self.box_Gate_v3_129;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|409825816", "409825816", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_210.Out", "box_Gate_v3_129.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_388_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_285();
    l0 = self.box_Random_285;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1777316083", "1777316083", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_388.Out", "box_Random_285.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_388_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_293;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|461389803", "461389803", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_388.Out", "box_MultipleOR_293.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetWaveSpawner_232_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_232;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1523454569", "1523454569", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_232.Out", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_TriggerState_v2_75_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_81();
    l0 = self.box_ProximityTrigger_v3_81;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1520585432", "1520585432", "Canyon_C2_CTP_010_Enemy", "box_TriggerState_v2_75.Enabled", "box_ProximityTrigger_v3_81.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_353_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_350();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|677718237", "677718237", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_353.Enabled", "box_UseContextualActionModifier_v3_350.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_242_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_242;
    l1 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1821032761", "1821032761", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_242.Out", "box_MultipleOR_171.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetWaveSpawner_279_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_116();
    l0 = self.box_SetWaveSpawner_279;
    l1 = self.box_IndexList_v2_116;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|337303187", "337303187", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_279.Out", "box_IndexList_v2_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_162_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_255();
    l0 = self.box_SetWaveSpawner_162;
    l1 = self.box_SetWaveSpawner_255;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|18868937", "18868937", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_162.Out", "box_SetWaveSpawner_255.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupIter_189_PawnIter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_188();
    l0 = self.box_GroupIter_189;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|977543543", "977543543", "Canyon_C2_CTP_010_Enemy", "box_GroupIter_189.PawnIter", "box_UseContextualActionModifier_v3_188.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_177_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_225();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_177;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_225;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|976928980", "976928980", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_177.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_225.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_177_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_177;
    l1 = self.box_MultipleOR_230;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1356965563", "1356965563", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_177.NextWave", "box_MultipleOR_230.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetWaveSpawner_246_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_236();
    l0 = self.box_SetWaveSpawner_246;
    l1 = self.box_SetWaveSpawner_236;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1802563888", "1802563888", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_246.Out", "box_SetWaveSpawner_236.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_167_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_243();
    l0 = self.box_SetWaveSpawner_167;
    l1 = self.box_SetWaveSpawner_243;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|456455071", "456455071", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_167.Out", "box_SetWaveSpawner_243.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_116_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_114();
    l0 = self.box_IndexList_v2_116;
    l1 = self.box_SetWaveSpawner_114;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1076630815", "1076630815", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_116.Output", "box_SetWaveSpawner_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_116_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_137();
    l0 = self.box_IndexList_v2_116;
    l1 = self.box_SetWaveSpawner_137;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|954619781", "954619781", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_116.Output", "box_SetWaveSpawner_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_116_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_140();
    l0 = self.box_IndexList_v2_116;
    l1 = self.box_SetWaveSpawner_140;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1212754918", "1212754918", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_116.Output", "box_SetWaveSpawner_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_168_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_181();
    l0 = self.box_IndexList_v2_168;
    l1 = self.box_SetWaveSpawner_181;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1927673243", "1927673243", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_168.Output", "box_SetWaveSpawner_181.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_168_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_175();
    l0 = self.box_IndexList_v2_168;
    l1 = self.box_SetWaveSpawner_175;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2077462177", "2077462177", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_168.Output", "box_SetWaveSpawner_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_168_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_167();
    l0 = self.box_IndexList_v2_168;
    l1 = self.box_SetWaveSpawner_167;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|828449291", "828449291", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_168.Output", "box_SetWaveSpawner_167.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_155_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_151();
    l0 = self.box_MultipleOR_155;
    l1 = self.box_SetWaveSpawner_151;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1158122464", "1158122464", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_155.Out", "box_SetWaveSpawner_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_5_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_6();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_5;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|806294117", "806294117", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_5.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_6.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_5_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_5;
    l1 = self.box_InfinityWaveCount_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1707574774", "1707574774", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_5.NextWave", "box_InfinityWaveCount_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MissionBlockLayer_121_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_Canyon_C2_CTP_010_Enemy_D_74;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1507808074", "1507808074", "Canyon_C2_CTP_010_Enemy", "box_MissionBlockLayer_121.Activated", "box_Canyon_C2_CTP_010_Enemy_D_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_Brick_Exp_Common_EnemyHelicopterCleaner_83_EnemyHelicopterLoaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_356();
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_83;
    l1 = self.box_ProximityTrigger_v3_356;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1226200982", "1226200982", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_EnemyHelicopterCleaner_83.EnemyHelicopterLoaded", "box_ProximityTrigger_v3_356.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetWaveSpawner_281_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_281;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|467687953", "467687953", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_281.Out", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_32();
    l0 = self.box_ProximityTrigger_v3_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1204308775", "1204308775", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_31.Out", "box_ProximityTrigger_v3_32.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|451964458", "451964458", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_31.Out", "box_SetActivityFact_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_183_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_144();
    l0 = self.box_SetWaveSpawner_183;
    l1 = self.box_IndexList_v2_144;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|607865396", "607865396", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_183.Out", "box_IndexList_v2_144.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_256();
    l0 = self.box_SetWaveSpawner_97;
    l1 = self.box_SetWaveSpawner_256;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|486937268", "486937268", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_97.Out", "box_SetWaveSpawner_256.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_61_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_371();
    l0 = self.box_OnceOnly_v3_61;
    l1 = self.box_Delay_v5_371;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|908495568", "908495568", "Canyon_C2_CTP_010_Enemy", "box_OnceOnly_v3_61.Out", "box_Delay_v5_371.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_182_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_180();
    l0 = self.box_IndexList_v2_182;
    l1 = self.box_SetWaveSpawner_180;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|257717472", "257717472", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_182.Output", "box_SetWaveSpawner_180.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_182_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_173();
    l0 = self.box_IndexList_v2_182;
    l1 = self.box_SetWaveSpawner_173;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|929729234", "929729234", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_182.Output", "box_SetWaveSpawner_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_182_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_161();
    l0 = self.box_IndexList_v2_182;
    l1 = self.box_SetWaveSpawner_161;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1772670896", "1772670896", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_182.Output", "box_SetWaveSpawner_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_101_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_Canyon_C2_CTP_010_Enemy_A_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|503051594", "503051594", "Canyon_C2_CTP_010_Enemy", "box_MissionBlockLayer_101.Activated", "box_Canyon_C2_CTP_010_Enemy_A_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_SetWaveSpawner_271_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_271;
    l1 = self.box_MultipleOR_326;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1850527878", "1850527878", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_271.Out", "box_MultipleOR_326.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Integers_264_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_263;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1376310709", "1376310709", "Canyon_C2_CTP_010_Enemy", "box_Compare_Integers_264.A_le_B", "box_OnceOnly_v3_263.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_377_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = self.box_Delay_v5_377;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2085156968", "2085156968", "Canyon_C2_CTP_010_Enemy", "box_Delay_v5_377.TimeElapsed", "box_Simple_Node_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_130_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_271();
    l0 = self.box_SetWaveSpawner_130;
    l1 = self.box_SetWaveSpawner_271;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1841201901", "1841201901", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_130.Out", "box_SetWaveSpawner_271.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_3();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1027168329", "1027168329", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_14.Out", "box_Brick_Exp_Common_WaveSpawner_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetWaveSpawner_253_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_253;
    l1 = self.box_OnceOnly_v3_165;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1998368670", "1998368670", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_253.Out", "box_OnceOnly_v3_165.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_11_End()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_11;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1042442767", "1042442767", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_11.End", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_11_Out()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_11;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1433280715", "1433280715", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_11.Out", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_InfinityWaveCount_289_End()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_289;
    l1 = self.box_MultipleOR_295;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|760594316", "760594316", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_289.End", "box_MultipleOR_295.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_289_Out()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_289;
    l1 = self.box_MultipleOR_300;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1557495248", "1557495248", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_289.Out", "box_MultipleOR_300.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetWaveSpawner_280_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_280;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1784820831", "1784820831", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_280.Out", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SetWaveSpawner_260_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_134();
    l0 = self.box_SetWaveSpawner_260;
    l1 = self.box_IndexList_v2_134;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|951160598", "951160598", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_260.Out", "box_IndexList_v2_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_276_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_278();
    l0 = self.box_SetWaveSpawner_276;
    l1 = self.box_SetWaveSpawner_278;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|84443555", "84443555", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_276.Out", "box_SetWaveSpawner_278.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_309_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_317();
    l0 = self.box_MultipleOR_309;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_317;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1897043534", "1897043534", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_309.Out", "box_Brick_Exp_Common_WaveSpawner_317.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetWaveSpawner_269_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_269;
    l1 = self.box_MultipleOR_326;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|238661842", "238661842", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_269.Out", "box_MultipleOR_326.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_349_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_198();
    l0 = self.box_IndexList_v2_198;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|262458986", "262458986", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_349.Disabled", "box_IndexList_v2_198.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_6();
    l0 = self.box_MultipleOR_17;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|933552777", "933552777", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_17.Out", "box_Brick_Exp_Common_WaveSpawner_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_319_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_308();
    l0 = self.box_MultipleOR_319;
    l1 = self.box_Random_308;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1046820159", "1046820159", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_319.Out", "box_Random_308.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_64_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_70();
    l0 = self.box_ProximityTrigger_v3_64;
    l1 = self.box_SpawnAI_70;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1671891764", "1671891764", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_64.Enter", "box_SpawnAI_70.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_300_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_292();
    l0 = self.box_MultipleOR_300;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_292;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2089626949", "2089626949", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_300.Out", "box_Brick_Exp_Common_WaveSpawner_292.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetWaveSpawner_139_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_247();
    l0 = self.box_SetWaveSpawner_139;
    l1 = self.box_SetWaveSpawner_247;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1149743037", "1149743037", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_139.Out", "box_SetWaveSpawner_247.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_142_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_182();
    l0 = self.box_SetWaveSpawner_142;
    l1 = self.box_IndexList_v2_182;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1189172926", "1189172926", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_142.Out", "box_IndexList_v2_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_51;
    l1 = self.box_OnceOnly_v3_414;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|377121909", "377121909", "Canyon_C2_CTP_010_Enemy", "box_Delay_v5_51.TimeElapsed", "box_OnceOnly_v3_414.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityFact_40_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_36();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|167172852", "167172852", "Canyon_C2_CTP_010_Enemy", "box_GetActivityFact_40.FactNotSet", "box_TriggerState_v2_36.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_40_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_54();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1455241426", "1455241426", "Canyon_C2_CTP_010_Enemy", "box_GetActivityFact_40.FactSet", "box_Simple_Node_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_208_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_329();
    l0 = self.box_SetWaveSpawner_208;
    l1 = self.box_SetWaveSpawner_329;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1297699906", "1297699906", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_208.Out", "box_SetWaveSpawner_329.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_7_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_177();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_7;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_177;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1591501565", "1591501565", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_7.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_177.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_7_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_7;
    l1 = self.box_InfinityWaveCount_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2055687379", "2055687379", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_7.NextWave", "box_InfinityWaveCount_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_305_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_324();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_305;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_324;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|366739711", "366739711", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_305.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_324.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_305_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_324();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_305;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_324;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1617517358", "1617517358", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_305.NextWave", "box_Brick_Exp_Common_WaveSpawner_324.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetWaveSpawner_205_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_205;
    l1 = self.box_MultipleOR_172;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1814396843", "1814396843", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_205.Out", "box_MultipleOR_172.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_414_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_132();
    l0 = self.box_OnceOnly_v3_414;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1353013001", "1353013001", "Canyon_C2_CTP_010_Enemy", "box_OnceOnly_v3_414.Out", "box_OutputOrder_v2_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_118_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_Canyon_C2_CTP_010_Enemy_B_120;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1396243375", "1396243375", "Canyon_C2_CTP_010_Enemy", "box_MissionBlockLayer_118.Activated", "box_Canyon_C2_CTP_010_Enemy_B_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_347();
    l0 = self.box_IndexList_v2_347;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|251991364", "251991364", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_21.Out", "box_IndexList_v2_347.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_345();
    l0 = self.box_Delay_v5_345;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1105481106", "1105481106", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_21.Out", "box_Delay_v5_345.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetWaveSpawner_138_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_248();
    l0 = self.box_SetWaveSpawner_138;
    l1 = self.box_SetWaveSpawner_248;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1479061938", "1479061938", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_138.Out", "box_SetWaveSpawner_248.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_267_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_267;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|935730768", "935730768", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_267.Out", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_366_Out()
    self:OnExit_box_SetInteger_v2_366_Out();
end;

function export:f_box_GetActivityFact_122_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_121();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2055907959", "2055907959", "Canyon_C2_CTP_010_Enemy", "box_GetActivityFact_122.FactSet", "box_MissionBlockLayer_121.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_99_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_78();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1808500556", "1808500556", "Canyon_C2_CTP_010_Enemy", "box_GetActivityFact_99.FactSet", "box_MissionBlockLayer_78.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_141_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_102();
    l0 = self.box_SetWaveSpawner_141;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1007213680", "1007213680", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_141.Out", "box_Compare_Integers_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_329_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_329;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|590617203", "590617203", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_329.Out", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_IndexList_v2_335_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_368();
    l0 = self.box_IndexList_v2_335;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1230563773", "1230563773", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_335.Output", "box_Simple_Node_368.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_335_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_336();
    l0 = self.box_IndexList_v2_335;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|134743067", "134743067", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_335.Output", "box_Simple_Node_336.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_335_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_337();
    l0 = self.box_IndexList_v2_335;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1217004784", "1217004784", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_335.Output", "box_Simple_Node_337.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_335_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_338();
    l0 = self.box_IndexList_v2_335;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1128115952", "1128115952", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_335.Output", "box_Simple_Node_338.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_335_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_339();
    l0 = self.box_IndexList_v2_335;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1095568783", "1095568783", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_335.Output", "box_Simple_Node_339.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_335_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_340();
    l0 = self.box_IndexList_v2_335;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1247890211", "1247890211", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_335.Output", "box_Simple_Node_340.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_58_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_221();
    l0 = self.box_ProximityTrigger_v3_58;
    l1 = self.box_Gate_v3_221;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|489539613", "489539613", "Canyon_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_58.Enter", "box_Gate_v3_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_133_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_378();
    l0 = self.box_OnceOnly_v3_133;
    l1 = self.box_Delay_v5_378;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2083624563", "2083624563", "Canyon_C2_CTP_010_Enemy", "box_OnceOnly_v3_133.Out", "box_Delay_v5_378.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_92_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_283();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_92;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_283;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1328987716", "1328987716", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_92.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_283.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_92_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_357();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_92;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|715183831", "715183831", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_92.NextWave", "box_OutputOrder_v2_357.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_286_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_299();
    l0 = self.box_MultipleOR_286;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_299;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|276586870", "276586870", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_286.Out", "box_Brick_Exp_Common_WaveSpawner_299.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_TriggerState_v2_67_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_64();
    l0 = self.box_ProximityTrigger_v3_64;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2042812167", "2042812167", "Canyon_C2_CTP_010_Enemy", "box_TriggerState_v2_67.Enabled", "box_ProximityTrigger_v3_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetWaveSpawner_278_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_278;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|599656529", "599656529", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_278.Out", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IndexList_v2_325_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_131();
    l0 = self.box_IndexList_v2_325;
    l1 = self.box_SetWaveSpawner_131;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1853800200", "1853800200", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_325.Output", "box_SetWaveSpawner_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_325_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_43();
    l0 = self.box_IndexList_v2_325;
    l1 = self.box_SetWaveSpawner_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1447034950", "1447034950", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_325.Output", "box_SetWaveSpawner_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_325_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_130();
    l0 = self.box_IndexList_v2_325;
    l1 = self.box_SetWaveSpawner_130;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|576175707", "576175707", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_325.Output", "box_SetWaveSpawner_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_244();
    l0 = self.box_SetWaveSpawner_44;
    l1 = self.box_SetWaveSpawner_244;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|278183616", "278183616", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_44.Out", "box_SetWaveSpawner_244.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_157_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_154();
    l0 = self.box_IndexList_v2_157;
    l1 = self.box_SetWaveSpawner_154;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1696459387", "1696459387", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_157.Output", "box_SetWaveSpawner_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_157_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_156();
    l0 = self.box_IndexList_v2_157;
    l1 = self.box_SetWaveSpawner_156;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|783466695", "783466695", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_157.Output", "box_SetWaveSpawner_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_157_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_153();
    l0 = self.box_IndexList_v2_157;
    l1 = self.box_SetWaveSpawner_153;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2086040481", "2086040481", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_157.Output", "box_SetWaveSpawner_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_347_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = self.box_IndexList_v2_347;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1484128289", "1484128289", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_347.Output", "box_Simple_Node_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_347_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_354();
    l0 = self.box_IndexList_v2_347;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|505846798", "505846798", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_347.Output", "box_Simple_Node_354.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_347_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_355();
    l0 = self.box_IndexList_v2_347;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|693741429", "693741429", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_347.Output", "box_Simple_Node_355.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_245_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_273();
    l0 = self.box_SetWaveSpawner_245;
    l1 = self.box_SetWaveSpawner_273;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|938705017", "938705017", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_245.Out", "box_SetWaveSpawner_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_72_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_67();
    l0 = self.box_IndexList_v2_72;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1707956966", "1707956966", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_72.Output", "box_TriggerState_v2_67.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_72_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_75();
    l0 = self.box_IndexList_v2_72;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|212461943", "212461943", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_72.Output", "box_TriggerState_v2_75.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_72_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_73();
    l0 = self.box_IndexList_v2_72;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1159273906", "1159273906", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_72.Output", "box_TriggerState_v2_73.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_158_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_66();
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_66;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|88479319", "88479319", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_158.Out", "box_Brick_Exp_Enemy_PackageGuardNearest_66.PackagePicked", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackagePicked
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_158_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_334();
    l0 = self.box_StateListener_v2_334;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|728077156", "728077156", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_158.Out", "box_StateListener_v2_334.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_158_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1796118887", "1796118887", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_158.Out", "box_Delay_v5_51.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_4_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_5();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_4;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1247724595", "1247724595", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_4.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_5.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_4_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_4;
    l1 = self.box_InfinityWaveCount_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1869327929", "1869327929", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_4.NextWave", "box_InfinityWaveCount_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetWaveSpawner_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_246();
    l0 = self.box_SetWaveSpawner_2;
    l1 = self.box_SetWaveSpawner_246;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1109195658", "1109195658", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_2.Out", "box_SetWaveSpawner_246.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_106_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|900358282", "900358282", "Canyon_C2_CTP_010_Enemy", "box_Compare_Integers_106.A_eq_B", "box_MultipleOR_110.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_106_A_ne_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_107();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|75527645", "75527645", "Canyon_C2_CTP_010_Enemy", "box_Compare_Integers_106.A_ne_B", "box_Compare_Integers_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_343_Out()
    self:OnExit_box_SetInteger_v2_343_Out();
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_FlareGunSTPSetup_346;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2044150717", "2044150717", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_56.Out", "box_FlareGunSTPSetup_346.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_86();
    l0 = self.box_Gate_v3_86;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1763897957", "1763897957", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_56.Out", "box_Gate_v3_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_InfinityWaveCount_16_End()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_16;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|563334932", "563334932", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_16.End", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_16_Out()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_16;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1703268777", "1703268777", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_16.Out", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_102_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetWaveSpawner_142();
    l0 = self.box_SetWaveSpawner_142;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1866994643", "1866994643", "Canyon_C2_CTP_010_Enemy", "box_Compare_Integers_102.A_eq_B", "box_SetWaveSpawner_142.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_102_A_ne_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetWaveSpawner_148();
    l0 = self.box_SetWaveSpawner_148;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|969640299", "969640299", "Canyon_C2_CTP_010_Enemy", "box_Compare_Integers_102.A_ne_B", "box_SetWaveSpawner_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_231;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1985716497", "1985716497", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_1.Out", "box_OnceOnly_v3_231.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_47();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1419951471", "1419951471", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_1.Out", "box_SetActivityFact_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_348();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|143594255", "143594255", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_1.Out", "box_UseContextualActionModifier_v3_348.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_369;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|395274745", "395274745", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_1.Out", "box_MultipleOR_369.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_95();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1948990262", "1948990262", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_1.Out", "box_RadioModifier_v3_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_304_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_314();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_304;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_314;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|903834974", "903834974", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_304.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_314.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_304_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_304;
    l1 = self.box_MultipleOR_312;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|777304453", "777304453", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_304.NextWave", "box_MultipleOR_312.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetWaveSpawner_145_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_106();
    l0 = self.box_SetWaveSpawner_145;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1403900739", "1403900739", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_145.Out", "box_Compare_Integers_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_5();
    l0 = self.box_MultipleOR_19;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1616632443", "1616632443", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_19.Out", "box_Brick_Exp_Common_WaveSpawner_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_198_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_200();
    l0 = self.box_IndexList_v2_198;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1668171856", "1668171856", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_198.Output", "box_UseContextualActionModifier_v3_200.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_198_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_197();
    l0 = self.box_IndexList_v2_198;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1200051740", "1200051740", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_198.Output", "box_UseContextualActionModifier_v3_197.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_198_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_GroupIter_189();
    l0 = self.box_IndexList_v2_198;
    l1 = self.box_GroupIter_189;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|403158048", "403158048", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_198.Output", "box_GroupIter_189.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_222_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_219();
    l0 = self.box_Gate_v3_222;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1184579359", "1184579359", "Canyon_C2_CTP_010_Enemy", "box_Gate_v3_222.Out", "box_OutputOrder_v2_219.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_249_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_249;
    l1 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1445724281", "1445724281", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_249.Out", "box_MultipleOR_169.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetWaveSpawner_237_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_237;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1430165114", "1430165114", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_237.Out", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_69_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_158();
    l0 = self.box_MessageListener_v3_69;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|404806557", "404806557", "Canyon_C2_CTP_010_Enemy", "box_MessageListener_v3_69.Received", "box_OutputOrder_v2_158.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_208();
    l0 = self.box_SetWaveSpawner_111;
    l1 = self.box_SetWaveSpawner_208;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1646500527", "1646500527", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_111.Out", "box_SetWaveSpawner_208.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_274_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_157();
    l0 = self.box_SetWaveSpawner_274;
    l1 = self.box_IndexList_v2_157;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1296154743", "1296154743", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_274.Out", "box_IndexList_v2_157.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupIter_190_PawnIter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_191();
    l0 = self.box_GroupIter_190;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1200882040", "1200882040", "Canyon_C2_CTP_010_Enemy", "box_GroupIter_190.PawnIter", "box_UseContextualActionModifier_v3_191.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_45_Out()
    self:OnExit_box_SetInteger_v2_45_Out();
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_292_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_287();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_292;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_287;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1099523089", "1099523089", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_292.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_287.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_292_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_292;
    l1 = self.box_InfinityWaveCount_289;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1627605297", "1627605297", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_292.NextWave", "box_InfinityWaveCount_289.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetWaveSpawner_175_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_249();
    l0 = self.box_SetWaveSpawner_175;
    l1 = self.box_SetWaveSpawner_249;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1220762818", "1220762818", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_175.Out", "box_SetWaveSpawner_249.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_TriggerState_v2_372_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_53();
    l0 = self.box_ProximityTrigger_v3_53;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|184455122", "184455122", "Canyon_C2_CTP_010_Enemy", "box_TriggerState_v2_372.Enabled", "box_ProximityTrigger_v3_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetWaveSpawner_327_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_327;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|673609451", "673609451", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_327.Out", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_364_Out()
    self:OnExit_box_SetInteger_v2_364_Out();
end;

function export:f_box_GroupSizeListener_v6_93_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_93;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1810575687", "1810575687", "Canyon_C2_CTP_010_Enemy", "box_GroupSizeListener_v6_93.MemberAdded", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_93_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_93;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|485032545", "485032545", "Canyon_C2_CTP_010_Enemy", "box_GroupSizeListener_v6_93.MemberRemoved", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_285_None()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_388();
    l0 = self.box_Random_285;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|144513474", "144513474", "Canyon_C2_CTP_010_Enemy", "box_Random_285.None", "box_OutputOrder_v2_388.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_285_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_288();
    l0 = self.box_Random_285;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_288;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1660531926", "1660531926", "Canyon_C2_CTP_010_Enemy", "box_Random_285.Output", "box_Brick_Exp_Common_WaveSpawner_288.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_285_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_291();
    l0 = self.box_Random_285;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_291;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1350370330", "1350370330", "Canyon_C2_CTP_010_Enemy", "box_Random_285.Output", "box_Brick_Exp_Common_WaveSpawner_291.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_285_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_294();
    l0 = self.box_Random_285;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_294;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|785213905", "785213905", "Canyon_C2_CTP_010_Enemy", "box_Random_285.Output", "box_Brick_Exp_Common_WaveSpawner_294.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_285_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_301();
    l0 = self.box_Random_285;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_301;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1145546754", "1145546754", "Canyon_C2_CTP_010_Enemy", "box_Random_285.Output", "box_Brick_Exp_Common_WaveSpawner_301.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetWaveSpawner_149_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_245();
    l0 = self.box_SetWaveSpawner_149;
    l1 = self.box_SetWaveSpawner_245;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|851764578", "851764578", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_149.Out", "box_SetWaveSpawner_245.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_115_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_139();
    l0 = self.box_MultipleOR_115;
    l1 = self.box_SetWaveSpawner_139;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1404315183", "1404315183", "Canyon_C2_CTP_010_Enemy", "box_MultipleOR_115.Out", "box_SetWaveSpawner_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_378_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = self.box_Delay_v5_378;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1299082882", "1299082882", "Canyon_C2_CTP_010_Enemy", "box_Delay_v5_378.TimeElapsed", "box_Simple_Node_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_277_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_277;
    l1 = self.box_MultipleOR_155;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|620606491", "620606491", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_277.Out", "box_MultipleOR_155.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetWaveSpawner_153_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_277();
    l0 = self.box_SetWaveSpawner_153;
    l1 = self.box_SetWaveSpawner_277;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1262152721", "1262152721", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_153.Out", "box_SetWaveSpawner_277.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_306_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_316();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_306;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_316;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1362289387", "1362289387", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_306.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_316.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_306_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_306;
    l1 = self.box_InfinityWaveCount_320;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|665679983", "665679983", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_306.NextWave", "box_InfinityWaveCount_320.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_317_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_306();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_317;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_306;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|887677747", "887677747", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_317.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_306.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_317_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_317;
    l1 = self.box_InfinityWaveCount_321;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1924231662", "1924231662", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_317.NextWave", "box_InfinityWaveCount_321.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetActivityFact_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_30();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1709448605", "1709448605", "Canyon_C2_CTP_010_Enemy", "box_SetActivityFact_33.Out", "box_SetContextualStrategy_30.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_308_None()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_389();
    l0 = self.box_Random_308;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1967820760", "1967820760", "Canyon_C2_CTP_010_Enemy", "box_Random_308.None", "box_OutputOrder_v2_389.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_308_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_316();
    l0 = self.box_Random_308;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_316;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1694788533", "1694788533", "Canyon_C2_CTP_010_Enemy", "box_Random_308.Output", "box_Brick_Exp_Common_WaveSpawner_316.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_308_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_304();
    l0 = self.box_Random_308;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_304;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|42046595", "42046595", "Canyon_C2_CTP_010_Enemy", "box_Random_308.Output", "box_Brick_Exp_Common_WaveSpawner_304.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_308_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_314();
    l0 = self.box_Random_308;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_314;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|242455223", "242455223", "Canyon_C2_CTP_010_Enemy", "box_Random_308.Output", "box_Brick_Exp_Common_WaveSpawner_314.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_216_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetWaveSpawner_2();
    l0 = self.box_SetWaveSpawner_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1215280004", "1215280004", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_216.Out", "box_SetWaveSpawner_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_216_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_224();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1929730319", "1929730319", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_216.Out", "box_Simple_Node_224.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_216_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_215();
    l0 = self.box_Gate_v3_215;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|843943910", "843943910", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_216.Out", "box_Gate_v3_215.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_370_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_OnceOnly_v3_370;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|531642918", "531642918", "Canyon_C2_CTP_010_Enemy", "box_OnceOnly_v3_370.Out", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InfinityWaveCount_298_End()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_298;
    l1 = self.box_MultipleOR_296;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|131113446", "131113446", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_298.End", "box_MultipleOR_296.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_298_Out()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_298;
    l1 = self.box_MultipleOR_295;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|906302443", "906302443", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_298.Out", "box_MultipleOR_295.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_147_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_211();
    l0 = self.box_OnceOnly_v3_147;
    l1 = self.box_Delay_v5_211;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|325737042", "325737042", "Canyon_C2_CTP_010_Enemy", "box_OnceOnly_v3_147.Out", "box_Delay_v5_211.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetWaveSpawner_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_272();
    l0 = self.box_SetWaveSpawner_42;
    l1 = self.box_SetWaveSpawner_272;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1721246520", "1721246520", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_42.Out", "box_SetWaveSpawner_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_InfinityWaveCount_8_End()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_8;
    l1 = self.box_MultipleOR_227;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1898872269", "1898872269", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_8.End", "box_MultipleOR_227.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InfinityWaveCount_8_Out()
    local l0, l1;
    l0 = self.box_InfinityWaveCount_8;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1136618896", "1136618896", "Canyon_C2_CTP_010_Enemy", "box_InfinityWaveCount_8.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_185_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_187();
    l0 = self.box_Delay_v5_185;
    l1 = self.box_DisplayCustomUIMsg_v5_187;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1670270245", "1670270245", "Canyon_C2_CTP_010_Enemy", "box_Delay_v5_185.Started", "box_DisplayCustomUIMsg_v5_187.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_185_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_187();
    l0 = self.box_Delay_v5_185;
    l1 = self.box_DisplayCustomUIMsg_v5_187;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|957396968", "957396968", "Canyon_C2_CTP_010_Enemy", "box_Delay_v5_185.TimeElapsed", "box_DisplayCustomUIMsg_v5_187.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_221_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_220();
    l0 = self.box_Gate_v3_221;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1543119735", "1543119735", "Canyon_C2_CTP_010_Enemy", "box_Gate_v3_221.Out", "box_OutputOrder_v2_220.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_243_Out()
    local l0, l1;
    l0 = self.box_SetWaveSpawner_243;
    l1 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|322953710", "322953710", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_243.Out", "box_MultipleOR_169.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetWaveSpawner_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_327();
    l0 = self.box_SetWaveSpawner_109;
    l1 = self.box_SetWaveSpawner_327;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1622083156", "1622083156", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_109.Out", "box_SetWaveSpawner_327.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_345_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_85();
    l0 = self.box_Delay_v5_345;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|323510695", "323510695", "Canyon_C2_CTP_010_Enemy", "box_Delay_v5_345.TimeElapsed", "box_ActivityEnd_85.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetWaveSpawner_154_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_275();
    l0 = self.box_SetWaveSpawner_154;
    l1 = self.box_SetWaveSpawner_275;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1409460946", "1409460946", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_154.Out", "box_SetWaveSpawner_275.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_217_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetWaveSpawner_138();
    l0 = self.box_SetWaveSpawner_138;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1546821350", "1546821350", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_217.Out", "box_SetWaveSpawner_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_217_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_224();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|669056229", "669056229", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_217.Out", "box_Simple_Node_224.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_217_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_218();
    l0 = self.box_Gate_v3_218;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|607318976", "607318976", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_217.Out", "box_Gate_v3_218.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Canyon_C2_CTP_010_Enemy_D_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_365();
    l0 = self.box_Canyon_C2_CTP_010_Enemy_D_74;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1795469863", "1795469863", "Canyon_C2_CTP_010_Enemy", "box_Canyon_C2_CTP_010_Enemy_D_74.Out", "box_SetInteger_v2_365.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_223_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_27();
    l0 = self.box_PlayerFullyDetected_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1624017462", "1624017462", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_223.Out", "box_PlayerFullyDetected_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_223_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_69();
    l0 = self.box_MessageListener_v3_69;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|280338267", "280338267", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_223.Out", "box_MessageListener_v3_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_223_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_20();
    l0 = self.box_MessageListener_v3_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1994652124", "1994652124", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_223.Out", "box_MessageListener_v3_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_103_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_Canyon_C2_CTP_010_Enemy_E_60;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2130820888", "2130820888", "Canyon_C2_CTP_010_Enemy", "box_MissionBlockLayer_103.Activated", "box_Canyon_C2_CTP_010_Enemy_E_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_226_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_228();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_226;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_228;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|19645808", "19645808", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_226.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_228.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_226_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_226;
    l1 = self.box_MultipleOR_230;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2048098749", "2048098749", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_226.NextWave", "box_MultipleOR_230.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetWaveSpawner_151_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_276();
    l0 = self.box_SetWaveSpawner_151;
    l1 = self.box_SetWaveSpawner_276;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1751741726", "1751741726", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_151.Out", "box_SetWaveSpawner_276.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_231_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_40();
    l0 = self.box_OnceOnly_v3_231;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|311425869", "311425869", "Canyon_C2_CTP_010_Enemy", "box_OnceOnly_v3_231.Out", "box_GetActivityFact_40.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_211_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = self.box_Delay_v5_211;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|782582788", "782582788", "Canyon_C2_CTP_010_Enemy", "box_Delay_v5_211.TimeElapsed", "box_Simple_Node_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_73_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_76();
    l0 = self.box_ProximityTrigger_v3_76;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1012540563", "1012540563", "Canyon_C2_CTP_010_Enemy", "box_TriggerState_v2_73.Enabled", "box_ProximityTrigger_v3_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_199_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_341();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1381692916", "1381692916", "Canyon_C2_CTP_010_Enemy", "box_UseContextualActionModifier_v3_199.Disabled", "box_SetInteger_v2_341.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_225_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_226();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_225;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_226;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2031970292", "2031970292", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_225.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_226.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_225_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_225;
    l1 = self.box_MultipleOR_230;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|715419333", "715419333", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_225.NextWave", "box_MultipleOR_230.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetWaveSpawner_247_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_280();
    l0 = self.box_SetWaveSpawner_247;
    l1 = self.box_SetWaveSpawner_280;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1372587994", "1372587994", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_247.Out", "box_SetWaveSpawner_280.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_23_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_238();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_23;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_238;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2146713444", "2146713444", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_23.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_238.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_23_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_238();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_23;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_238;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1432661770", "1432661770", "Canyon_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_23.NextWave", "box_Brick_Exp_Common_WaveSpawner_238.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_219_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetWaveSpawner_112();
    l0 = self.box_SetWaveSpawner_112;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1485817678", "1485817678", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_219.Out", "box_SetWaveSpawner_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_219_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_224();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1036052307", "1036052307", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_219.Out", "box_Simple_Node_224.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_219_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_222();
    l0 = self.box_Gate_v3_222;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|947459234", "947459234", "Canyon_C2_CTP_010_Enemy", "box_OutputOrder_v2_219.Out", "box_Gate_v3_222.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SetWaveSpawner_178_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetWaveSpawner_257();
    l0 = self.box_SetWaveSpawner_178;
    l1 = self.box_SetWaveSpawner_257;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2045864887", "2045864887", "Canyon_C2_CTP_010_Enemy", "box_SetWaveSpawner_178.Out", "box_SetWaveSpawner_257.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_332_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_23();
    l0 = self.box_IndexList_v2_332;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1647678458", "1647678458", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_332.Output", "box_Brick_Exp_Common_WaveSpawner_23.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_IndexList_v2_332_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_282();
    l0 = self.box_IndexList_v2_332;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_282;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1619016167", "1619016167", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_332.Output", "box_Brick_Exp_Common_WaveSpawner_282.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_IndexList_v2_332_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_322();
    l0 = self.box_IndexList_v2_332;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_322;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1782476239", "1782476239", "Canyon_C2_CTP_010_Enemy", "box_IndexList_v2_332.Output", "box_Brick_Exp_Common_WaveSpawner_322.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:OnEnter_box_Simple_Node_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@CanStartWave");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_54_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_368()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_368");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@DisablePackageAGuard");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_368_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_336()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_336");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@DisablePackageBGuard");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_336_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_337()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_337");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@DisablePackageCGuard");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_337_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_338()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_338");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@DisablePackageDGuard");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_338_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_339()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_339");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@DisablePackageEGuard");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_339_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_340()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_340");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@DisablePackageFGuard");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_340_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_355()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_355");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@ExpertCleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_355_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_354()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_354");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@HardCleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_354_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@NormalCleanUp");
    l0:SetConnections({
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
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@PackageStolenDetected");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@Reset");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_224_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|@StartWave");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_57_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_238()
    local params;
    DrawTextToScreen("Comment: Wave_02", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_02");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_02,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_02_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_02_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_348()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_348");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|5286580");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_348_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109687317984725057",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_252()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108773251755811855",
        -- Wave_05_Spawner_b,
        [9] = "2108773251770491943",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_314()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_08,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_08_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_08_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_282()
    local params;
    DrawTextToScreen("Comment: Wave_01", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_01");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_01,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_01_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_01_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_150()
    local params;
    params = {
        -- Wave_06_Spawner_a,
        [10] = "2108773092502280618",
        -- Wave_06_Spawner_b,
        [11] = "2108772900451390547",
        -- WaveIndex,
        [16] = 6,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_376()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_376");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|37541485");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_376_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108798943935605075",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_12()
    local params;
    params = {
        -- Wave_01_Spawner_a,
        [0] = "2108797554486420530",
        -- Wave_01_Spawner_b,
        [1] = "2108797644527641937",
        -- WaveIndex,
        [16] = 1,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_134()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_373()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_373");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|61997632");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_373_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108797886476068558",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_365()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_365");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|79570144");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_365_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|100750236");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_197_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108593184113209590",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|112302361");
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
                [0] = self.f_box_OutputOrder_v2_220_Out_0,
                [1] = self.f_box_OutputOrder_v2_220_Out_1,
                [2] = self.f_box_OutputOrder_v2_220_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_152()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108800072390031926",
        -- Wave_04_Spawner_b,
        [7] = "2108773356925890146",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_287()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_06,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 40,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_06_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_06_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_301()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_08,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_08_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_08_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_389()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_389");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|130641302");
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
                [0] = self.f_box_OutputOrder_v2_389_Out_0,
                [1] = self.f_box_OutputOrder_v2_389_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_256()
    local params;
    params = {
        -- Wave_02_Spawner_a,
        [2] = "2108217335966865385",
        -- Wave_02_Spawner_b,
        [3] = "2108217413454535271",
        -- WaveIndex,
        [16] = 2,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|141220314");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_194_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108593184113209590",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_113()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108994238652890002",
        -- Wave_04_Spawner_b,
        [7] = "2108994238644501380",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|145662260");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_202_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108593184113209590",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_374()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_374");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|146950902");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_374_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108797930245728048",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_160()
    local params;
    params = {
        -- Wave_06_Spawner_a,
        [10] = "2108773270909101532",
        -- Wave_06_Spawner_b,
        [11] = "2108773270894421452",
        -- WaveIndex,
        [16] = 6,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_148()
    local params;
    params = {
        -- Wave_03_Spawner_a,
        [4] = "2108799842263249011",
        -- Wave_03_Spawner_b,
        [5] = "2108429422274026133",
        -- WaveIndex,
        [16] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_236()
    local params;
    params = {
        -- Wave_03_Spawner_a,
        [4] = "2108799842263249011",
        -- Wave_03_Spawner_b,
        [5] = "2108429422274026133",
        -- WaveIndex,
        [16] = 3,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_288()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_05,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_05_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_05_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_53()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109022345988426530",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|176914694");
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
                [0] = self.f_box_OutputOrder_v2_132_Out_0,
                [1] = self.f_box_OutputOrder_v2_132_Out_1,
                [2] = self.f_box_OutputOrder_v2_132_Out_2,
                [3] = self.f_box_OutputOrder_v2_132_Out_3,
                [4] = self.f_box_OutputOrder_v2_132_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|178636501");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_29_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108414858805402800",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|179591928");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_30_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108424174413290263",
        -- Group,
        [1] = "#36F7D6E1",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_173()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108993677201255423",
        -- Wave_04_Spawner_b,
        [7] = "2108993725991497153",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|186438405");
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
                [0] = self.f_box_OutputOrder_v2_55_Out_0,
                [1] = self.f_box_OutputOrder_v2_55_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_161()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108993677201255423",
        -- Wave_04_Spawner_b,
        [7] = "2108993725991497153",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_163()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108800072390031926",
        -- Wave_04_Spawner_b,
        [7] = "2108773356925890146",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|216710822");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_78_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305376548176",
        -- missionLayerId,
        [1] = "36167510123983370",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_350()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_350");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|245249152");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_350_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109687287963994172",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_272()
    local params;
    params = {
        -- Wave_02_Spawner_a,
        [2] = "2108814863659709294",
        -- Wave_02_Spawner_b,
        [3] = "2108814864225940359",
        -- WaveIndex,
        [16] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_207()
    local params;
    params = {
        -- Wave_08_Spawner_a,
        [14] = "2108800455541801181",
        -- Wave_08_Spawner_b,
        [15] = "2108800463435481549",
        -- WaveIndex,
        [16] = 8,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_283()
    local params;
    DrawTextToScreen("Comment: Wave_03", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_03");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_03,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_03_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_03_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_87()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_362()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_362");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|296744901");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v3_360;
    params = {
        -- ContextualStrategy,
        [0] = "2108494048133127582",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_181()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108479641801997125",
        -- Wave_04_Spawner_b,
        [7] = "2108772791246393534",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_315()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_05,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 40,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_05_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_05_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_351()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_351");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|315903952");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_351_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109687317984725057",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_184()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108800072390031926",
        -- Wave_04_Spawner_b,
        [7] = "2108773356925890146",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_166()
    local params;
    params = {
        -- Wave_06_Spawner_a,
        [10] = "2108773092502280618",
        -- Wave_06_Spawner_b,
        [11] = "2108772900451390547",
        -- WaveIndex,
        [16] = 6,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_265()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|351594408");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_94_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339891340427",
        -- Fact,
        [1] = "Set_Package_A",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_180()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108479641801997125",
        -- Wave_04_Spawner_b,
        [7] = "2108772791246393534",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_334()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#71C4A962",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_137()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108994125383612272",
        -- Wave_04_Spawner_b,
        [7] = "2108994125396195201",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|402183412");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_126_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305376548176",
        -- missionLayerId,
        [1] = "36167506367688823",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|407303711");
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
                [0] = self.f_box_OutputOrder_v2_266_Out_0,
                [1] = self.f_box_OutputOrder_v2_266_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_358()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_358");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|416095634");
    l0:SetConnections({
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2109697871415669435",
    };
    return params;
end;

function export:OnEnter_box_Random_49()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 5,
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_360()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#29C18725",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109766249593456506",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_273()
    local params;
    params = {
        -- Wave_08_Spawner_a,
        [14] = "2108800455541801181",
        -- Wave_08_Spawner_b,
        [15] = "2108800463435481549",
        -- WaveIndex,
        [16] = 8,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_363()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_363");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|431710673");
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
                [0] = self.f_box_OutputOrder_v2_363_Out_0,
                [1] = self.f_box_OutputOrder_v2_363_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_235()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108773251755811855",
        -- Wave_05_Spawner_b,
        [9] = "2108773251770491943",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|433186942");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
                [2] = self.f_box_OutputOrder_v2_50_Out_2,
                [3] = self.f_box_OutputOrder_v2_50_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_241()
    local params;
    params = {
        -- Wave_07_Spawner_a,
        [12] = "2108773114623040325",
        -- Wave_07_Spawner_b,
        [13] = "2108772911396427147",
        -- WaveIndex,
        [16] = 7,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_333()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_333");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|449175080");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "Canyon_C2_Package_Picked_InCombat",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_341()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_341");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|451795641");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_341_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|455356944");
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
                [0] = self.f_box_OutputOrder_v2_90_Out_0,
                [1] = self.f_box_OutputOrder_v2_90_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_203()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108773251755811855",
        -- Wave_05_Spawner_b,
        [9] = "2108773251770491943",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_342()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_342");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|465452278");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_342_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_209()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108816008545330061",
        -- Wave_05_Spawner_b,
        [9] = "2108816008534844288",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|467166934");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_39_Out,
    });
    params = {
        -- Fact,
        [0] = "Canyon_C2_BeDetected_InVillage",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_233()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108479578203757382",
        -- Wave_05_Spawner_b,
        [9] = "2108801164272227787",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_76()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108885477563052473",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_143()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108994038865605506",
        -- Wave_04_Spawner_b,
        [7] = "2108994038876091283",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_81()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108884823169838621",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_146()
    local params;
    params = {
        -- Wave_03_Spawner_a,
        [4] = "2108429367961983123",
        -- Wave_03_Spawner_b,
        [5] = "2108799949763261389",
        -- WaveIndex,
        [16] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_206()
    local params;
    params = {
        -- Wave_07_Spawner_a,
        [12] = "2108773235842621867",
        -- Wave_07_Spawner_b,
        [13] = "2108773310140524895",
        -- WaveIndex,
        [16] = 7,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_70()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107857240921738685",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_251()
    local params;
    params = {
        -- Wave_07_Spawner_a,
        [12] = "2108773114623040325",
        -- Wave_07_Spawner_b,
        [13] = "2108772911396427147",
        -- WaveIndex,
        [16] = 7,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|541355475");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_352()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_352");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|571296078");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_352_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109687279269201976",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_258()
    local params;
    params = {
        -- Wave_08_Spawner_a,
        [14] = "2108800455541801181",
        -- Wave_08_Spawner_b,
        [15] = "2108800463435481549",
        -- WaveIndex,
        [16] = 8,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_100()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108994038865605506",
        -- Wave_04_Spawner_b,
        [7] = "2108994038876091283",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_328()
    local params;
    params = {
        -- Wave_03_Spawner_a,
        [4] = "2108205166126698545",
        -- Wave_03_Spawner_b,
        [5] = "2108816526791439135",
        -- WaveIndex,
        [16] = 3,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_284()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_04,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_04_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_04_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_204()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108773251755811855",
        -- Wave_05_Spawner_b,
        [9] = "2108773251770491943",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_371()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_234()
    local params;
    params = {
        -- Wave_02_Spawner_a,
        [2] = "2108193599626674720",
        -- Wave_02_Spawner_b,
        [3] = "2108816283416948019",
        -- WaveIndex,
        [16] = 2,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_218()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_88()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "EndEnemy",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "PackageStolenDetected",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_257()
    local params;
    params = {
        -- Wave_07_Spawner_a,
        [12] = "2108773235842621867",
        -- Wave_07_Spawner_b,
        [13] = "2108773310140524895",
        -- WaveIndex,
        [16] = 7,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_43()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108993677201255423",
        -- Wave_04_Spawner_b,
        [7] = "2108993725991497153",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_357()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_357");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|695299601");
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
                [0] = self.f_box_OutputOrder_v2_357_Out_0,
                [1] = self.f_box_OutputOrder_v2_357_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_344()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_356()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#29C18725",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109766249593456506",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_228()
    local params;
    DrawTextToScreen("Comment: Wave_09", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_09");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_07,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_07_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_07_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|720527462");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_107_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_107_A_ne_B,
    });
    params = {
        -- A,
        [0] = Globals.Canyon_C2_CTP_010_Main.ExtractionID,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_164()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|729507926");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_63_Out,
    });
    params = {
        -- Message,
        [0] = "Canyon_C2_CTP_010_PlayerDetected",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|744993884");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
                [2] = self.f_box_OutputOrder_v2_68_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_156()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108994308479663761",
        -- Wave_04_Spawner_b,
        [7] = "2108994308471275139",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_82()
    local params;
    params = {
        -- EnemyHelicopter,
        [0] = "2108816526820799284",
        -- EnemyHelicopterGroup,
        [1] = "#29C18725",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_37()
    local params;
    params = {
        -- Wave_06_Spawner_a,
        [10] = "2108773092502280618",
        -- Wave_06_Spawner_b,
        [11] = "2108772900451390547",
        -- WaveIndex,
        [16] = 6,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|759426814");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_193_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108593184113209590",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_270()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108815243380539974",
        -- Wave_05_Spawner_b,
        [9] = "2108815261437019014",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_86()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_240()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108497926222278396",
        -- Wave_05_Spawner_b,
        [9] = "2108772813484593786",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_244()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2109008619042262074",
        -- Wave_05_Spawner_b,
        [9] = "2109008758314128529",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_131()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108479641801997125",
        -- Wave_04_Spawner_b,
        [7] = "2108772791246393534",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_144()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_324()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_04,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_04_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_04_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|828631460");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_36_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108414847566765228",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_248()
    local params;
    params = {
        -- Wave_02_Spawner_a,
        [2] = "2108346098887171658",
        -- Wave_02_Spawner_b,
        [3] = "2108346122561920910",
        -- WaveIndex,
        [16] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_275()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108815243380539974",
        -- Wave_05_Spawner_b,
        [9] = "2108815261437019014",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|850202937");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_47_Out,
    });
    params = {
        -- Fact,
        [0] = "Canyon_C2_CTP_010_PlayerDetected",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|853241410");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108424964641129940",
        -- Group,
        [1] = "#06C154B3",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_3()
    local params;
    DrawTextToScreen("Comment: Wave_04", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_04");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_04,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_04_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_04_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_136()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108994238652890002",
        -- Wave_04_Spawner_b,
        [7] = "2108994238644501380",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|855814560");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_322()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_01,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_01_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_01_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|872467281");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_124_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339891340427",
        -- Fact,
        [1] = "Set_Package_C",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|873879909");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_119_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339891340427",
        -- Fact,
        [1] = "Set_Package_B",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_367()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_367");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|874685140");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_367_Out,
    });
    params = {
        -- Integer,
        [1] = 6,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_135()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_262()
    local params;
    params = {
        -- Wave_07_Spawner_a,
        [12] = "2108773114623040325",
        -- Wave_07_Spawner_b,
        [13] = "2108772911396427147",
        -- WaveIndex,
        [16] = 7,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|897974146");
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
                [0] = self.f_box_OutputOrder_v2_91_Out_0,
                [2] = self.f_box_OutputOrder_v2_91_Out_2,
                [3] = self.f_box_OutputOrder_v2_91_Out_3,
                [4] = self.f_box_OutputOrder_v2_91_Out_4,
                [5] = self.f_box_OutputOrder_v2_91_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|916405737");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|921242332");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_195_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108977589698702025",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_159()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_187()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "HUD TEMP",
            item = "REINFORCEMENT_BASIC",
            id = "500397",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_379()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_128()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108797886476068558",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_27()
    local params;
    params = {
        -- group,
        [0] = "#71C4A962",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_140()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108994125383612272",
        -- Wave_04_Spawner_b,
        [7] = "2108994125396195201",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1000015846");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_212()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108798853154089202",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_259()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108497926222278396",
        -- Wave_05_Spawner_b,
        [9] = "2108772813484593786",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_239()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108497926222278396",
        -- Wave_05_Spawner_b,
        [9] = "2108772813484593786",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_310()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_06,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 40,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_06_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_06_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_359()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_359");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1024060168");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v3_356;
    params = {
        -- ContextualStrategy,
        [0] = "2108494048133127582",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1035833599");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_188_Disabled,
    });
    l0 = self.box_GroupIter_189;
    params = {
        -- ContextualAction,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.DetectedPlayerID,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108414858805402800",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_170()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108994038865605506",
        -- Wave_04_Spawner_b,
        [7] = "2108994038876091283",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1064208792");
    l0:SetConnections({
    });
    l0 = self.box_GroupIter_190;
    params = {
        -- ContextualAction,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_316()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_06,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_06_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_06_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_331()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_331");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1085675983");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_331_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_179()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108994038865605506",
        -- Wave_04_Spawner_b,
        [7] = "2108994038876091283",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_52()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_112()
    local params;
    params = {
        -- Wave_01_Spawner_a,
        [0] = "2109865936235286155",
        -- Wave_01_Spawner_b,
        [1] = "2109866031796212039",
        -- WaveIndex,
        [16] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_299()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_08,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_08_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_08_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_95()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1129046274");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_95_Out,
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2109893417279439250",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_229()
    local params;
    DrawTextToScreen("Comment: Wave_09", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_09");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_08,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_08_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_08_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_214()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_303()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_07,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_07_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_07_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_117()
    local params;
    params = {
        -- Wave_01_Spawner_a,
        [0] = "2108217045104464887",
        -- Wave_01_Spawner_b,
        [1] = "2108216699669975507",
        -- WaveIndex,
        [16] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_268()
    local params;
    DrawTextToScreen("Comment: Wave_03", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_03");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_03,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_03_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_03_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_307()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2109009528285590289",
        -- Wave_05_Spawner_b,
        [9] = "2109009571998627408",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_254()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2109008619042262074",
        -- Wave_05_Spawner_b,
        [9] = "2109008758314128529",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_6()
    local params;
    DrawTextToScreen("Comment: Wave_07", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_07");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_07,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_07_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_07_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_129()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1205514497");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_25_Out,
    });
    params = {
        -- Fact,
        [0] = "Canyon_C2_PackageStolenDetected",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1206592757");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_84_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339891340427",
        -- Fact,
        [1] = "Set_Package_E",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1206692149");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
                [2] = self.f_box_OutputOrder_v2_71_Out_2,
                [3] = self.f_box_OutputOrder_v2_71_Out_3,
                [4] = self.f_box_OutputOrder_v2_71_Out_4,
                [5] = self.f_box_OutputOrder_v2_71_Out_5,
                [6] = self.f_box_OutputOrder_v2_71_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_250()
    local params;
    params = {
        -- Wave_08_Spawner_a,
        [14] = "2108773126021061710",
        -- Wave_08_Spawner_b,
        [15] = "2108772921106241179",
        -- WaveIndex,
        [16] = 8,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_375()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_375");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1211718068");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_375_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108798853154089202",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.DetectedPlayerID,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108414847566765228",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_294()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_07,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_07_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_07_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_291()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_06,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_06_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_06_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1241587439");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_105_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_105_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339891340427",
        -- Fact,
        [1] = "Package_In_Sentry",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_213()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108798943935605075",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_66()
    local params;
    params = {
        -- ActualPackageSpawner,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.PackageSpawner,
        -- EnemyGroup_PackageGuard,
        [1] = "#C91730F7",
        -- EnemyGroupAll,
        [2] = "#71C4A962",
        -- PackageGuardPositionCS_A,
        [3] = "2108396436017122014",
        -- PackageGuardPositionCS_B,
        [4] = "2108897679336587226",
        -- PackageGuardPositionCS_C,
        [5] = "2108925785006937021",
        -- PackageGuardPositionCS_D,
        [6] = "2108233211824839450",
        -- PackageGuardPositionCS_E,
        [7] = "2108965208459326157",
        -- PackageGuardPositionCS_F,
        [8] = "2108965209147192037",
        -- PackageSpawner_A,
        [9] = "2108191287376092751",
        -- PackageSpawner_B,
        [10] = "2108288498277553009",
        -- PackageSpawner_C,
        [11] = "2108316481270856491",
        -- PackageSpawner_D,
        [12] = "2108232201022738527",
        -- PackageSpawner_E,
        [13] = "2108288522992489337",
        -- PackageSpawner_F,
        [14] = "2108288545721422731",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_114()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108479584541354458",
        -- Wave_04_Spawner_b,
        [7] = "2108801190599874570",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_215()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1276225593");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_201_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108977589698702025",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_255()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108773251755811855",
        -- Wave_05_Spawner_b,
        [9] = "2108773251770491943",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_318()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_02,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_02_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_02_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_261()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108497926222278396",
        -- Wave_05_Spawner_b,
        [9] = "2108772813484593786",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1297647294");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
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
                [0] = self.f_box_OutputOrder_v2_210_Out_0,
                [1] = self.f_box_OutputOrder_v2_210_Out_1,
                [2] = self.f_box_OutputOrder_v2_210_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_388()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_388");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1300259446");
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
                [0] = self.f_box_OutputOrder_v2_388_Out_0,
                [1] = self.f_box_OutputOrder_v2_388_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_232()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2109008877373643345",
        -- Wave_05_Spawner_b,
        [9] = "2109008877363157572",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1331622379");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_75_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108884823169838621",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_353()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_353");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1340160033");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_353_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109687279269201976",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_242()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2109008975524552865",
        -- Wave_05_Spawner_b,
        [9] = "2109008975568593078",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_279()
    local params;
    params = {
        -- Wave_03_Spawner_a,
        [4] = "2108826211011538942",
        -- Wave_03_Spawner_b,
        [5] = "2108402773285414572",
        -- WaveIndex,
        [16] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_162()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108994038865605506",
        -- Wave_04_Spawner_b,
        [7] = "2108994038876091283",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_189()
    local params;
    params = {
        -- entities,
        [0] = "#62107DD5",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_177()
    local params;
    DrawTextToScreen("Comment: Wave_09", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_09");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_04,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_04_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_04_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_246()
    local params;
    params = {
        -- Wave_02_Spawner_a,
        [2] = "2108799637553949713",
        -- Wave_02_Spawner_b,
        [3] = "2108799467357481498",
        -- WaveIndex,
        [16] = 2,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1390839159");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2108593259174473980",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_167()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108993677201255423",
        -- Wave_04_Spawner_b,
        [7] = "2108993725991497153",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_116()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_168()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_5()
    local params;
    DrawTextToScreen("Comment: Wave_06", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_06");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_06,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 40,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_06_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_06_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1443198436");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_121_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305376548176",
        -- missionLayerId,
        [1] = "54181904069639269",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_83()
    local params;
    params = {
        -- EnemyHelicopter,
        [0] = "2108816526820799284",
        -- EnemyHelicopterGroup,
        [1] = "#29C18725",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_281()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108479578203757382",
        -- Wave_05_Spawner_b,
        [9] = "2108801164272227787",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1446121496");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_183()
    local params;
    params = {
        -- Wave_01_Spawner_a,
        [0] = "2108799842263249011",
        -- Wave_01_Spawner_b,
        [1] = "2108429422274026133",
        -- WaveIndex,
        [16] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_97()
    local params;
    params = {
        -- Wave_01_Spawner_a,
        [0] = "2108797554486420530",
        -- Wave_01_Spawner_b,
        [1] = "2108797644527641937",
        -- WaveIndex,
        [16] = 1,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_182()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1497284651");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_101_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305376548176",
        -- missionLayerId,
        [1] = "45174704814887952",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_271()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2109008975524552865",
        -- Wave_05_Spawner_b,
        [9] = "2109008975568593078",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_264()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_264");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1499657198");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_264_A_le_B,
    });
    params = {
        -- A,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.i_CurrentSize,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_377()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_130()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108993677201255423",
        -- Wave_04_Spawner_b,
        [7] = "2108993725991497153",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_253()
    local params;
    params = {
        -- Wave_08_Spawner_a,
        [14] = "2108773126021061710",
        -- Wave_08_Spawner_b,
        [15] = "2108772921106241179",
        -- WaveIndex,
        [16] = 8,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_280()
    local params;
    params = {
        -- Wave_08_Spawner_a,
        [14] = "2108801234891725532",
        -- Wave_08_Spawner_b,
        [15] = "2108801234904308460",
        -- WaveIndex,
        [16] = 8,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_260()
    local params;
    params = {
        -- Wave_03_Spawner_a,
        [4] = "2108429367961983123",
        -- Wave_03_Spawner_b,
        [5] = "2108799949763261389",
        -- WaveIndex,
        [16] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_276()
    local params;
    params = {
        -- Wave_07_Spawner_a,
        [12] = "2108815395459713625",
        -- Wave_07_Spawner_b,
        [13] = "2108815427432893217",
        -- WaveIndex,
        [16] = 7,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_269()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108773251755811855",
        -- Wave_05_Spawner_b,
        [9] = "2108773251770491943",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_349()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_349");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1578514603");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_349_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109687287963994172",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_79()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108885561352663609",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108813621904550512",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_139()
    local params;
    params = {
        -- Wave_06_Spawner_a,
        [10] = "2108801214910060854",
        -- Wave_06_Spawner_b,
        [11] = "2108801220276672894",
        -- WaveIndex,
        [16] = 6,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_142()
    local params;
    params = {
        -- Wave_03_Spawner_a,
        [4] = "2108429367961983123",
        -- Wave_03_Spawner_b,
        [5] = "2108799949763261389",
        -- WaveIndex,
        [16] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1625091759");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_40_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_40_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339891340427",
        -- Fact,
        [1] = "Canyon_C2_Package_Picked",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_208()
    local params;
    params = {
        -- Wave_07_Spawner_a,
        [12] = "2108815681421072459",
        -- Wave_07_Spawner_b,
        [13] = "2108815681433655387",
        -- WaveIndex,
        [16] = 7,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_7()
    local params;
    DrawTextToScreen("Comment: Wave_08", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_08");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_08,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_08_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_08_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_305()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_03,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_03_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_03_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_205()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2109008975524552865",
        -- Wave_05_Spawner_b,
        [9] = "2109008975568593078",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1630277828");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_118_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305376548176",
        -- missionLayerId,
        [1] = "27160310869201117",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1632559232");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_138()
    local params;
    params = {
        -- Wave_01_Spawner_a,
        [0] = "2109865772225415573",
        -- Wave_01_Spawner_b,
        [1] = "2109865827393096449",
        -- WaveIndex,
        [16] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_267()
    local params;
    params = {
        -- Wave_08_Spawner_a,
        [14] = "2108773126021061710",
        -- Wave_08_Spawner_b,
        [15] = "2108772921106241179",
        -- WaveIndex,
        [16] = 8,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_366()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_366");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1663003518");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_366_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1665123300");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_122_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339891340427",
        -- Fact,
        [1] = "Set_Package_D",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1679055567");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_99_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339891340427",
        -- Fact,
        [1] = "Set_Package_F",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_141()
    local params;
    params = {
        -- Wave_02_Spawner_a,
        [2] = "2108799637553949713",
        -- Wave_02_Spawner_b,
        [3] = "2108799467357481498",
        -- WaveIndex,
        [16] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_329()
    local params;
    params = {
        -- Wave_08_Spawner_a,
        [14] = "2108815592950616939",
        -- Wave_08_Spawner_b,
        [15] = "2108815592963199867",
        -- WaveIndex,
        [16] = 8,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_335()
    local params;
    params = {
        -- Index,
        [0] = self.PackageID,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_58()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108797930245728048",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_92()
    local params;
    DrawTextToScreen("Comment: Wave_02", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_02");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_02,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_02_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_02_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1738167812");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_67_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108813621904550512",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_278()
    local params;
    params = {
        -- Wave_08_Spawner_a,
        [14] = "2108815490471186041",
        -- Wave_08_Spawner_b,
        [15] = "2108815494531272448",
        -- WaveIndex,
        [16] = 8,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_325()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_44()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108994038865605506",
        -- Wave_04_Spawner_b,
        [7] = "2108994038876091283",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_157()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_347()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_245()
    local params;
    params = {
        -- Wave_07_Spawner_a,
        [12] = "2108773235842621867",
        -- Wave_07_Spawner_b,
        [13] = "2108773310140524895",
        -- WaveIndex,
        [16] = 7,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_72()
    local params;
    params = {
        -- Index,
        [0] = Globals.Canyon_C2_CTP_010_Main.PlayerSpawnPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1785851348");
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
                [0] = self.f_box_OutputOrder_v2_158_Out_0,
                [1] = self.f_box_OutputOrder_v2_158_Out_1,
                [2] = self.f_box_OutputOrder_v2_158_Out_2,
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
    DrawTextToScreen("Comment: Wave_05", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_05");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_05,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 40,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_05_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_05_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_2()
    local params;
    params = {
        -- Wave_01_Spawner_a,
        [0] = "2108217045104464887",
        -- Wave_01_Spawner_b,
        [1] = "2108216699669975507",
        -- WaveIndex,
        [16] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1807752041");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_106_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_106_A_ne_B,
    });
    params = {
        -- A,
        [0] = Globals.Canyon_C2_CTP_010_Main.ExtractionID,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_343()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_343");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1808732315");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_343_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1812266434");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_80()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108232613840819665",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1840833529");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_102_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_102_A_ne_B,
    });
    params = {
        -- A,
        [0] = Globals.Canyon_C2_CTP_010_Main.ExtractionID,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1863784758");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
                [4] = self.f_box_OutputOrder_v2_1_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_304()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_07,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_07_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_07_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_145()
    local params;
    params = {
        -- Wave_02_Spawner_a,
        [2] = "2108217335966865385",
        -- Wave_02_Spawner_b,
        [3] = "2108217413454535271",
        -- WaveIndex,
        [16] = 2,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_198()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_222()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_249()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108497926222278396",
        -- Wave_05_Spawner_b,
        [9] = "2108772813484593786",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_237()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108497926222278396",
        -- Wave_05_Spawner_b,
        [9] = "2108772813484593786",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_69()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Canyon_C2_Package_Picked",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_111()
    local params;
    params = {
        -- Wave_06_Spawner_a,
        [10] = "2108815947432222731",
        -- Wave_06_Spawner_b,
        [11] = "2108815947442708504",
        -- WaveIndex,
        [16] = 6,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_274()
    local params;
    params = {
        -- Wave_03_Spawner_a,
        [4] = "2108815089963384002",
        -- Wave_03_Spawner_b,
        [5] = "2108815152974413480",
        -- WaveIndex,
        [16] = 3,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_190()
    local params;
    params = {
        -- entities,
        [0] = "#62107DD5",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1924848529");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_45_Out,
    });
    l0 = self.box_GroupSizeListener_v6_93;
    params = {
        -- Integer,
        [1] = l0:GetDataOutValue(1),
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_292()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_05,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 40,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_05_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_05_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_175()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108993677201255423",
        -- Wave_04_Spawner_b,
        [7] = "2108993725991497153",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_372()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_372");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1934646209");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_372_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109022345988426530",
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_327()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2108816008545330061",
        -- Wave_05_Spawner_b,
        [9] = "2108816008534844288",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_364()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_364");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1940649621");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_364_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_93()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#71C4A962",
    };
    return params;
end;

function export:OnEnter_box_Random_285()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_149()
    local params;
    params = {
        -- Wave_06_Spawner_a,
        [10] = "2108773270909101532",
        -- Wave_06_Spawner_b,
        [11] = "2108773270894421452",
        -- WaveIndex,
        [16] = 6,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1962423890");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "You are detected and must face the final wave!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1963411183");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2108981479930341289",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_378()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_277()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2109009443118148748",
        -- Wave_05_Spawner_b,
        [9] = "2109009443147508895",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_153()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108994308479663761",
        -- Wave_04_Spawner_b,
        [7] = "2108994308471275139",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_306()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_08,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_08_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_08_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_317()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_07,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_07_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_07_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1986557514");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_33_Out,
    });
    params = {
        -- Fact,
        [0] = "Canyon_C2_BeDetected_InSentry",
    };
    return params;
end;

function export:OnEnter_box_Random_308()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|1993703122");
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
                [0] = self.f_box_OutputOrder_v2_216_Out_0,
                [1] = self.f_box_OutputOrder_v2_216_Out_1,
                [2] = self.f_box_OutputOrder_v2_216_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_42()
    local params;
    params = {
        -- Wave_01_Spawner_a,
        [0] = "2108814960420206346",
        -- Wave_01_Spawner_b,
        [1] = "2109865625231836605",
        -- WaveIndex,
        [16] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_185()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_221()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_243()
    local params;
    params = {
        -- Wave_05_Spawner_a,
        [8] = "2109008619042262074",
        -- Wave_05_Spawner_b,
        [9] = "2109008758314128529",
        -- WaveIndex,
        [16] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_109()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108816089958868843",
        -- Wave_04_Spawner_b,
        [7] = "2108816089944188763",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_345()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_154()
    local params;
    params = {
        -- Wave_04_Spawner_a,
        [6] = "2108770993051798649",
        -- Wave_04_Spawner_b,
        [7] = "2108815059760200489",
        -- WaveIndex,
        [16] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2034962965");
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
                [0] = self.f_box_OutputOrder_v2_217_Out_0,
                [1] = self.f_box_OutputOrder_v2_217_Out_1,
                [2] = self.f_box_OutputOrder_v2_217_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2050480959");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2108593259174473980",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2061706915");
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
                [0] = self.f_box_OutputOrder_v2_223_Out_0,
                [1] = self.f_box_OutputOrder_v2_223_Out_1,
                [2] = self.f_box_OutputOrder_v2_223_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2061866890");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_103_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305376548176",
        -- missionLayerId,
        [1] = "27160307111833964",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_226()
    local params;
    DrawTextToScreen("Comment: Wave_09", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_09");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_06,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_06_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_06_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_151()
    local params;
    params = {
        -- Wave_06_Spawner_a,
        [10] = "2108815318580217484",
        -- Wave_06_Spawner_b,
        [11] = "2108815348567394489",
        -- WaveIndex,
        [16] = 6,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_211()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2101219562");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_73_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108885477563052473",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2103939815");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_199_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108981479930341289",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_225()
    local params;
    DrawTextToScreen("Comment: Wave_09", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_09");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_05,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_05_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_05_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_247()
    local params;
    params = {
        -- Wave_07_Spawner_a,
        [12] = "2108801280123100587",
        -- Wave_07_Spawner_b,
        [13] = "2108801280108420507",
        -- WaveIndex,
        [16] = 7,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_23()
    local params;
    DrawTextToScreen("Comment: Wave_01", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveSpawner')-- Comment: Wave_01");
    params = {
        -- AllowedRemainingNPC,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_01,
        -- EnemyGroup,
        [1] = "#71C4A962",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = self.NextWaveWaitUntilCombat,
        -- opt_Spawner_2,
        [6] = Globals.Canyon_C2_CTP_010_Enemy.Wave_01_Spawner_b,
        -- Spawner_1,
        [10] = Globals.Canyon_C2_CTP_010_Enemy.Wave_01_Spawner_a,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Enemy.domino|@Canyon_C2_CTP_010_Enemy|2135492379");
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
                [0] = self.f_box_OutputOrder_v2_219_Out_0,
                [1] = self.f_box_OutputOrder_v2_219_Out_1,
                [2] = self.f_box_OutputOrder_v2_219_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetWaveSpawner_178()
    local params;
    params = {
        -- Wave_06_Spawner_a,
        [10] = "2108773270909101532",
        -- Wave_06_Spawner_b,
        [11] = "2108773270894421452",
        -- WaveIndex,
        [16] = 6,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_332()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_365_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.PackageID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_341_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_342_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.PackageID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.NextWaveWaitUntilCombat = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_367_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.PackageID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_PlayerFullyDetected_27_Detected()
    local l0;
    l0 = self.box_PlayerFullyDetected_27;
    self.DetectedPlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_PlayerFullyDetected_27_Disabled()
    local l0;
    l0 = self.box_PlayerFullyDetected_27;
    self.DetectedPlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_PlayerFullyDetected_27_Enabled()
    local l0;
    l0 = self.box_PlayerFullyDetected_27;
    self.DetectedPlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_331_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Enemy.RemainingNPCNUM_Wave_03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_366_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.PackageID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_343_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.PackageID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Enemy.i_CurrentSize = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_364_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.PackageID = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
